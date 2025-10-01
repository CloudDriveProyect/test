@echo off
set /a n= 0
:i
echo "# test" >> README%n%.md
git init
git add README%n%%.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/CloudDriveProyect/test.git
git push -u origin main
del README%n%.md
set /a n= %n%+1
goto i