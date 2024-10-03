:loop

@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)
echo %mydate%_%mytime%


ffmpeg -y -i rtsp://user_name:user_password@192.168.1.139:554/h264Preview_01_main -vframes 1 img-%mydate%_%mytime%.jpg

timeout /t 60
goto loop
