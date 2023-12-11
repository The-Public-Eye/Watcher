@echo off

set "outputFile=output.mp4"
set "duration=60"  REM Recording duration in seconds (1 minute)

start /B ffmpeg -f gdigrab -framerate 30 -t %duration% -i desktop -c:v libx264 -crf 18 -preset ultrafast %outputFile%
exit