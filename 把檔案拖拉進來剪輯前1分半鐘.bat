set filename=%~nx1
cd /d %0\..
cd bin
ffmpeg.exe -y -ss 00:15:40 -i  "%~d1%~p1%~nx1" -acodec copy -vcodec copy -t 00:00:30  "%~d1%~p11.mp4" 
ffmpeg -i "%~d1%~p11.mp4" -y "%~d1%~p11.mpeg" 
ffmpeg.exe -y -ss 00:33:00 -i  "%~d1%~p1%~nx1" -acodec copy -vcodec copy -t 00:00:30  "%~d1%~p12.mp4"
ffmpeg -i "%~d1%~p12.mp4" -y "%~d1%~p12.mpeg" 
ffmpeg.exe -y -ss 01:00:00 -i  "%~d1%~p1%~nx1" -acodec copy -vcodec copy -t 00:00:30  "%~d1%~p13.mp4"
ffmpeg -i "%~d1%~p13.mp4" -y "%~d1%~p13.mpeg" 

ffmpeg -i "concat:"%~d1%~p11.mpeg"|"%~d1%~p12.mpeg"|"%~d1%~p13.mpeg"" -c copy -y "%~d1%~p1Demo.mpeg"
ffmpeg -i "%~d1%~p1Demo.mpeg" -y "F:\KG-HD2\Demo\Demo_%~nx1"  


del  "%~d1%~p11.mp4","%~d1%~p12.mp4","%~d1%~p13.mp4"
del  "%~d1%~p11.mpeg","%~d1%~p12.mpeg","%~d1%~p13.mpeg","%~d1%~p1Demo.mpeg"

cd ..
pause