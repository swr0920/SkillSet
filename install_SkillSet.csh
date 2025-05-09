#!/bin/csh

setenv time_old `date +"%Y%m%d_%H%M%S"`

# Move Cadence setup file to old directory
foreach existFile ( "~/.cdsinit" "~/.cdsenv" "~/.SkillSet")
  if(-e $existFile) then
    mv $existFile ${existFile}_old_${time_old}
    echo "Move file from : $existFile \t\t " to : ${existFile}_old_${time_old}
  endif
end

echo ""

# Copy SkillSet to HOME
cp -rf ./SkillSet ~/.SkillSet
echo "Copy from : ./SkillSet   \t\t to : ~/.SkillSet"

# Setup .cdsinit and .cdsinit from ~/.SkillSet
ln -s ~/.SkillSet/cdsinit ~/.cdsinit
echo "Link from : ~/.SkillSet/cdsinit \t\t to : ~/.cdsinit"
ln -s ~/.SkillSet/cdsenv ~/.cdsenv
echo "Link from : ~/.SkillSet/cdsenv  \t\t to : ~/.cdsenv"

