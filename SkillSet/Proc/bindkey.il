;; Bindkeys for 'COMMON'

    ;;Display Dimming
    hiSetBindKey("Schematics" "<Key>Tab" "schViewMenu->Dimming->checked=!schViewMenu->Dimming->checked")
    hiSetBindKey("Layout"     "<Key>Tab" "hiGetCurrentWindow()->dimmingOn=!hiGetCurrentWindow()->dimmingOn")

    ;;Bring the window to top
    hiSetBindKey("Schematics" "Shift<Key>Tab"  "hiRaiseWindow(hiGetCurrentWindow()) ")
    hiSetBindKey("Layout"     "Shift<Key>Tab"  "hiRaiseWindow(hiGetCurrentWindow()) ")

    ;;Bring the window to bottom
    hiSetBindKey("Schematics" "Ctrl<Key>Tab" "hiLowerWindow(hiGetCurrentWindow()) ")
    hiSetBindKey("Layout"     "Ctrl<Key>Tab" "hiLowerWindow(hiGetCurrentWindow()) ")

    ;;ToggleSnap 
    hiSetBindKey("Schematics" "<Key>F2" "toggleSnap()")
    hiSetBindKey("Layout"     "<Key>F2" "toggleSnap()")

    ;;Save As 
    hiSetBindKey("Schematics" "<Key>F3" "_schHiSaveAs()")
    hiSetBindKey("Layout"     "<Key>F3" "leHiSaveACopy(hiGetCurrentWindow())")

    ;;Selected Filter 
    hiSetBindKey("Schematics" "<Key>F4" "Selected_Filter()")
    hiSetBindKey("Layout"     "<Key>F4" "_lebSelectCB()")

    ;;Open Library 
    hiSetBindKey("Command Interpreter"  "<Key>F5" "ddsOpenLibManager()" )
    hiSetBindKey("Schematics"           "<Key>F5" "ddsOpenLibManager()" )
    hiSetBindKey("Layout"               "<Key>F5" "ddsOpenLibManager()" )

    ;;Update - Connectivity Reference (Layout)
    hiSetBindKey("Layout"     "<Key>F6" "lxHiUpdateCellViewPair()")

    ;;Update - Components and Nets (Layout)
    hiSetBindKey("Layout"     "<Key>F7" "lxHiUpdateComponentsAndNets()")

    ;;Open Define Device Correspondence
    hiSetBindKey("Schematics" "<Key>F8" "lxHiDefineDeviceCorr()")
    hiSetBindKey("Layout"     "<Key>F8" "lxHiDefineDeviceCorr()")

    ;;HotKey <F10> abSelectObjByName.il
    hiSetBindKey("Schematics" "<Key>F10" "abSelectObjByName()")
    hiSetBindKey("Layout"     "<Key>F10" "abSelectObjByName()")

    ;;Load Bindkey File (Command Interpreter)
    hiSetBindKey("Command Interpreter"  "<Key>F12" "loadi(\"~/.skill/proc/load_Skill.il\"))" )
    hiSetBindKey("Schematics"           "<Key>F12" "loadi(\"~/.skill/proc/load_Skill.il\"))" )
    hiSetBindKey("Layout"               "<Key>F12" "loadi(\"~/.skill/proc/load_Skill.il\"))" )

    ;;Nethighlight
    hiSetBindKey("Schematics" "<Key>9" "geEnterAddNetProbe()")
    hiSetBindKey("Layout"     "<Key>9" "leHiMarkNet()")

    ;;Remove Higlighted Select Probe
    hiSetBindKey("Schematics" "<Key>0" "geEnterDeleteNetProbe()")
    hiSetBindKey("Layout"     "<Key>0" "leHiUnmarkNet()")
    
    ;;Remove Higlighted All Probe
    hiSetBindKey("Schematics" "<Key>-" "geDeleteAllProbe()")
    hiSetBindKey("Layout"     "<Key>-" "leHiUnmarkNetAll()")

    ;;Zoom-In on Mouse Cursor hotkey
    hiSetBindKey("Schematics" "Shift<Key>z" "hiZoomOutAtMouse()")
    hiSetBindKey("Layout"     "Shift<Key>z" "hiZoomOutAtMouse()")

    ;;Zoom-Out on Mouse Cursor hotkey
    hiSetBindKey("Schematics" "Ctrl<Key>z" "hiZoomInAtMouse()")
    hiSetBindKey("Layout"     "Ctrl<Key>z" "hiZoomInAtMouse()")

    ;;Calibre DRC
    hiSetBindKey("Schematics" "<Key>F13"  "mgc_custom_menus_run_menu_cmd(\"DRC\" \"::CalibreInterface::execCalibre DRC\" 'nil ?code \"\")" )
    hiSetBindKey("Layout"     "<Key>F13"  "mgc_custom_menus_run_menu_cmd(\"DRC\" \"::CalibreInterface::execCalibre DRC\" 'nil ?code \"\")" )

    ;;Calibre LVS
    hiSetBindKey("Schematics" "<Key>F14"  "mgc_custom_menus_run_menu_cmd(\"LVS\" \"::CalibreInterface::execCalibre LVS\" 'nil ?code \"\")")
    hiSetBindKey("Layout"     "<Key>F14"  "mgc_custom_menus_run_menu_cmd(\"LVS\" \"::CalibreInterface::execCalibre LVS\" 'nil ?code \"\")")

    ;;Calibre PEX
    hiSetBindKey("Schematics" "<Key>F15"  "mgc_custom_menus_run_menu_cmd(\"PEX\" \"::CalibreInterface::execCalibre PEX\" 'nil ?code \"\")")
    hiSetBindKey("Layout"     "<Key>F15"  "mgc_custom_menus_run_menu_cmd(\"PEX\" \"::CalibreInterface::execCalibre PEX\" 'nil ?code \"\")")

