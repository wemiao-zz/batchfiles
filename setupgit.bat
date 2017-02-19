@echo OFF
IF "%~1"=="" (
		ECHO first parameter is mandatory
		EXIT /B 1	
	    )
echo # %1 >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/wemiao/%1.git
git push -u origin master
