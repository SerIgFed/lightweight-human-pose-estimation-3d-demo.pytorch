set BA_DIR=C:\Users\serge\YandexDisk\Projects\BA\docs\20240411_SM-case\hall2_cams

:python demo.py  --video 0

: video-1
python demo.py  --rotate 0 --video %BA_DIR%/8.C_20220604-073015--20220604-090015.avi

: video-2
rem ==== Russian letters are not supported
:::python demo.py  --rotate 0 --video %BA_DIR%/8.Õ_ﬁ.¿¡«_ œœ_“3_“2_“1__20220603-153015--20220603-162015.avi
python demo.py  --rotate 0 --video %BA_DIR%/8.C_20220603-153015--20220603-162015.avi
rem ==== The same file has been ranamed

: video-3
python demo.py  --rotate 1 --video %BA_DIR%/14.C_20220603-153015--20220603-162015.avi

: video-4
python demo.py  --rotate 1 --video %BA_DIR%/14.C_20220604-073015--20220604-090015.avi
