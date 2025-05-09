
;; Load Proc

Dir_Proc = "~/.SkillSet/Proc/"
foreach(Proc_File rexMatchList("il$" ls(Dir_Proc))
  if( Proc_File != "Proc.il" then
    loadi( strcat(Dir_Proc Proc_File) )
    printf("Load : %s \n" strcat(Dir_Proc Proc_File) )
  )
)
