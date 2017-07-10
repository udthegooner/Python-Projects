REM batch file which unlocks and runs the password manager

@ECHO OFF
if EXIST "HiddenFolder" goto LOCK
:UNLOCK
echo Enter password to your Password Manager
set/p "pass=>"

REM default password is pw
if NOT %pass%== pw goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" HiddenFolder

REM enter the absolute path to your hidden folder
python "HiddenFolder\pm.py"

goto LOCK
:FAIL
echo Invalid password
goto end
:LOCK
ren HiddenFolder "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Password Manager locked
:End
