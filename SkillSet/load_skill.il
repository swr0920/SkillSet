
;; Procedure load
if( isFile( "~/.SkillSet/Proc/Proc.il" ) then
  loadi( "~/.SkillSet/Proc/Proc.il" )
  display("load proc.il \n")
else
  display("Not exist Proc.il \n")
) ; if-else

;; Menu load
if( isFile( "~/.SkillSet/Menu/Menu.ile" )  then
  loadi( "~/.SkillSet/Menu/Menu.ile" )
  display("load Menu.ile \n")
else
  display("Not exist Menu.ile \n")
) ; if-else

