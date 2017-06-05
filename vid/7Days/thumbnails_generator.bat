mkdir thumbnails

for /r %%i in (*) do (
echo %%i

for %%A in ("%%i") do (
    ffmpeg -ss 00:00:04 -i "%%i" -vframes 1 -q:v 2 "thumbnails\%%~nxA".jpg 
)
)