;; Bindkeys for 'Schematics'

    ;;Schematic and ADE -> Direct plot -> Main Form
    hiSetBindKey("Schematics" "<Key>`" "sevDirectPlot(sevSession(hiGetCurrentWindow()) 'asiDirectPlotResultsMenuCB)")
    
    ;;Schematic and ADE -> Print -> DC Operating Points
    hiSetBindKey("Schematics" "<Key>1" "sevPrintResults(sevSession(hiGetCurrentWindow()) 'dcOpPoints)")
    
    ;;Schematic and ADE -> Print -> DC Node Voltages
    hiSetBindKey("Schematics" "<Key>2" "sevPrintResults(sevSession(hiGetCurrentWindow()) 'dcNodeVoltages)")
    
    ;;Schematic and ADE -> Print -> Transient Operating Points
    hiSetBindKey("Schematics" "<Key>3" "sevPrintResults(sevSession(hiGetCurrentWindow()) 'tranOpPoints)")
    
    ;;Schematic and ADE -> Print -> Transient Node Voltages
    hiSetBindKey("Schematics" "<Key>4" "sevPrintResults(sevSession(hiGetCurrentWindow()) 'tranNodeVoltages)")
    
    ;;Schematic and ADE -> Results Display Window -> Update Results
    hiSetBindKey("Schematics" "<Key>5" "CCSkey() awviPUpdateMenuCB()")
    
    ;;Schematic and ADE -> Results Display Window -> Clear
    hiSetBindKey("Schematics" "<Key>6" "CCSkey() awviClearPrintWindowMenuCB()")

    ;;Nethighlight
    hiSetBindKey("Schematics" "<Key>=" "schViewMenu->NetHighlights->checked=!schViewMenu->NetHighlights->checked")

    ;;Schematic Find
    hiSetBindKey("Schematics" "Shift<Key>s" "schHiFind()")

    ;;Min_Depth (Schematics)
    hiSetBindKey("Schematics" "Ctrl<Key>F"  "leSetStopLevelToEditLevel(hiGetCurrentWindow()) ")

    ;;Max_Depth (Schematics)
    hiSetBindKey("Schematics" "Shift<Key>F" "hiGetCurrentWindow()->stopLevel = dbGetMaxHierDepth()-1 ")

    ;;Rotate (Counter-Clockwise)
    hiSetBindKey("Schematics" "Ctrl<Key>R"          "_schHiToolbarRotate('left) ")
    ;;Rotate (Counter-Clockwise) EF
    hiSetBindKey("Schematics" "Ctrl<Key>R EF"       "schSetEnv(\"rotate\" t) ")

    ;;Unset Rotate <Key>R
    hiSetBindKey("Schematics" "<Key>R"     "")
    ;;Rotate (Clockwise)
    hiSetBindKey("Schematics" "Shift<Key>R"     "_schHiToolbarRotate('right) ")
    ;;Rotate (Clockwise) EF
    hiSetBindKey("Schematics" "Shift<Key>R EF"  " for( i 1 3 schSetEnv(\"rotate\" t) ) ")

    ;;Flip (Horizontal)
    hiSetBindKey("Schematics" "<Key>h"          "_schHiToolbarRotate('flipH) ")
    ;;Flip (Horizontal) EF
    hiSetBindKey("Schematics" "<Key>h EF"       "schSetEnv(\"sideways\" t) ")

    ;;Flip (Vertical)
    hiSetBindKey("Schematics" "<Key>v"          "_schHiToolbarRotate('flipV) ")
    ;;Flip (Vertical) EF
    hiSetBindKey("Schematics" "<Key>v EF"       "schSetEnv(\"upsideDown\" t) ")


