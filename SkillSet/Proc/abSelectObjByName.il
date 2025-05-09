/* abSelectObjByName.il

Author     A.D.Beckett
Group      Custom IC (UK), Cadence Design Systems Ltd.
Language   SKILL
Date       Mar 26, 2003 
Modified   Nov 16, 2008 
By         A.D.Beckett

Little utility for selecting instances, terminals or nets by name
(at least, the shapes associated with them). To use:

abSelectObjByName('instances)
abSelectObjByName('nets)
abSelectObjByName('netsAndVias)
abSelectObjByName('terminals)
abSelectObjByName('figGroups) ; OA only

netsAndVias is for CDB releases - with OA, vias are on the net
anyway.

Extended to allow a function to be passed to do the "selection". so
forms can be used for other things (e.g. abProtect package)

***************************************************

SCCS Info: @(#) abSelectObjByName.il 11/16/08.19:26:07 1.4

*/

/***************************************************************
*                                                              *
*                (abCreateSelectObjByNameForm)                 *
*                                                              *
*                       Create the form                        *
*                                                              *
***************************************************************/

(procedure (abCreateSelectObjByNameForm)
  (let (objects)
       (setq objects (hiCreateListBoxField
                      ?name 'objects
                      ?choices nil
                      ?value nil
                      ?multipleSelect t
                      ?doubleClickCB "(abSelectObjByNameCB (hiGetCurrentForm))"
                      ?valueByPosition t
                      ))
       (hiCreateAppForm
        ?name 'abSelectObjByNameForm
        ?fields (list
                 (list objects 0:0 300:400)
                 )
        ?attachmentList (list
                         hicLeftPositionSet|hicTopPositionSet|
                         hicRightPositionSet|hicBottomPositionSet
                         )
        ?initialSize 300:400
        ?formTitle "Select things"
        ?callback 'abSelectObjByNameCB
        )
       ))

/***************************************************************
*                                                              *
*    (abSelectObjByNameList cellView type names selectFunc)    *
*                                                              *
*          Given a list of names of a particular type          *
*          (nets, instances, terminals), select them           *
*      either directly, or using the selectFunc function       *
*                                                              *
***************************************************************/

(procedure (abSelectObjByNameList cellView type names selectFunc)
  (let (objects object)
       ;-----------------------------------------------------------------
       ; Determine the objects which will be selected
       ;-----------------------------------------------------------------
       (setq objects 
             (foreach mapcan name names
                      (case type
                            ;--------------------------------------------
                            ; For instances, look for either instance or mosaic
                            ;--------------------------------------------
                            (instances
                             (list
                              (or
                               (dbFindAnyInstByName cellView name)
                               (dbFindMosaicByName cellView name)
                               )
                              ))
                            ;--------------------------------------------
                            ; For nets, include the pin figures, and the
                            ; net figures
                            ;--------------------------------------------
                            (nets
                             (setq object (dbFindNetByName cellView name))
                             (nconc 
                              (dbGetq (dbGetq object pins) fig)
                              (dbGetq object figs)
                              ))
                            ;--------------------------------------------
                            ; For netsAndVias, include the pin figures, and the
                            ; net figures, and any vias on the nets
                            ;--------------------------------------------
                            (netsAndVias
                             (setq object (dbFindNetByName cellView name))
                             (nconc 
                              (dbGetq (dbGetq object pins) fig)
                              (dbGetq object figs)
                              (setof inst (dbGetq 
                                           (dbGetq object instTerms) inst)
                                     (leIsContact inst))
                              ))
                            ;--------------------------------------------
                            ; For terminals, find the pin figures
                            ;--------------------------------------------
                            (terminals
                             (dbGetq
                              (dbGetq
                               (dbFindTermByName cellView name)
                               pins)
                              fig
                              ))
                            ;--------------------------------------------
                            ; For figGroups, just return them directly
                            ;--------------------------------------------
                            (figGroups
                              (list
                                (dbGetFigGroupByName cellView name)
                                )
                              )
                            ))
             )
       ;-----------------------------------------------------------------
       ; Now select them (deselecting first)
       ;-----------------------------------------------------------------
       (if selectFunc 
         (foreach obj objects
                  (funcall selectFunc obj)
                  )
         ; else
         (progn
           (geDeselectAllFig cellView)
           (foreach obj objects
                    (geSelectFig obj)
                    )
           )
         )
       t
       )
  )

/***************************************************************
*                                                              *
*                  (abSelectObjByNameCB form)                  *
*                                                              *
*   the form callback - does the selection, and zooms to fit   *
*                     the selected objects                     *
*                                                              *
***************************************************************/

(procedure (abSelectObjByNameCB form)
  (abSelectObjByNameList 
   (getq form cellView)
   (getq form type) 
   (hiGetListBoxValue (getq form objects))
   (getq form selectFunc)
   )
  (unless (getq form selectFunc)
    (leZoomToSelSet)
    )
  t
  )

/****************************************************************
*                                                               *
*       (abSelectObjByName [type [cellView [selectFunc]]])      *
*                                                               *
* Passed a type - instances, nets or terminals, and a cellView, *
*  give the user a list of objects to select. Also can give a   *
* a function object to do the "selection" if you want it to do  *
*                 something other than selection                *
*                                                               *
****************************************************************/

(procedure (abSelectObjByName @optional (type 'instances) 
                              (cellView (geGetEditCellView))
                              selectFunc)
  (let (objects intType)
       (unless (boundp 'abSelectObjByNameForm)
               (abCreateSelectObjByNameForm))
       (when cellView
             (setq intType (if (eq type 'netsAndVias) 'nets type))
             (setq objects (dbGet cellView intType))
             (hiSetFormName abSelectObjByNameForm
                            (sprintf nil "Select %s by name" type))
             ;-----------------------------------------------------------
             ; Record what kind of objects these are
             ;-----------------------------------------------------------
             (putpropq abSelectObjByNameForm type type)
             (putpropq abSelectObjByNameForm cellView cellView)
             (putpropq abSelectObjByNameForm selectFunc selectFunc)
             ;-----------------------------------------------------------
             ; Deselect everything first
             ;-----------------------------------------------------------
             (putpropq (getq abSelectObjByNameForm objects) nil value)
             ;-----------------------------------------------------------
             ; Handle mosaics - return mosaic name instead
             ;-----------------------------------------------------------
             (when (eq type 'instances)
                   (setq objects 
                         (foreach mapcar object objects
                                  (or (dbGetq object mosaic) object))))
             ;-----------------------------------------------------------
             ; Now update the choices
             ;-----------------------------------------------------------
             (putpropq (getq abSelectObjByNameForm objects)
                       (sort (dbGetq objects name) 
                             (lambda (a b) (minusp (alphaNumCmp a b)))
                             )
                       choices)
             ;-----------------------------------------------------------
             ; And display it
             ;-----------------------------------------------------------
             (hiDisplayForm abSelectObjByNameForm)
             )
       t
       )
  )
