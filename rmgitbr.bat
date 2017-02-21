@echo OFF
IF "%~1"=="" (
		ECHO first parameter is mandatory
		EXIT /B 1	
	    )
git push origin --delete %1
git branch -d %1
git checkout -b %1