;; Bindkeys for 'Layout'

    ;;Select by Line
    hiSetBindKey("Layout" "ShiftAlt<Key>A" "geSelectByLine() ")

    ;;Increase_Depth (Layout)
    hiSetBindKey("Layout" "<Key>]" "leIncrementStopLevelByOne(hiGetCurrentWindow()) ")

    ;;Decrease_Depth (Layout)
    hiSetBindKey("Layout" "<Key>[" "leDecrementStopLevelByOne(hiGetCurrentWindow()) ")

    ;;Nethighlight(XL)
    hiSetBindKey("Layout" "<Key>(" "lntHiNetTracer()")
    hiSetBindKey("Layout" "<Key>_" "lntRemoveAll()")

    ;;XL Probe
    hiSetBindKey("Layout" "Shift<Key>l" "lxHiProbe()")

    ;;Flip Options
    hiSetBindKey("Layout" "<Key>v" "_leRotateOrFlip(\"MX\")")
    hiSetBindKey("Layout" "<Key>h" "_leRotateOrFlip(\"MY\")")

    ;;Rotate (Counter-Clockwise)
    hiSetBindKey("Layout" "Ctrl<Key>R"          "_leRotateOrFlip(\"R90\")   ")
    ;;Rotate (Counter-Clockwise) EF
    hiSetBindKey("Layout" "Ctrl<Key>R EF"       "_leRotateOrFlip(\"R90\")   ")
    ;;Rotate (Clockwise)
    hiSetBindKey("Layout" "Shift<Key>R"         "_leRotateOrFlip(\"R270\")  ")
    ;;Rotate (Clockwise) EF
    hiSetBindKey("Layout" "Shift<Key>R EF"      "_leRotateOrFlip(\"R270\")  ")

    ;;Path Hotkey (w)
    hiSetBindKey("Layout" "<Key>w"      "leHiCreatePath()" )

    ;;Wire Hotkey (Shift-W)
    hiSetBindKey("Layout" "Shift<Key>w" "leHiCreateWire()" )

    ;;Multi-Path Hotkey
    hiSetBindKey("Layout" "Shift<Key>p" "leHiCreateMPP()")

    ;;Group Hotkey
    hiSetBindKey("Layout" "<Key>\\" "leHiCreateGroup()")

    ;;UnGroup Hotkey
    hiSetBindKey("Layout" "Shift<Key>\\" "leHiUngroup()")

    ;;Align Top
    hiSetBindKey("Layout" "Alt<Key>w"     "leAlign(\"top\")")
    ;;Align Down
    hiSetBindKey("Layout" "Alt<Key>s"     "leAlign(\"bottom\")")
    ;;Align_Right
    hiSetBindKey("Layout" "Alt<Key>d"     "leAlign(\"right\")")
    ;;Align_Top
    hiSetBindKey("Layout" "Alt<Key>a"     "leAlign(\"left\")")

    ;;Repeat Copy HotKey
    hiSetBindKey("Layout" "Alt<Key>c" " leHiRepeatCopy()")

    ;;Repeat Copy HotKey
    hiSetBindKey("Layout" "Alt<Key>v" " _leHiRepeatPaste()")

    ;;Enable/Disable smart snapping (Create Rectangle Form)
    hiSetBindKey("Layout" "<Key>sEF" "leSetEnv(\"rectSmartSnapEnable\" !leGetEnv(\"rectSmartSnapEnable\"))")
    
    ;;Repeat Copy HotKey
    hiSetBindKey("Layout" "Shift<Key>v" "leHiDescend( hiGetCurrentWindow() \"read\" )")


