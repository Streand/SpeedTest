@echo off

set "dir=%~1"

set "projectPath=C:\Users\Eirik\Documents\MyProjects"

if exist "%projectPath%\%dir%" (
    echo %dir% already exists
    exit /b
)

cd "%projectPath%"

python "C:\batch command\ACJ\create.py" %dir%

cd "%projectPath%\%dir%"

git init

git remote add origin https://github.com/Streand/%dir%.git

echo # %dir% > README.md 

git add .

git commit -m "Initial commit"

git push -u origin master 

code .