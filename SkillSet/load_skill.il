
;; Procedure load
if( isFile( "~/.SkillSet/Proc/Proc.il" ) then
  loadi( "~/.SkillSet/Proc/Proc.il" )
  display("load proc.il \n")
else
  display("Not exist Proc.il \n")
) ; if-else

;; Menu load
if( isFile( "~/.SkillSet/Menu/Menu.il" )  then
  loadi( "~/.SkillSet/Menu/Menu.il" )
  display("load Menu.il \n")
else
  display("Not exist Menu.il \n")
) ; if-else

