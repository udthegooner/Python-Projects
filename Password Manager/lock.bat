REM batch file which unlocks and runs the password manager

@ECHO OFF
if EXIST "HiddenFolder" goto LOCK
:UNLOCK
echo Enter password to your Password Manager
set/p "pass=>"

REM default password is pw
if NOT %pass%== pw goto FAIL
attrib -h -s "cbr12k%3e"
ren "cbr12k%3e" "HiddenFolder"

REM enter the absolute path to your hidden folder
python "\HiddenFolder\pm.py"

goto LOCK
:FAIL
echo Invalid password
goto end
:LOCK
ren "HiddenFolder" "cbr12k%3e"
attrib +h +s "cbr12k%3e"
echo Password Manager locked
:End
