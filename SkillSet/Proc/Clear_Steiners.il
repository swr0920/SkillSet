procedure(Clear_Steiners()
  foreach(stein geGetWindowCellView()~>steiners
            dbDeleteObject(stein)
         )
)
