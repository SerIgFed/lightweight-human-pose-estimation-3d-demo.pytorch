set BA_DIR=%YD_DIR%\Projects\BA\docs\20240411_SM-case\hall2_cams

: 3 peoples from video morning-left
:
set im1=%BA_DIR%/8.C_20220604-073015--20220604-090015_snapshot_00.37.09.jpg
set im2=%BA_DIR%/8.C_20220604-073015--20220604-090015_snapshot_00.59.53.jpg

: 1 worker from video day-right (rotated)
:
set im3=%BA_DIR%/14.C_20220603-153015--20220603-162015_snapshot_00.24.00.jpg

python demo.py --images %im1% %im2% %im3%
