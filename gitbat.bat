@ECHO OFF

IF "%~1"=="" (
		ECHO first parameter is mandatory
		EXIT /B 1	
	    )
IF "%2"=="" SET man2=master
IF NOT "%2"=="" SET man2=%2

SET man1=^"%~1^"

ECHO commit message = "%man1%"
ECHO branch = %man2%

REM ...do stuff here...
git add --all
git commit -m %man1%
git push -u origin %man2%

:theend
