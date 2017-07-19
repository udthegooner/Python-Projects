@ECHO OFF
REM batch file which unlocks and runs the password manager

if EXIST "HiddenFolder" goto LOCK

:UNLOCK
echo Enter password to your Password Manager
set/p "pass=>"

REM default password is pw
if NOT %pass%== pw goto FAIL
attrib -h -s "cbr12k3e"
ren "cbr12k3e" "HiddenFolder"
attrib -h "HiddenFolder\pws.txt"

python "HiddenFolder\pm.py"

goto LOCK

:FAIL
echo Invalid password
goto end

:LOCK
attrib +h "HiddenFolder\pws.txt"
ren "HiddenFolder" "cbr12k3e"
attrib +h +s "cbr12k3e"
echo Password Manager locked

:End
