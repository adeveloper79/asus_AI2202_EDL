@echo off
set /p port=Enter port number:

echo STARTING QSAHARA SERVER 
.\bin\QSaharaServer.exe -p \\.\COM%port% -s 13:xbl_s_devprg_ns.melf

set /p backup_folder=Enter backup folder path for LUN0:
if not exist "%backup_folder%" md "%backup_folder%"

set /p backup_folder1=Enter backup folder path for LUN1:
if not exist "%backup_folder1%" md "%backup_folder1%"

set /p backup_folder2=Enter backup folder path for LUN2:
if not exist "%backup_folder2%" md "%backup_folder2%"

set /p backup_folder3=Enter backup folder path for LUN3:
if not exist "%backup_folder3%" md "%backup_folder3%"

set /p backup_folder4=Enter backup folder path for LUN4:
if not exist "%backup_folder4%" md "%backup_folder4%"

set /p backup_folder5=Enter backup folder path for LUN5:
if not exist "%backup_folder5%" md "%backup_folder5%"

set /p backup_folder6=Enter backup folder path for LUN6:
if not exist "%backup_folder6%" md "%backup_folder6%"

echo Backup folders created.

echo #LUN 0
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\ssd" --start_sector=6 --lun=0 --num_sectors=2 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\persist" --start_sector=8 --lun=0 --num_sectors=8192 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\misc" --start_sector=8200 --lun=0 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\keystore" --start_sector=8456 --lun=0 --num_sectors=128 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\frp" --start_sector=8584 --lun=0 --num_sectors=128 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\fde" --start_sector=8712 --lun=0 --num_sectors=2560 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\factory" --start_sector=11272 --lun=0 --num_sectors=8192 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\batinfo" --start_sector=19464 --lun=0 --num_sectors=8192 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\asdf" --start_sector=27656 --lun=0 --num_sectors=98304 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\gpt" --start_sector=125960 --lun=0 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\sysinfo" --start_sector=126216 --lun=0 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\ADF" --start_sector=126472 --lun=0 --num_sectors=8192 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\ftm" --start_sector=185864 --lun=0 --num_sectors=65536 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\asusfw_a" --start_sector=251400 --lun=0 --num_sectors=16384 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\asusfw_b" --start_sector=267784 --lun=0 --num_sectors=16384 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\asusrecord" --start_sector=546312 --lun=0 --num_sectors=1 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\metadata" --start_sector=2774569 --lun=0 --num_sectors=4096 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo Ignore expandmem 3GB partition
# .\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder%\expandmem" --start_sector=2909737 --lun=0 --num_sectors=786432 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo #LUN 1
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder1%\multiimgqti_a" --start_sector=1670 --lun=1 --num_sectors=8 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder1%\apdp" --start_sector=1686 --lun=1 --num_sectors=64 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo #LUN 2
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder2%\multiimgqti_b" --start_sector=1670 --lun=2 --num_sectors=8 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder2%\apdpb" --start_sector=1686 --lun=2 --num_sectors=64 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo #LUN 3
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder3%\ALIGN_TO_128K_1" --start_sector=6 --lun=3 --num_sectors=26 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder3%\cdt" --start_sector=32 --lun=3 --num_sectors=32 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder3%\ddr" --start_sector=64 --lun=3 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo #LUN 4
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\old_bt_a" --start_sector=81414 --lun=4 --num_sectors=512 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\mdtpsecapp_a" --start_sector=81926 --lun=4 --num_sectors=1024 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\mdtp_a" --start_sector=82950 --lun=4 --num_sectors=8192 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\vm-bootsys_a" --start_sector=139754 --lun=4 --num_sectors=67109 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\qmcs" --start_sector=231727 --lun=4 --num_sectors=7680 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\old_bt_b" --start_sector=346991 --lun=4 --num_sectors=512 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\mdtpsecapp_b" --start_sector=347503 --lun=4 --num_sectors=1024 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\mdtp_b" --start_sector=348527 --lun=4 --num_sectors=8192 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\vm-bootsys_b" --start_sector=405331 --lun=4 --num_sectors=67109 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\devinfo" --start_sector=523480 --lun=4 --num_sectors=1 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\dip" --start_sector=523481 --lun=4 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\splash" --start_sector=523737 --lun=4 --num_sectors=8356 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\limits" --start_sector=532093 --lun=4 --num_sectors=1 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\limits-cdsp" --start_sector=532094 --lun=4 --num_sectors=1 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\toolsfv" --start_sector=532095 --lun=4 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
# .\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\logdump" --start_sector=534399 --lun=4 --num_sectors=131072 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\uefivarstore" --start_sector=665503 --lun=4 --num_sectors=128 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\secdata" --start_sector=665631 --lun=4 --num_sectors=7 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\vm-data" --start_sector=665638 --lun=4 --num_sectors=8356 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\mdcompress" --start_sector=673994 --lun=4 --num_sectors=5120 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\connsec" --start_sector=679114 --lun=4 --num_sectors=32 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\tzsc" --start_sector=679146 --lun=4 --num_sectors=32 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\spunvm" --start_sector=679178 --lun=4 --num_sectors=8192 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\xbl_sc_test_mode" --start_sector=687498 --lun=4 --num_sectors=16 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder4%\xbl_sc_logs" --start_sector=687514 --lun=4 --num_sectors=32 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo #LUN 5
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder5%\ALIGN_TO_128K_2" --start_sector=6 --lun=5 --num_sectors=26 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder5%\modemst1" --start_sector=32 --lun=5 --num_sectors=1280 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder5%\modemst2" --start_sector=1312 --lun=5 --num_sectors=1280 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder5%\fsg" --start_sector=2592 --lun=5 --num_sectors=1280 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder5%\fsg2" --start_sector=3872 --lun=5 --num_sectors=1280 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder5%\fsg3" --start_sector=5152 --lun=5 --num_sectors=1280 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder5%\fsc" --start_sector=6432 --lun=5 --num_sectors=32 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo #LUN6
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder6%\sysconf" --start_sector=6 --lun=6 --num_sectors=32 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder6%\asuskey" --start_sector=38 --lun=6 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder6%\asuskey2" --start_sector=294 --lun=6 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder6%\asuskey3" --start_sector=550 --lun=6 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder6%\asuskey4" --start_sector=806 --lun=6 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder6%\asuskey5" --start_sector=1062 --lun=6 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs
.\bin\fh_loader.exe --port=\\.\COM%port% --convertprogram2read --sendimage="%backup_folder6%\asuskey6" --start_sector=1318 --lun=6 --num_sectors=256 --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

echo #Reboot Device
.\bin\fh_loader.exe --port=\\.\COM%port% --reset --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs

pause