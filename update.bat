@echo off
rem Получаем текущее время и дату в формате YYYY-MM-DD_HH-MM-SS
for /f "tokens=1-4 delims=/:. " %%a in ("%date% %time%") do (
    set datetime=%%c-%%a-%%b_%%d-%%e-%%f
)

rem Выполняем команду git add
git add .

rem Выполняем команду git commit с сообщением о текущем времени
git commit -m "%datetime%"

rem Выполняем команду git push для отправки коммита в удаленный репозиторий
git push

echo Коммит с названием %datetime% успешно создан и отправлен.
pause