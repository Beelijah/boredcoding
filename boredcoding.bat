@echo off
rem i mean, you can look through the code, i have occasional comments, but there's not gonna be much of anything interesting here
rem well, as of ALPHA_1.4.0, there's been tons of comments!
rem .
rem for future reference, here's an example for the choice command:
rem choice /C (options here) /N
color 0F
title BCG
set checkforskull=N
set runBatch=%cd%\
rem dont forget to update these!
set ver=ALPHA_1.5.9
set buildver=27
set isSnap=N
rem okay, you dont have to update these.
set /A colorannoy=0
set startfromone=N
set guessnumberfrom=guessbackfailed
set isDev=N
if exist "C:\Users\%username%\ThatTemp\BCG\DEBUG.dat" set isDev=Y
set update=N
if "%runBatch%" EQU "*\\" set runBatch=%cd%
if not exist "%runBatch%exec.dat" set checkexe=N
if exist "%runBatch%exec.dat" set checkexe=Y
if "%checkexe%" EQU "Y" set /P checkexed=<exec.dat
if "%checkexed%" EQU "WALTER" set isExe=Y
set alrcheck=N
if not exist "C:\Users\%username%\ThatTemp\BCG\" goto :firsttime
cd "C:\Users\%username%\ThatTemp\BCG\"
set /P colorchoice=<colorchoice.dat
color %colorchoice%
if exist "C:\Users\%username%\ThatTemp\BCG\colorannoymiddle.dat" goto :colorannoyleft
if "%isSnap%" EQU "Y" if not exist "C:\Users\%username%\ThatTemp\BCG\snaptest.dat" goto :snapwarn
goto :start

:snapwarn
cls
echo Warning!
echo You have ran a Pre-Release of boredcoding.bat!
echo This may be incomplete, broken, and even mess with save data!
echo -------------------------------------------------------------
echo Press any key to acknowledge.
echo This will not show up again.
pause > nul
cd "C:\Users\%username%\ThatTemp\BCG\"
echo ty for being a tester >snaptest.dat
goto :start

rem errors go here

:guessbackfailed
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong when attempting to go back!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo Could not find variable guessnumberfrom >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:installfailedip
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during installation!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo Could not create folder "C:\Users\%username%\ThatTemp\BCG\" >> error.log
echo You could try: >> error.log
echo Giving permissions to all in that folder >> error.log
echo Creating it yourself (however, that may cause issues) >> error.log
echo Giving up (also may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:levelonecrazyfail
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\levelonecrazy.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveloneasksysfail
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveloneasksys.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveloneaskcmdver
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveloneaskcmdver.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveloneafv
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveloneafv.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveloneend
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo And you were so close to finishing the level!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveltwoafe
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveltwoafe.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveltwoweb
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveltwoweb.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveltwoweblol
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveltwoweblol.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveltwowebgog
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveltwowebgog.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:leveltwofeelfail
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\leveltwofeelfail.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:levelthreememefail
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:savebackupfailed
@echo off
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during converting your save!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo Error while creating file: "C:\Users\%username%\ThatTemp\BCG\savebackup.dat" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:saveconvertfailed
@echo off
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during converting your save!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo Error while creating file: "C:\Users\%username%\ThatTemp\BCG\saveone\save.dat" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:levelthreefunfail
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during initizializiationaitizilizatiatiate!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\levelthreefun.vbs" (kind of ironic it says fun, as the game literally crashed.) >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:verdatmissing
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo Something went wrong during checking the version!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo File missing at: "C:\Users\%username%\ThatTemp\BCG\ver.dat" >> error.log
echo You could try: >> error.log
echo Creating it yourself (this will cause issues without the code)>> error.log
echo Deleting the BCG folder (this will delete your save, but redo the setup) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

:selfcrash
title FATAL ERROR
timeout 2 /NOBREAK > nul
cls
echo A crash was triggered manually!
echo --------------------------------------------------------------------------
echo Press any key to close the window, and create a error log on your desktop.
pause > nul
cd "C:\Users\%username%\Desktop\"
echo Error in boredcoding.bat > error.log
echo Manual crash triggered at DEBUG MENU >> error.log
echo You could try: >> error.log
echo Relaunching the game (ez fix) >> error.log
echo Playing Minecraft (maybe not fixing it, but fun!) >> error.log
echo Giving up (may cause issues, mental health wise.) >> error.log
echo . >> error.log
echo This error log was created on: >> error.log
echo %date%, at %time% >> error.log
cls
echo Error report created.
timeout 1 /NOBREAK > nul
exit

rem errors stop here

:firsttime
cls
echo w
timeout 1 /NOBREAK > nul
cls
echo we
timeout 1 /NOBREAK > nul
cls
echo wel
timeout 1 /NOBREAK > nul
cls
echo welc
timeout 1 /NOBREAK > nul
cls
echo welco
timeout 1 /NOBREAK > nul
cls
echo welcom
timeout 1 /NOBREAK > nul
cls
echo welcome
timeout 1 /NOBREAK > nul
echo to the stupid program where i make random crap that does not matter
timeout 1 /NOBREAK > nul
echo oh yeah and it saves
timeout 1 /NOBREAK > nul
echo apparently
timeout 1 /NOBREAK > nul
echo i think, i haven't coded in a while when making this
timeout 2 /NOBREAK > nul
cls
echo WELCOME TO BOREDCODING.BAT!!!
timeout 2 /NOBREAK > nul
echo WE NEED TO SET UP SOME FOLDERS FOR STUFFS!
timeout 2 /NOBREAK > nul
echo ------------------------------------------
timeout 1 /NOBREAK > nul
echo PRESS ANY KEY ON THAT THING NEXT TO YOUR MOUSE TO INSTALL!
timeout 1 /NOBREAK > nul
goto :firsttimeinstallask

:firsttimeinstallask
cls
echo WELCOME TO BOREDCODING.BAT!!!
echo WE NEED TO SET UP SOME FOLDERS FOR STUFFS!
echo ----------------------------------------------------------
echo PRESS ANY KEY ON THAT THING NEXT TO YOUR MOUSE TO INSTALL!
echo CLOSE IF YOU DON'T WANNA!
pause > nul
color 02
set installfailedip=N
goto :startinstall

:startinstall
cd "C:\Users\%username%\"
if not exist "C:\Users\%username%\ThatTemp\" md ThatTemp
cd ThatTemp
md BCG
if not exist "C:\Users\%username%\ThatTemp\BCG\" set installfailedip=Y
cd BCG
rem save file directories, WOOOOOO!
md saveone
md savetwo
md savethree
rem man, all the dialogue is right here!
echo x=msgbox("your compooter has been haxxed by the eliete hacking grop" ,16, "alert from micorsfot")>levelonecrazy.vbs
echo x=msgbox("yeah? what do you need?" ,32, "windows")>leveloneasksys.vbs
echo x=msgbox("you already know, you literally are cmd." ,48, "windows")>leveloneaskcmdver.vbs
echo x=msgbox("correcto!" ,64, "windows")>leveloneafv.vbs
echo x=msgbox("see you next time!" ,64, "windows")>leveloneend.vbs
echo x=msgbox("they probably did" ,48, "windows")>leveltwoafe.vbs
echo x=msgbox("look it up." ,64, "windows")>leveltwoweb.vbs
echo x=msgbox("now tell me, how did you open that?" ,32, "windows")>leveltwoweblol.vbs
echo x=msgbox("glad you liked it! found it on google." ,64, "windows")>leveltwowebgog.vbs
echo x=msgbox("pretty good, actually." ,64, "windows")>leveltwofeel.vbs
echo x=msgbox("you can't really close me, can you?" ,16, "me")>levelthreememe.vbs
echo x=msgbox("wow, that looked fun!" ,64, "windows")>levelthreefun.vbs
echo x=msgbox("yo, whats up?" ,64, "windows")>levelfiveoh.vbs
echo x=msgbox("nah, its totally fine." ,64, "windows")>levelfiveitsok.vbs
echo x=msgbox("yeah!" ,64, "windows")>levelfiveitsokfr.vbs
echo x=msgbox("infact, im never alive until you command me to be!" ,64, "windows")>levelfivenerdtalk.vbs
echo x=msgbox("you found me! im gay" ,64, "selah")>selahsecret.vbs
echo x=msgbox("i mean, i could delete the save file!" ,64, "windows")>levelseventhreat.vbs
echo x=msgbox("good point." ,64, "windows")>levelseventrue.vbs
echo x=msgbox("yeah? whats up?" ,32, "windows")>levelsevenask.vbs
echo x=msgbox("maybe tell %username% the current line of code!" ,64, "windows")>levelsevensuggest.vbs
echo x=msgbox("wait, weren't we just on 2400 last level?" ,32, "windows")>levelsevensurprised.vbs
echo x=msgbox("and you're telling me we're on 2676?!" ,16, "windows")>levelsevendoublecheck.vbs
echo x=msgbox("what." ,64, "windows")>levelsevenverysurprised.vbs
echo x=msgbox("what is it?" ,32, "windows")>levelsevenwhatisit.vbs
echo %buildver% >ver.dat
echo you are alpha > alpha.aim
if not exist "C:\Users\%username%\ThatTemp\BCG\colorchoice.dat" echo 0F > colorchoice.dat
if /I "%update%" EQU "Y" goto :updatefinish
cls
echo Hacking the mainframe         : LOADING
timeout 2 /NOBREAK > nul
cls
echo Hacking the mainframe         : OK
timeout 1 /NOBREAK > nul
echo Subscribing to scrambled_egg3 : LOADING
timeout 1 /NOBREAK > nul
cls
echo Hacking the mainframe         : OK
echo Subscribing to scrambled_egg3 : OK
timeout 1 /NOBREAK > nul
echo Defragmenting HDD's           : LOADING
timeout 1 /NOBREAK > nul
cls
echo Hacking the mainframe         : OK
echo Subscribing to scrambled_egg3 : OK
echo Defragmenting HDD's           : OK
timeout 1 /NOBREAK > nul
echo Corrupting Floppy Disks       : LOADING
timeout 1 /NOBREAK > nul
cls
echo Hacking the mainframe         : OK
echo Subscribing to scrambled_egg3 : OK
echo Defragmenting HDD's           : OK
echo Corrupting Floppy Disks       : OK
timeout 1 /NOBREAK > nul
echo Doing actual stuff            : LOADING
timeout 1 /NOBREAK > nul
cls
echo Hacking the mainframe         : OK
echo Subscribing to scrambled_egg3 : OK
echo Defragmenting HDD's           : OK
echo Corrupting Floppy Disks       : OK
rem Only uncomment the below if you'd like to preview the error.
rem set installfailedip=Y
if "%installfailedip%" EQU "Y" echo Doing actual stuff           : FAILED & goto :installfailedip
if "%installfailedip%" EQU "N" echo Doing actual stuff           : OK
echo Setup finished successfully.
echo Press any key to finish.
pause > nul
color 0F
goto :start

:ressetdata
goto :resetdata

:resetdata
cd "C:\Users\%username%\ThatTemp\BCG\saveone\"
if exist "C:\Users\%username%\ThatTemp\BCG\saveone\save.dat" set /P levelsaveone=<friendlysave.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\saveone\save.dat" set levelsaveone=NEW GAME
cd "C:\Users\%username%\ThatTemp\BCG\savetwo\"
if exist "C:\Users\%username%\ThatTemp\BCG\savetwo\save.dat" set /P levelsavetwo=<friendlysave.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\savetwo\save.dat" set levelsavetwo=NEW GAME
cd "C:\Users\%username%\ThatTemp\BCG\savethree\"
if exist "C:\Users\%username%\ThatTemp\BCG\savethree\save.dat" set /P levelsavethree=<friendlysave.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\savethree\save.dat" set levelsavethree=NEW GAME
cls
echo Which save file would you like to delete?
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Press the number of a save file to choose it!
echo Press F to reset ALL DATA!
echo Press E to go back!
echo -------------------------------------------------------------------------------
echo Save File 1: %levelsaveone%
echo Save File 2: %levelsavetwo%
echo Save File 3: %levelsavethree%
echo -------------------------------------------------------------------------------
echo Type the number of a save file to choose it!
choice /C 123FE /N
if "%errorlevel%" EQU "1" set deletefile=1& goto :resetfile
if "%errorlevel%" EQU "2" set deletefile=2& goto :resetfile
if "%errorlevel%" EQU "3" set deletefile=3& goto :resetfile

if "%errorlevel%" EQU "4" goto :fullreset
if "%errorlevel%" EQU "5" goto :options
cls
echo that's not an option...
echo ----------------------------
echo press any key to go back...
pause > nul
goto :resetdata

:resetfile
cls
echo Are you sure you want to delete save file %deletefile%?
echo --------------------------------------------
echo Y                                          N
choice /C YN /N
if /I "%errorlevel%" EQU "1" goto :resetfileconfirm
if /I "%errorlevel%" EQU "2" goto :resetdata 
cls
echo that's not an option...
echo ---------------------------
echo press any key to go back...
pause > nul
goto :resetfile

:resetfileconfirm
cls
echo Deleting save file %deletefile%...
timeout 3 /NOBREAK > nul
if "%deletefile%" EQU "1" cd "C:\Users\%username%\ThatTemp\BCG\saveone\"
if "%deletefile%" EQU "2" cd "C:\Users\%username%\ThatTemp\BCG\savetwo\"
if "%deletefile%" EQU "3" cd "C:\Users\%username%\ThatTemp\BCG\savethree\"
del save.dat
del answerone.dat
del answertwo.dat
del answerthree.dat
del friendlysave.dat
cls
echo Deleted...
echo ---------------------------
echo Press any key to go back...
pause > nul
goto :resetdata

:fullreset
cls
echo Deleting all save files in 5 seconds.
echo Close the game if you'd like to abort.
timeout 5 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\"
rd /Q /S BCG
cls
echo All data deleted.
echo ------------------------------
echo press any key to close...
pause > nul
exit

:updatefinish
cls
echo the update has completed successfully.
echo --------------------------------------
pause
goto :start

:update
cls
echo uh oh, the old build version you were playing on was updated!
echo there are two ways to do this.
echo 1. update the files (wont clear your save data.) (recommended)
echo 2. continue anyway  (will likely crash the game) (not recommended)
echo press the number of an option to choose it.
choice /C 21 /N
if "%errorlevel%" EQU "1" set alrcheck=Y& goto :start
if "%errorlevel%" EQU "2" set update=Y& goto :startinstall
cls
echo that's not an option here.
timeout 1 /NOBREAK > nul
goto :update

rem START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START START 
rem this is a placeholder wow
:start
cd "C:\Users\%username%\ThatTemp\BCG\"
if not exist "C:\Users\%username%\ThatTemp\BCG\ver.dat" goto :verdatmissing
set /P buildvercheck=<ver.dat
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
set /P level=<save.dat
cd "C:\Users\%username%\ThatTemp\BCG\"
rem these are old portions of code that i dont really remember writing, so i just did a quick directory swap
if "%alrcheck%" EQU "N" if %buildvercheck% LSS %buildver% goto :update
if "%alrcheck%" EQU "N" if %buildver% GTR %buildvercheck% goto :update
echo buildver:      %buildver%
echo buildversaved: %buildvercheck%
echo level: %level%
rem this code below started getting annoying, so i commented it out.
rem if "%isDev%" EQU "Y" pause
cls
echo BCG %ver%
if "%isExe%" EQU "Y" echo Executable version
if exist "C:\Users\%username%\ThatTemp\BCG\olddebug.dat" echo USED TO BE A DEBUG USER
if "%isDev%" EQU "Y" echo DEBUG ENABLED
if "%isSnap%" EQU "Y" echo Pre-Release build!
echo ---------------------------------------------
echo Start
echo Achievements
if "%isDev%" EQU "Y" echo Le Debug
if "%isDev%" EQU "Y" echo Reload
if exist "C:\Users\%username%\ThatTemp\BCG\minigames.dat" if exist "C:\Users\%username%\ThatTemp\BCG\atminigames.dat" echo Minigames
if exist "C:\Users\%username%\ThatTemp\BCG\minigames.dat" if not exist "C:\Users\%username%\ThatTemp\BCG\atminigames.dat" echo Minigames (NEW)
if not exist "C:\Users\%username%\ThatTemp\BCG\minigames.dat" echo Minigames (LOCKED)
echo Options
echo Exit
echo ---------------------------------------------
echo Type the first letter of an option to use it!
choice /C SOAELMR /N
if /I "%errorlevel%" EQU "1" goto :gamesaves
if /I "%errorlevel%" EQU "2" goto :options
if /I "%errorlevel%" EQU "3" goto :achievements
if /I "%errorlevel%" EQU "4" exit
if /I "%errorlevel%" EQU "5" goto :DEBUGask
if /I "%errorlevel%" EQU "6" if exist "C:\Users\%username%\ThatTemp\BCG\minigames.dat" goto :minigames
if /I "%errorlevel%" EQU "6" if not exist "C:\Users\%username%\ThatTemp\BCG\minigames.dat" goto :minigameslocked
if /I "%errorlevel%" EQU "7" goto :start
cls
echo that's not an option.
if "%isDev%" EQU "Y" echo %errorlevel%
echo press a key to go back
pause > nul
goto :start

rem thought of this the day after halloween.
:options
cls
echo BCG %ver% - Options
if exist "C:\Users\%username%\ThatTemp\BCG\olddebug.dat" echo USED TO BE A DEBUG USER
if "%isDev%" EQU "Y" echo DEBUG ENABLED
if "%isSnap%" EQU "Y" echo Pre-Release build!
echo Type "E" to go back...
echo ---------------------------------------------
echo Reset Data
echo Change Color
echo ---------------------------------------------
echo Type the first letter of an option to use it!
choice /C CRE /N
if /I "%errorlevel%" EQU "1" goto :changecolor
if /I "%errorlevel%" EQU "2" goto :resetdata
if /I "%errorlevel%" EQU "3" goto :start
cls
echo that's not an option.
echo ---------------------------
echo press any key to go back...
pause > nul
goto :start

:colorannoyleft
echo nope.
timeout 2 /NOBREAK > nul
goto :colorannoy

:colorannoy
cd "C:\Users\%username%\ThatTemp\BCG\"
echo no > colorannoymiddle.dat
echo haha > annoy.aim
cls
echo That was the final time.
timeout 2 /NOBREAK > nul
echo There's no more turning back...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\"
del colorannoymiddle.dat
echo no > colorannoydeleted.dat
cls
echo Deleting All Saves...
timeout 3 /NOBREAK > nul
cls
echo Deleted...
echo -------------------------
echo Press any key to close...
pause > nul
exit

:changecolor
cls
echo Type "E" to go back...
echo Choose a text color:
echo ----------------------------------------
echo 1 - White
echo 2 - Light Green
echo 3 - Dark Green
echo 4 - Light Blue
echo 5 - Dark Blue
echo 6 - Black
echo ----------------------------------------
echo Type the number of a color to choose it!
choice /C 123456E /N
if /I "%errorlevel%" EQU "1" set coloroption=1& goto :changecolorback
if /I "%errorlevel%" EQU "2" set coloroption=2& goto :changecolorback
if /I "%errorlevel%" EQU "3" set coloroption=3& goto :changecolorback
if /I "%errorlevel%" EQU "4" set coloroption=4& goto :changecolorback
if /I "%errorlevel%" EQU "5" set coloroption=5& goto :changecolorback
if /I "%errorlevel%" EQU "6" set coloroption=6& goto :changecolorback
rem .
if /I "%errorlevel%" EQU "7" goto :options
if "%colorannoy%" EQU "7" set /A colorannoy=0
set /A colorannoy=%colorannoy%+1
cls
rem AKLFJSDLKFJSDLKFJSLK" echo this is the longest it can be.
if "%colorannoy%" EQU "1" echo not a color.
if "%colorannoy%" EQU "2" echo i said that's not a color.
if "%colorannoy%" EQU "3" echo what did i just say?!
if "%colorannoy%" EQU "4" echo you better not do it again.
if "%colorannoy%" EQU "5" echo this is the last warning!
if "%colorannoy%" EQU "6" echo you're going to regret this...
if "%colorannoy%" EQU "7" goto :colorannoy
echo ------------------------------
echo press any key to go back...
pause > nul
goto :changecolor

:changecolorback
cls
echo Type "E" to go back...
echo Choose a background color:
echo ----------------------------------------
if "%coloroption%" EQU "1" echo 1 - White (Already Chosen)
if not "%coloroption%" EQU "1" echo 1 - White

if "%coloroption%" EQU "2" echo 2 - Light Green (Already Chosen)
if not "%coloroption%" EQU "2" echo 2 - Light Green

if "%coloroption%" EQU "3" echo 3 - Dark Green (Already Chosen)
if not "%coloroption%" EQU "3" echo 3 - Dark Green

if "%coloroption%" EQU "4" echo 4 - Light Blue (Already Chosen)
if not "%coloroption%" EQU "4" echo 4 - Light Blue

if "%coloroption%" EQU "5" echo 5 - Dark Blue (Already Chosen)
if not "%coloroption%" EQU "5" echo 5 - Dark Blue

if "%coloroption%" EQU "6" echo 6 - Black (Already Chosen)
if not "%coloroption%" EQU "6" echo 6 - Black

echo ----------------------------------------
echo Type the number of a color to choose it!
choice /C 1234567 /N
if /I "%errorlevel%" EQU "1" set coloroptionback=1& goto :changecolorcheck
if /I "%errorlevel%" EQU "2" set coloroptionback=2& goto :changecolorcheck
if /I "%errorlevel%" EQU "3" set coloroptionback=3& goto :changecolorcheck
if /I "%errorlevel%" EQU "4" set coloroptionback=4& goto :changecolorcheck
if /I "%errorlevel%" EQU "5" set coloroptionback=5& goto :changecolorcheck
if /I "%errorlevel%" EQU "6" set coloroptionback=6& goto :changecolorcheck
rem .
if /I "%errorlevel%" EQU "7" goto :options
cls
echo that's not a color...
echo ------------------------------
echo press any key to go back...
pause > nul
goto :changecolor

:changecolorsame
cls
echo Woah, those two are the same colors!
echo You'll need to go back and choose different ones.
echo -------------------------------------------------
echo Press any key to go back...
pause > nul
goto :changecolor

:changecolorcheck
if "%coloroption%" EQU "%coloroptionback%" goto :changecolorsame
goto :changecolorset

:changecolorset
rem 1 - White
rem 2 - Light Green
rem 3 - Dark Green
rem 4 - Light Blue
rem 5 - Dark Blue
cd "C:\Users\%username%\ThatTemp\BCG\"
if "%coloroption%" EQU "1" set encodedcolor=F
if "%coloroption%" EQU "2" set encodedcolor=A
if "%coloroption%" EQU "3" set encodedcolor=2
if "%coloroption%" EQU "4" set encodedcolor=B
if "%coloroption%" EQU "5" set encodedcolor=1
if "%coloroption%" EQU "6" set encodedcolor=0
rem .
if "%coloroptionback%" EQU "1" set encodedcolorback=F
if "%coloroptionback%" EQU "2" set encodedcolorback=A
if "%coloroptionback%" EQU "3" set encodedcolorback=2
if "%coloroptionback%" EQU "4" set encodedcolorback=B
if "%coloroptionback%" EQU "5" set encodedcolorback=1
if "%coloroptionback%" EQU "6" set encodedcolorback=0
rem .
goto :changecolorconfirm

rem colorchoice

:changecolordecline
color %colorchoice%
cls
echo Changes Reverted.
echo ---------------------------
echo Press any key to go back...
pause > nul
goto :options

:changecolorconfirmset
cd "C:\Users\%username%\ThatTemp\BCG\"
echo %encodedcolorback%%encodedcolor% > colorchoice.dat
set colorchoice=%encodedcolorback%%encodedcolor%
cls
echo Color saved.
echo --------------------------
echo Press any key to finish...
pause > nul
goto :options

:changecolorconfirm
color %encodedcolorback%%encodedcolor%
cls
echo Is this color okay?
echo Y                 N
echo -------------------
echo Choose an option.
choice /C YN /N
if /I "%errorlevel%" EQU "1" goto :changecolorconfirmset
if /I "%errorlevel%" EQU "2" goto :changecolordecline
cls
echo Not an answer...
echo ---------------------------
echo Press any key to go back...
pause > nul
goto :changecolorconfirm

:minigameslocked
cls
echo sorry, but the minigames menu is locked.
echo you will unlock it in level 8...
echo ----------------------------------------
echo press any key to go back...
pause > nul
goto :start

:minigames
cd "C:\Users\%username%\ThatTemp\BCG\"
if not exist "C:\Users\%username%\ThatTemp\BCG\atminigames.dat" echo lol >atminigames.dat
rem fun fact, the first ever version of this to be played by a person other than me was my friend! and at that time, rock paper scissors was "coming soon"!
cls
echo                        Minigames
echo -----------------------=========-----------------------
echo Battle BCG
echo Rock Paper Scissors
echo Guess the Number
echo -----------------------=========-----------------------
echo      type the first letter of an option to use it!
echo                 press "E" to go back...
choice /C EBRG /N
if /I "%errorlevel%" EQU "1" goto :start

if /I "%errorlevel%" EQU "2" goto :startminigamebattle
if /I "%errorlevel%" EQU "3" set firsttimerock=Y& goto :startminigamerps
if /I "%errorlevel%" EQU "4" goto :startminigameguess
cls
echo that's not an option...
echo ---------------------------
echo press any key to go back...
pause > nul
goto :minigames

:startminigamerps
cls
set /a rockNum=%random% * 33 / 32767 + 1
if %rockNum% LSS 12 set rockbcg=R
if %rockNum% GTR 12 if %rockNum% LSS 23 set rockbcg=P
if %rockNum% GTR 23 set rockbcg=S
rem if %numberGuess% LSS %randomNum% set guessnumbermore=Y& goto :guessnumberwrong
rem above is a snippet of the guess the number code
cls
echo Press E to go back...
echo Choose your option:
echo ---------------------------------------------
echo Rock
echo Paper
echo Scissors
echo ---------------------------------------------
echo Type the first letter of an option to use it!
choice /C ERPS /N
set rockchoice=M
if /I "%errorlevel%" EQU "1" goto :minigames

if /I "%errorlevel%" EQU "2" set rockchoice=R
if /I "%errorlevel%" EQU "3" set rockchoice=P
if /I "%errorlevel%" EQU "4" set rockchoice=S
if "%rockchoice%" EQU "M" set rockchoice=R
cls
echo Rock. Paper. Scissors.
if "%firsttimerock%" EQU "Y" timeout 1 /NOBREAK > nul
echo SHOOT!
if "%firsttimerock%" EQU "Y" timeout 1 /NOBREAK > nul
rem boring logic goes here...
set firsttimerock=N
if "%rockbcg%" EQU "R" set rockbcgfriend=Rock
if "%rockbcg%" EQU "P" set rockbcgfriend=Paper
if "%rockbcg%" EQU "S" set rockbcgfriend=Scissors

if "%rockchoice%" EQU "R" set rockchoicefriend=Rock
if "%rockchoice%" EQU "P" set rockchoicefriend=Paper
if "%rockchoice%" EQU "S" set rockchoicefriend=Scissors

if "%rockchoice%" EQU "R" if "%rockbcg%" EQU "R" set rockchoicewin=T
if "%rockchoice%" EQU "R" if "%rockbcg%" EQU "P" set rockchoicewin=N
if "%rockchoice%" EQU "R" if "%rockbcg%" EQU "S" set rockchoicewin=Y

if "%rockchoice%" EQU "P" if "%rockbcg%" EQU "R" set rockchoicewin=Y
if "%rockchoice%" EQU "P" if "%rockbcg%" EQU "P" set rockchoicewin=T
if "%rockchoice%" EQU "P" if "%rockbcg%" EQU "S" set rockchoicewin=N
 
if "%rockchoice%" EQU "S" if "%rockbcg%" EQU "R" set rockchoicewin=N
if "%rockchoice%" EQU "S" if "%rockbcg%" EQU "P" set rockchoicewin=Y
if "%rockchoice%" EQU "S" if "%rockbcg%" EQU "S" set rockchoicewin=T
cls
if "%rockchoicewin%" EQU "Y" echo %rockchoicefriend% beats %rockbcgfriend%.
if "%rockchoicewin%" EQU "T" echo %rockchoicefriend% ties with %rockbcgfriend%.
if "%rockchoicewin%" EQU "N" echo %rockchoicefriend% loses against %rockbcgfriend%.
echo .
if "%rockchoicewin%" EQU "Y" echo You win!
if "%rockchoicewin%" EQU "N" echo You lost.
if "%rockchoicewin%" EQU "T" echo Tie.
echo ---------------------------------------------------
if "%rockchoicewin%" EQU "Y" echo press any key to go again!
if "%rockchoicewin%" EQU "N" echo press any key to try again.
if "%rockchoicewin%" EQU "T" echo press any key to go again.
pause > nul
goto :minigamesaskrock

:minigamesaskrock
cls
goto :startminigamerps

:startminigameguess
set guessnumberfrom=minigames
goto :guessnumberstart

:startminigamebattle
cls
echo BCG (BOREDCODING) wants to battle!
timeout 2 /NOBREAK > nul
set /A mhp=100
set /A yhp=100
set battleend=endminigamebattle
set firsttimeskull=Y
set forfeitbattle=N
goto :battleloop

:endminigamebattle
cls
if "%winbattle%" EQU "Y" echo You won!
if "%winbattle%" EQU "N" echo You lost...
if "%winbattle%" EQU "F" echo You lost by forfeit...
timeout 2 /NOBREAK > nul
goto :endminigamebattleask

:endminigamebattleask
cls
echo would you like to play again?
echo -----------------------------
echo Y                           N
choice /C YN /N
if /I "%errorlevel%" EQU "1" goto :startminigamebattle
if /I "%errorlevel%" EQU "2" goto :minigames
cls
echo that's not an option...
echo ---------------------------
echo press any key to go back...
pause > nul
goto :endminigamebattleask

:saveconvert
rem fun fact, if you play on alpha_1.4.2 with a new save, you can actually convert it back!
rem glad i added that feature incase anyone wants to explore the old games with new saves!
cls
echo woah, you played on a version before ALPHA_1.4.2?!
timeout 1 /NOBREAK > nul
echo impressive that you've been around for this game so long, but in this version, theres a caveat...
timeout 1 /NOBREAK > nul
echo there's a new saving system!
timeout 1 /NOBREAK > nul
echo we're gonna need to convert it, mmkay?
timeout 1 /NOBREAK > nul
echo -------------------------------------------------------------------------------------------------
echo press any key to convert your save file to the new format...
pause > nul
color 02
@echo on
cls
rem these are split into sections: 
rem one, gathering data & backing up data
rem two, converting into new formats
rem three, checking if anything went wrong

rem gathering data
cd "C:\Users\%username%\ThatTemp\BCG\"
set /P savedatbackup=<save.dat
set /P answeronebackup=<answerone.dat
set /P answertwobackup=<answertwo.dat
@echo off
rem hah, covering our tracks!
timeout 1 /NOBREAK > nul
@echo on
set /P answerthreebackup=<answerthree.dat
rem backing up data
echo %savedatbackup% > savebackup.dat
echo %answeronebackup% > answeronebackup.dat
echo %answertwobackup% > answertwobackup.dat
echo %answerthreebackup% > answerthreebackup.dat

rem we dont need to make the new directories here, since the game should have asked to update already.
cd "C:\Users\%username%\ThatTemp\BCG\saveone\"
@echo off
timeout 1 /NOBREAK > nul
@echo on
echo %savedatbackup% > save.dat
echo %answeronebackup% > answerone.dat
echo %answertwobackup% > answertwo.dat
echo %answerthreebackup% > answerthree.dat

rem these "if not exist" commands are to check everything goes smoothly.
if not exist "C:\Users\%username%\ThatTemp\BCG\savebackup.dat" goto :savebackupfailed
if not exist "C:\Users\%username%\ThatTemp\BCG\saveone\save.dat" goto :saveconvertfailed

rem load data to check if deleting stuff is ok
set /P savedatask=<save.dat
set /P answeroneask=<answerone.dat
set /P answertwoask=<answertwo.dat
set /P answerthreeask=<answerthree.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\answerone.dat" set answeroneask=Unsaved (Haven't gotten this far)
if not exist "C:\Users\%username%\ThatTemp\BCG\answertwo.dat" set answertwoask=Unsaved (Haven't gotten this far)
if not exist "C:\Users\%username%\ThatTemp\BCG\answerthree.dat" set answerthreeask=Unsaved (Haven't gotten this far)
rem finish loading data
@echo off
cls
echo is this correct?
echo --------------------------------------------------------
echo Save Data:
echo Level      : %savedatask%
echo AnswerOne  : %answeroneask%
echo AnswerTwo  : %answertwoask%
echo AnswerThree: %answerthreeask%
echo ---------------------------------------------------------
echo Y                                                       N
choice /C YN /N
if /I "%option%" EQU "1" goto :saveconvertconfirm
if /I "%option%" EQU "2" goto :saveconvertabort
goto :saveconvertconfirm

:saveconvertconfirm
cls
echo Finishing up...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\"
del save.dat
del answerone.dat
del answertwo.dat
del answerthree.dat
@echo off
color %colorchoice%
cls
echo Save Converted...
echo ---------------------------------------
echo Press any key to advance!
pause > nul
goto :gamesaves

:saveconvertabort
cls
echo Converting save aborted.
echo -------------------------------
echo Press any key to exit...
pause > nul
exit

:gamesaves
if exist "C:\Users\%username%\ThatTemp\BCG\save.dat" goto :saveconvert
rem as of ALPHA_1.4.3, i haven't even tried loading multiple saves...
rem but, im willing to try!

cd "C:\Users\%username%\ThatTemp\BCG\saveone\"
set /P levelsaveoneog=<save.dat
cd "C:\Users\%username%\ThatTemp\BCG\savetwo\"
set /P levelsavetwoog=<save.dat
cd "C:\Users\%username%\ThatTemp\BCG\savethree\"
set /P levelsavethreeog=<save.dat


cd "C:\Users\%username%\ThatTemp\BCG\saveone\"
if exist "C:\Users\%username%\ThatTemp\BCG\saveone\save.dat" set /P levelsaveone=<friendlysave.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\saveone\friendlysave.dat" set levelsaveone=??? (%levelsaveoneog%)
if not exist "C:\Users\%username%\ThatTemp\BCG\saveone\save.dat" set levelsaveone=NEW GAME

cd "C:\Users\%username%\ThatTemp\BCG\savetwo\"
if exist "C:\Users\%username%\ThatTemp\BCG\savetwo\save.dat" set /P levelsavetwo=<friendlysave.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\savetwo\friendlysave.dat" set levelsavetwo=??? (%levelsavetwoog%)
if not exist "C:\Users\%username%\ThatTemp\BCG\savetwo\save.dat" set levelsavetwo=NEW GAME

cd "C:\Users\%username%\ThatTemp\BCG\savethree\"
if exist "C:\Users\%username%\ThatTemp\BCG\savethree\friendlysave.dat" set /P levelsavethree=<friendlysave.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\savethree\friendlysave.dat" set levelsavethree=??? (%levelsavethreeog%)
if not exist "C:\Users\%username%\ThatTemp\BCG\savethree\save.dat" set levelsavethree=NEW GAME

cd "C:\Users\%username%\ThatTemp\BCG\"
if exist "C:\Users\%username%\ThatTemp\BCG\colorannoydeleted.dat" set colorannoydeleted=Y
if "%colorannoydeleted%" EQU "Y" set levelsaveone=NEW GAME (REVENGE)
if "%colorannoydeleted%" EQU "Y" set levelsavetwo=NEW GAME (REVENGE)
if "%colorannoydeleted%" EQU "Y" set levelsavethree=NEW GAME (REVENGE)
if exist "C:\Users\%username%\ThatTemp\BCG\colorannoydeleted.dat" del colorannoydeleted.dat
cls
echo BCG %ver%
if "%isDev%" EQU "Y" echo DEBUG BUILD
echo Choose a save to load!
echo Type E to go back...
echo ---------------------------------------------
echo Save File 1: %levelsaveone%
echo Save File 2: %levelsavetwo%
echo Save File 3: %levelsavethree%
echo ---------------------------------------------
echo Type the number of a save file to choose it!
choice /C 123E /N
if /I "%errorlevel%" EQU "1" set currentsave=saveone& goto :loadgame
if /I "%errorlevel%" EQU "2" set currentsave=savetwo& goto :loadgame
if /I "%errorlevel%" EQU "3" set currentsave=savethree& goto :loadgame
if /I "%errorlevel%" EQU "4" goto :start
cls
echo woah there, pal!
timeout 1 /NOBREAK > nul
echo that's not a save file!
echo ---------------------------
echo press any key to go back...
pause > nul
goto :gamesaves

:achievements
rem DONT FORGET TO UPDATE THE DEBUG MENU WHEN ADDING AN ACHIEVEMENT!
cls
echo BCG %ver%
if "%isDev%" EQU "Y" echo DEBUG BUILD
if exist "C:\Users\%username%\ThatTemp\BCG\cheater.dat" echo Achievements listed may have been faked.
echo ---------------------------------------------------------------------------------------
if exist "C:\Users\%username%\ThatTemp\BCG\alpha.aim" echo Unlocked: Alpha Tester         - Played the game during its alpha phase.
if not exist "C:\Users\%username%\ThatTemp\BCG\alpha.aim" echo Locked: Alpha Tester           - Played the game during its alpha phase.
if exist "C:\Users\%username%\ThatTemp\BCG\skull.aim" echo Unlocked: Skull Crusher MASTER - During a fight, land skull crusher FIRST TRY!
if not exist "C:\Users\%username%\ThatTemp\BCG\skull.aim" echo Locked: Skull Crusher MASTER   - During a fight, land skull crusher FIRST TRY!
if exist "C:\Users\%username%\ThatTemp\BCG\ls.aim" echo Unlocked: DEBUG FINDER         - Find the DEBUG menu.
if not exist "C:\Users\%username%\ThatTemp\BCG\ls.aim" echo Locked: DEBUG FINDER         - Find the DEBUG menu.
if exist "C:\Users\%username%\ThatTemp\BCG\math.aim" echo Unlocked: Mathematician        - Get every question right during the math quiz!
if not exist "C:\Users\%username%\ThatTemp\BCG\math.aim" echo Locked: Mathematician          - Get every question right during the math quiz!
if exist "C:\Users\%username%\ThatTemp\BCG\feel.aim" echo Unlocked: Another Feeling      - Find the secret code for the feelings question.
if not exist "C:\Users\%username%\ThatTemp\BCG\feel.aim" echo Locked: Another Feeling        - Find the secret code for the feelings question.
rem if exist "C:\Users\%username%\ThatTemp\BCG\annoy.aim" echo Unlocked: Not A Color!!!       - Annoy BCG while picking a color.
rem if not exist "C:\Users\%username%\ThatTemp\BCG\annoy.aim" echo Locked: Not A Color!!!         - Annoy BCG while picking a color.
echo ---------------------------------------------------------------------------------------
echo press any key to go back...
pause > nul
goto :start

:DEBUGask
cd "C:\Users\%username%\ThatTemp\BCG\"
set lsget=N
if not exist "C:\Users\%username%\ThatTemp\BCG\ls.aim" set lsget=Y
if "%lsget%" EQU "Y" cls
if "%lsget%" EQU "Y" echo you have found the debug secret!
if "%lsget%" EQU "Y" echo --------------------------------
if "%lsget%" EQU "Y" echo press any key to continue...
if "%lsget%" EQU "Y" pause > nul
if "%lsget%" EQU "Y" echo noice >ls.aim
if exist "C:\Users\%username%\ThatTemp\BCG\DEBUG.dat" goto :DEBUG
cls
echo Warning: You have entered the debug zone!
timeout 1 /NOBREAK > nul
echo ---------------------------------------------------
timeout 1 /NOBREAK > nul
echo By pressing any key to continue, you agree to this:
timeout 1 /NOBREAK > nul
echo - Your saves will be marked as debug.
timeout 1 /NOBREAK > nul
echo - Occasional testing text will appear.
timeout 1 /NOBREAK > nul
echo - Other side effects may occur.
timeout 1 /NOBREAK > nul
echo ---------------------------------------------------
timeout 1 /NOBREAK > nul
echo Press any key to agree to these terms.
timeout 1 /NOBREAK > nul
echo Close out of boredcoding.bat to decline.
pause > nul
cd "C:\Users\%username%\ThatTemp\BCG\"
echo aw crap >DEBUG.dat
echo here we go again >>DEBUG.dat
goto :DEBUG

:iknowwhatyouredoing
cls
echo hey!
timeout 2 /NOBREAK > nul
echo i know what you're doing!
timeout 2 /NOBREAK > nul
echo you changed your save file to bring you to ":saveeditor"
timeout 3 /NOBREAK > nul
echo that's clever...
timeout 1 /NOBREAK > nul
goto :start

:DEBUG
@echo off
set isDev=Y
if exist "C:\Users\%username%\ThatTemp\BCG\olddebug.dat" cd "C:\Users\%username%\ThatTemp\BCG\"& del olddebug.dat
if not exist "C:\Users\%username%\ThatTemp\BCG\DEBUG.dat" cd "C:\Users\%username%\ThatTemp\BCG\"& echo nice try >DEBUG.dat
if "%alreadyknownyou%" EQU "Y" if not exist "C:\Users\%username%\ThatTemp\BCG\DEBUG.dat" if "%checkfordebugfix%" EQU "Y" goto :iknowwhatyouredoing
cls
echo DEBUG MENU %ver%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Press E to go back...
echo Press C to create a test crash log...
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Disable Debug
echo Variables
echo Save Editor
echo Achievement Editor
echo Go To
if not exist "C:\Users\%username%\ThatTemp\BCG\minigames.dat" echo Minigames Enable
echo -------------------------------------------------------
echo Type the first letter of an option to use it.
choice /C EDGCLSVAM /N
if not exist "C:\Users\%username%\ThatTemp\BCG\minigames.dat" if /I "%errorlevel%" EQU "9" cd "C:\Users\%username%\ThatTemp\BCG\"& echo cheater >minigames.dat& goto :DEBUG

if /I "%errorlevel%" EQU "1" goto :start
if /I "%errorlevel%" EQU "2" goto :disabledebug
if /I "%errorlevel%" EQU "3" goto :gotodebug
if /I "%errorlevel%" EQU "4" goto :selfcrash
if /I "%errorlevel%" EQU "5" goto :levelselect
if /I "%errorlevel%" EQU "6" goto :saveeditorlevelask
if /I "%errorlevel%" EQU "7" goto :variablelist
if /I "%errorlevel%" EQU "8" goto :achievementedit
cls
echo not an option.
timeout 2 /NOBREAK > nul
goto :DEBUG

:disabledebug
cls
echo Disabling...
timeout 2 /NOBREAK > nul
set isDev=N
cd "C:\Users\%username%\ThatTemp\BCG\"
del DEBUG.dat
echo welp, hes gone. >olddebug.dat
cls
echo Disabled...
echo ---------------------------
echo press any key to go back...
pause > nul
goto :start

:gotodebug
set guessnumberfrom=DEBUG
cls
echo Type the location you want to go to:
echo Type "E" to go back...
echo DO NOT ADD ":"s AT THE START!
echo (example: start levelselect)
set /P option=
if /I "%option%" EQU "E" goto :DEBUG
goto :%option%
cls
echo Error.
pause
goto :DEBUG

:achievementedit
rem DONT FORGET TO UPDATE THE DEBUG MENU WHEN ADDING AN ACHIEVEMENT!
rem wait, this IS the debug achievements!
cd "C:\Users\%username%\ThatTemp\BCG\"
echo cheater cheater pumpkin eater > cheater.dat
cls
echo DEBUG BUILD
echo ACHIEVEMENT EDITOR
echo PRESS E TO GO BACK
echo --------------------------------------------------------------------------------
if exist "C:\Users\%username%\ThatTemp\BCG\alpha.aim" echo Unlocked: Alpha Tester         - Played the game during its alpha phase.
if not exist "C:\Users\%username%\ThatTemp\BCG\alpha.aim" echo Locked: Alpha Tester           - Played the game during its alpha phase.
if exist "C:\Users\%username%\ThatTemp\BCG\skull.aim" echo Unlocked: Skull Crusher MASTER - During a fight, land skull crusher FIRST TRY!
if not exist "C:\Users\%username%\ThatTemp\BCG\skull.aim" echo Locked: Skull Crusher MASTER   - During a fight, land skull crusher FIRST TRY!
if exist "C:\Users\%username%\ThatTemp\BCG\ls.aim" echo Unlocked: DEBUG FINDER         - Find the DEBUG menu.
if not exist "C:\Users\%username%\ThatTemp\BCG\ls.aim" echo Locked: DEBUG FINDER         - Find the DEBUG menu.
if exist "C:\Users\%username%\ThatTemp\BCG\math.aim" echo Unlocked: Mathematician        - Get every question right during the math quiz!
if not exist "C:\Users\%username%\ThatTemp\BCG\math.aim" echo Locked: Mathematician          - Get every question right during the math quiz!
if exist "C:\Users\%username%\ThatTemp\BCG\feel.aim" echo Unlocked: Another Feeling      - Find the secret code for the feelings question.
if not exist "C:\Users\%username%\ThatTemp\BCG\feel.aim" echo Locked: Another Feeling        - Find the secret code for the feelings question.
if exist "C:\Users\%username%\ThatTemp\BCG\annoy.aim" echo Unlocked: Not A Color!!!         - Annoy BCG while picking a color.
if not exist "C:\Users\%username%\ThatTemp\BCG\annoy.aim" echo Locked: Not A Color!!!         - Annoy BCG while picking a color.
echo --------------------------------------------------------------------------------
echo Type the first word of the name of the achievement to toggle it.
set /P option=
if /I "%option%" EQU "E" goto :DEBUG
if /I "%option%" EQU "Alpha" set toggleach=ALPHA& goto :toggleachievement
if /I "%option%" EQU "Skull" set toggleach=SKULL& goto :toggleachievement
if /I "%option%" EQU "Debug" set toggleach=DEBUG& goto :toggleachievement
if /I "%option%" EQU "MATH" set toggleach=MATH& goto :toggleachievement
if /I "%option%" EQU "Mathematician" set toggleach=MATH& goto :toggleachievement
if /I "%option%" EQU "ANOTHER" set toggleach=ANOT& goto :toggleachievement
if /I "%option%" EQU "Not" set toggleach=YES& goto :toggleachievement
cls
echo that's not an achievement.
echo ---------------------------
echo press any key to go back...
pause > nul
goto :achievementedit

:toggleachievement

if /I "%toggleach%" EQU "DEBUG" echo no.
if /I "%toggleach%" EQU "DEBUG" timeout 2 /NOBREAK > nul

if /I "%toggleach%" EQU "ALPHA" if not exist "C:\Users\%username%\ThatTemp\BCG\alpha.aim" set alphain=Y&cd "C:\Users\%username%\ThatTemp\BCG\"& echo cheat >alpha.aim
if /I "%toggleach%" EQU "ALPHA" if exist "C:\Users\%username%\ThatTemp\BCG\alpha.aim" if not "%alphain%" EQU "Y" cd "C:\Users\%username%\ThatTemp\BCG\"& del alpha.aim

if /I "%toggleach%" EQU "SKULL" if not exist "C:\Users\%username%\ThatTemp\BCG\skull.aim" set skullin=Y&cd "C:\Users\%username%\ThatTemp\BCG\"& echo cheat >skull.aim
if /I "%toggleach%" EQU "SKULL" if exist "C:\Users\%username%\ThatTemp\BCG\skull.aim" if not "%skullin%" EQU "Y" cd "C:\Users\%username%\ThatTemp\BCG\"& del skull.aim

if /I "%toggleach%" EQU "MATH" if not exist "C:\Users\%username%\ThatTemp\BCG\math.aim" set mathin=Y& cd "C:\Users\%username%\ThatTemp\BCG\"& echo cheater >math.aim
if /I "%toggleach%" EQU "MATH" if exist "C:\Users\%username%\ThatTemp\BCG\math.aim" if not "%mathin%" EQU "Y" cd "C:\Users\%username%\ThatTemp\BCG\"& del math.aim

if /I "%toggleach%" EQU "ANOT" if not exist "C:\Users\%username%\ThatTemp\BCG\feel.aim" set anotin=Y& cd "C:\Users\%username%\ThatTemp\BCG\"& echo cheat >feel.aim
if /I "%toggleach%" EQU "ANOT" if exist "C:\Users\%username%\ThatTemp\BCG\feel.aim" if not "%anotin%" EQU "Y" cd "C:\Users\%username%\ThatTemp\BCG\"& del feel.aim

if /I "%toggleach%" EQU "YES" if not exist "C:\Users\%username%\ThatTemp\BCG\annoy.aim" set yesin=Y& cd "C:\Users\%username%\ThatTemp\BCG\"& echo cheat >annoy.aim
if /I "%toggleach%" EQU "YES" if exist "C:\Users\%username%\ThatTemp\BCG\annoy.aim" if not "%yesin%" EQU "Y" cd "C:\Users\%username%\ThatTemp\BCG\"& del annoy.aim
set alphain=N
set skullin=N
set mathin=N
set anotin=N
set yesin=N
cls
echo achievement toggled.
echo ---------------------------------
echo press any key to go back...
pause > nul
goto :achievementedit

:E
cls
echo you will never, EVER be able to get here without editing the code or save files...
echo ----------------------------------------------------------------------------------
echo press any key to go back to start...
pause > nul
goto :start

:saveeditor
cls
echo oops, an error occured accessing old data...
echo --------------------------------------------
echo press any key to ignore...
pause > nul
set checkfordebugfix=Y
goto :DEBUG

:saveeditorlevelask
cls
echo SAVE EDITOR LEVEL ASK %ver%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo *with great power, comes great responsibility.*
echo Press E to go back...
echo Choose the save file to edit.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo save1
echo save2
echo save3
echo -------------------------------------------------------
echo Type the number of the save file to edit it.
choice /C 123E /N
if "%errorlevel%" EQU "1" set leveledit=one& goto :saveeditoredit
if "%errorlevel%" EQU "2" set leveledit=two& goto :saveeditoredit
if "%errorlevel%" EQU "3" set leveledit=three& goto :saveeditoredit
rem .
if "%errorlevel%" EQU "4" goto :DEBUG
cls
echo not an option.
timeout 2 /NOBREAK > nul
goto :saveeditorlevelask

:saveeditoredit
cls
echo SAVE EDITOR %ver%
echo *with great power, comes great responsibility.*
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo More Commands:
echo Press E to go back...
echo -------------------------------------------------------
echo Save Documentation:
echo A save file is programmed to go wherever the file
echo points it to, so technically, you COULD go literally
echo anywhere, it doesn't have to be a level!
echo -------------------------------------------------------
echo Type what to overwrite the save with.
set /P option=
if /I "%option%" EQU "E" goto :DEBUG
echo -------------------------------------------------------
echo Writing "%option%" to the save file.
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\save%leveledit%\"
rem yes, i know that arbitrary code execution (ace) is possible here.
echo %option% >save.dat
cls
echo Done.
timeout 2 /NOBREAK > nul
cls
echo FRIENDLY SAVE EDITOR %ver%
echo *with great power, comes great responsibility.*
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo More Commands:
echo Press E to go back...
echo -------------------------------------------------------
echo Friendly Save Documentation:
echo When the "Choose Save File" screen appears, it pulls
echo the name of the save file, which is the friendly save!
echo .
echo tl;dr: this is the name of the save file
echo -------------------------------------------------------
echo Type what to overwrite the save with.
set /P option=
if /I "%option%" EQU "E" goto :DEBUG
echo -------------------------------------------------------
echo Writing "%option%" to the friendly save file...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\save%leveledit%\"
rem yes, i know that arbitrary code execution (ace) is possible here.
echo %option% >friendlysave.dat
cls
echo Done.
echo ---------------------------
echo Press any key to go back...
pause > nul
goto :DEBUG

:variablelist
cls
echo VARIABLE MENU %ver%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Press E to go back...
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ver - %ver%
echo buildver - %buildver%
echo username - %username%
echo startfromone - %startfromone%
echo answerone - %answerone%
echo answertwo - %answertwo%
echo answerthree - %answerthree%
echo currentsave - %currentsave%
echo colorchoice - %colorchoice%
echo colorannoy - %colorannoy%
echo errorlevel - %errorlevel%
echo -------------------------------------------------------
echo Press any key to go back...
pause > nul
goto :DEBUG

:levelselect
cls
echo sorry, but the level select screen has been discontinued.
echo please use the goto debug feature instead.
echo ---------------------------------------------------------
echo press any key to go back...
pause > nul
goto :DEBUG

:liveparrot
title he he he
curl parrot.live
goto :start

:createsavedata
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelone >save.dat
echo Level One >friendlysave.dat
echo Save Data Created...
timeout 1 /NOBREAK > nul
goto :loadgame

:loadgametroll
cls
echo NO ESCAPE...
timeout 2 /NOBREAK > nul
exit

:loadgame
if "%colorannoydeleted%" EQU "Y" goto :loadgametroll
cls
echo Checking for save...
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
if not exist "C:\Users\%username%\ThatTemp\BCG\%currentsave%\save.dat" echo Save Data not detected! & goto :createsavedata
if exist "C:\Users\%username%\ThatTemp\BCG\%currentsave%\save.dat" echo Save Data detected!
rem yes, i know i just entered that directory, but im paranoid, okay?!
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%"
rem below is a way to load data into a variable!
set /P level=<save.dat
echo Loading...
timeout 1 /NOBREAK > nul
goto :%level%

:levelone
cls
echo This game uses an autosave feature.
echo When you see the text "Saving Data...", do NOT close out of the program.
timeout 5 /NOBREAK > nul
cls
echo unfinished, wow, what a great start to the game!
timeout 3 /NOBREAK > nul
echo IS WHAT I WOULD PUT FOR A DEV BUILD!
rem EXCEPT I LITERALLY DO PUT THAT FOR ALPHA RELEASE BUILDS!
timeout 2 /NOBREAK > nul
cls
echo yeah this game is pretty weird and crazy, so dont expect lore of absolutely any kind.
timeout 3 /NOBREAK > nul
echo oh yeah, i can also do some pretty cool stuff
timeout 2 /NOBREAK > nul
echo like this:
timeout 1 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\levelonecrazy.vbs" goto :levelonecrazyfail
"C:\Users\%username%\ThatTemp\BCG\levelonecrazy.vbs"
cls
echo yep, i can do stuff like that!
timeout 2 /NOBREAK > nul
echo so yeah, i dont know what else to put here.
echo how about you help me?
timeout 3 /NOBREAK > nul
cls
echo type in something, and ill repeat it!
set /P option=
rem i use brackets here, because im pretty sure you can just add symbols and crash the game.
echo "%option%" - %username%.
timeout 2 /NOBREAK > nul
echo oh yeah, i know your name, %username%.
timeout 2 /NOBREAK > nul
echo this wasn't special made for you, i just know it from the system.
timeout 3 /NOBREAK > nul
echo hey system?
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\leveloneasksys.vbs" goto :leveloneasksysfail
"C:\Users\%username%\ThatTemp\BCG\leveloneasksys.vbs"
echo could you possibly tell me the cmd version?
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\leveloneaskcmdver.vbs" goto :leveloneaskcmdver
"C:\Users\%username%\ThatTemp\BCG\leveloneaskcmdver.vbs"
echo oh, i guess you're right.
timeout 2 /NOBREAK > nul
echo i am cmd version:
timeout 2 /NOBREAK > nul
ver
timeout 3 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\leveloneafv.vbs" goto :leveloneafv
"C:\Users\%username%\ThatTemp\BCG\leveloneafv.vbs"
cls
echo well, i guess that's it folks!
timeout 2 /NOBREAK > nul
echo say it with me!
timeout 2 /NOBREAK > nul
cls
echo see you next time!
if not exist "C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs" goto :leveloneend
"C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs"
echo press any key to progress...
pause > nul
cls
echo level one finished!
timeout 3 /NOBREAK > nul
echo score: -1
timeout 1 /NOBREAK > nul
echo time: idk man
timeout 1 /NOBREAK > nul
echo overall: S+
timeout 2 /NOBREAK > nul
echo .
echo press any key to progress...
pause > nul
cls
echo Saving Data...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo leveltwo>save.dat
echo Level Two >friendlysave.dat
cls
echo Saving Data...
echo Saved.
timeout 1 /NOBREAK > nul
echo Returning to title screen...
timeout 3 /NOBREAK > nul
set startfromone=Y
goto :start

:leveltwo
set timestarttwo=%time%
cls
echo well, here we are again.
timeout 2 /NOBREAK > nul
echo just the two of us, %username%.
timeout 2 /NOBREAK > nul
echo tell me, what brought you here?
timeout 2 /NOBREAK > nul
echo *type your answer*
set /P option=
echo ah, so "%option%" brought you here?
timeout 2 /NOBREAK > nul
echo i really hope you did not take that out of context and make me say something dumb.
timeout 3 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\leveltwoafe.vbs" goto :leveltwoafe
"C:\Users\%username%\ThatTemp\BCG\leveltwoafe.vbs"
echo yeah, good point.
timeout 2 /NOBREAK > nul
echo hey windows? how do i open a web browser?
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\leveltwoweb.vbs" goto :leveltwoweb
"C:\Users\%username%\ThatTemp\BCG\leveltwoweb.vbs"
cls
echo okay.
timeout 2 /NOBREAK > nul
rem this opens microsoft edge, with a google search already typed in!
rem and this also exposes me, because it says "client=firefox" lol
start microsoft-edge:"https://www.google.com/search?client=firefox-b-1-d&q=how+do+you+open+a+web+browser+in+cmd"
echo press any key to progress...
pause > nul
cls
echo okay.
if not exist "C:\Users\%username%\ThatTemp\BCG\leveltwoweblol.vbs" goto :leveltwoweblol
"C:\Users\%username%\ThatTemp\BCG\leveltwoweblol.vbs"
echo wait a second...
echo ohh... nice one!
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\leveltwowebgog.vbs" goto :leveltwowebgog
"C:\Users\%username%\ThatTemp\BCG\leveltwowebgog.vbs"
echo the exact place i was trying to get to!
timeout 3 /NOBREAK > nul
cls
echo hey %username%, what's your favorite food?
timeout 1 /NOBREAK > nul
echo *type your answer*!
set /P option=
echo "%option%" is your favorite food huh?
timeout 2 /NOBREAK > nul
echo yeah, not falling for that again!
timeout 2 /NOBREAK > nul
cls
echo wanna know a pretty cool fact, %username%?
timeout 2 /NOBREAK > nul
echo I can tell anything about what you've done in this game!
timeout 3 /NOBREAK > nul
if "%startfromone%" EQU "Y" echo For example, you've been playing nonstop since level one!
if "%startfromone%" EQU "N" echo For example, after the first level, you quit!
timeout 3 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo yupperoni > leveltwoclose.dat
echo leveltwofunnypart > save.dat
cls
echo Wanna test me? I DARE YOU! Close the game RIGHT NOW, and see if that shows up.
echo press any key to progress...
pause > nul
del leveltwoclose.dat
goto :leveltwofunnypart

rem the trick here is that the game sets up a file and saves. if the file is still there, it knows you closed it!

:leveltwofunnypart
cls
if exist "C:\Users\%username%\ThatTemp\BCG\leveltwoclose.dat" echo hey, you closed it!
if not exist "C:\Users\%username%\ThatTemp\BCG\leveltwoclose.dat" echo hmmm, i guess you didn't close it then.
timeout 3 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
del leveltwoclose.dat
cls
echo hold on, let me get rid of the thing that let me remember...
timeout 2 /NOBREAK > nul
echo well, if you were to close out NOW, it would say that you never closed it!
timeout 3 /NOBREAK > nul
echo the amount of people who just closed is insane...
timeout 3 /NOBREAK > nul
echo insanely low. this isn't gonna be that popular, so it would be a huge honor if you shared this with your friends!
rem ^ promo 100%
timeout 4 /NOBREAK > nul
echo hey, did you ever see any error handling of mine?
timeout 3 /NOBREAK > nul
echo if you wanna try it, move all of the files out of "C:\Users\%username%\ThatTemp\BCG\", but that will break the game, lol.
timeout 5 /NOBREAK > nul
echo dont do it.
timeout 1 /NOBREAK > nul
echo anyway, did you know this is the 650th line of code? 
rem and as of writing this line of code, its actually the 815th.
timeout 2 /NOBREAK > nul
echo that will probably change someday, as i add more stuff later on.
timeout 3 /NOBREAK > nul
echo but for such small gameplay you've had so far, that's pretty sad.
timeout 3 /NOBREAK > nul
echo all of those lines are handwritten, and games take a long time to make.
timeout 3 /NOBREAK > nul
cls
echo well in other news, i should probably ask the system how its doing.
timeout 2 /NOBREAK > nul
echo hey system?
if not exist "C:\Users\%username%\ThatTemp\BCG\leveloneasksys.vbs" goto :leveloneasksysfail
"C:\Users\%username%\ThatTemp\BCG\leveloneasksys.vbs"
echo how are ya doin?
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\leveltwofeel.vbs" goto :leveltwofeelfail
"C:\Users\%username%\ThatTemp\BCG\leveltwofeel.vbs"
echo that's great to hear!
timeout 2 /NOBREAK > nul
cls
echo well, even thought its been pretty short, say it with me!
timeout 3 /NOBREAK > nul
cls
echo see you next time!
if not exist "C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs" goto :leveloneend
"C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs"
rem never told ya, but those lines above this, that's what i need to make one of those windows popups.
timeout 1 /NOBREAK > nul
cls
echo level two finished!
timeout 3 /NOBREAK > nul
echo score: help
timeout 1 /NOBREAK > nul
echo time: started at %timestarttwo%
timeout 1 /NOBREAK > nul
echo that is definitely glitched if you closed earlier lol
timeout 1 /NOBREAK > nul
echo overall: F----------
timeout 2 /NOBREAK > nul
echo press any key to advance...
pause > nul
cls
echo Saving Data...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
rem without spaces, this would just save "ECHO is off..." to the file!
rem i had to learn that the hard way...
echo levelthree >save.dat
echo Level Three >friendlysave.dat
cls
echo Saving Data...
echo Saved.
timeout 1 /NOBREAK > nul
echo Returning to title screen...
timeout 3 /NOBREAK > nul
goto :start

:levelthree
cls
echo yeah, this is unfinished, what do you expect?
echo i've only been working on this for like 4 hours so far
timeout 2 /NOBREAK > nul
echo press any key to go back...
pause > nul
cls
echo JKKKKKKKK
timeout 3 /NOBREAK > nul
echo well anyway, welcome to level 3!
timeout 2 /NOBREAK > nul
echo im gonna make this one way longer than the others, so hang on tight!
timeout 3 /NOBREAK > nul
echo oh yeah, and more complicated, i like me a challenge.
timeout 3 /NOBREAK > nul
echo press any key to advance...
pause > nul
cls
echo welcome to...
timeout 2 /NOBREAK > nul
echo LEVEL THREE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
timeout 3 /NOBREAK > nul
echo fun fact, i can spam as many windows as i want!
timeout 2 /NOBREAK > nul
echo want proof?
timeout 2 /NOBREAK > nul
echo well that's too bad!
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs" goto :levelthreememefail
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
start cmd /c "C:\Users\%username%\ThatTemp\BCG\levelthreememe.vbs"
echo press any key to advance...
pause > nul
echo wow, you don't care after that?
timeout 3 /NOBREAK > nul
echo kidding, you probably did care.
timeout 2 /NOBREAK > nul
echo i can actually change the color,
timeout 2 /NOBREAK > nul
echo seizure warning!
timeout 4 /NOBREAK > nul
color 01
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 
color 08
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 
color 09
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 
color 01
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 02
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 03
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 04
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 05
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 06
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 07
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 08
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color 09
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 
color 01
echo color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color color 

color %colorchoice%
cls
echo hah!
timeout 2 /NOBREAK > nul
echo depending on your computer, that either was in the snap of a finger, or after 5 minutes.
timeout 3 /NOBREAK > nul
echo that probably was in less than a snap of a finger, as computers nowadays are super speed!
timeout 1 /NOBREAK > nul
echo press any key to advance...
pause > nul
cls
echo have you used soundpad?
timeout 2 /NOBREAK > nul
echo wait, that was a dumb question.
timeout 2 /NOBREAK > nul
echo i can literally check.
timeout 2 /NOBREAK > nul
if exist "C:\Program Files (x86)\Steam\steamapps\common\Soundpad\" echo I can proudly say that you are a soundpad user!
if not exist "C:\Program Files (x86)\Steam\steamapps\common\Soundpad\" echo Well, you don't use soundpad.
timeout 3 /NOBREAK > nul
rem on older builds, i used to check for voicemod. it never worked, so i got rid of it.
echo well don't quote me on that, that's at least what the system tells me.
timeout 3 /NOBREAK > nul
echo hey, lets do a little math quiz!
timeout 2 /NOBREAK > nul
echo yes, i know, it sounds awful, but ill go easy on you!
timeout 1 /NOBREAK > nul
echo press any key to advance...
pause > nul
goto :levelthreeaskmath

:levelthreeaskmath
cls
echo remember to type the number of the answer, instead of the answer!
echo (its a multiple choice quiz)
echo press any key to advance... again...
pause > nul
cls
if "%isDev%" EQU "Y" echo the answer is 1
echo whats 8 + 4?
echo ------------------------------------------
echo 1. 12                               2.  14
echo 3. 10                               4.  19
echo ------------------------------------------
echo type the number of the answer!
echo ------------------------------------------
set /P option=
cls
if "%option%" EQU "1" echo Correct!& set answerone=Y
if not "%option%" EQU "1" echo incorrect.& set answerone=N
timeout 3 /NOBREAK > nul
cls
if "%isDev%" EQU "Y" echo the answer is 3
echo whats 9 + 9?
echo ------------------------------------------
echo 1. 16                               2.  17
echo 3. 18                               4.  15
echo ------------------------------------------
echo type the number of the answer!
echo ------------------------------------------
set /P option=
cls
if "%option%" EQU "3" echo Correct!& set answertwo=Y
if not "%option%" EQU "3" echo incorrect.& set answertwo=N
timeout 3 /NOBREAK > nul
cls
if "%isDev%" EQU "Y" echo the answer is 3
echo whats 984 / 1?
echo ------------------------------------------
echo 1. 492                              2.   1
echo 3. 984                              4.  69
echo ------------------------------------------
echo type the number of the answer!
echo ------------------------------------------
set /P option=
cls
if "%option%" EQU "3" echo Correct!& set answerthree=Y
if not "%option%" EQU "3" echo incorrect.& set answerthree=N
timeout 3 /NOBREAK > nul
cls
echo okay enough of that, that's hard enough to code.
timeout 3 /NOBREAK > nul
echo well, you got these:
timeout 2 /NOBREAK > nul
echo Question one: %answerone%
timeout 1 /NOBREAK > nul
echo Question two: %answertwo%
timeout 1 /NOBREAK > nul
echo Question three: %answerthree%
timeout 3 /NOBREAK > nul
echo oh yeah, Y means you got it correct.
echo and N means you got it incorrect.
echo ================================================
echo press any key to advance...
pause > nul
cd "C:\Users\%username%\ThatTemp\BCG\"
if /I "%answerone%" EQU "Y" if /I "%answertwo%" EQU "Y" if /I "%answerthree%" EQU "Y" echo cool >math.aim
cls
echo well, you're probably bored, aren't you?
timeout 3 /NOBREAK > nul
echo its okay, i have an idea.
timeout 2 /NOBREAK > nul
echo lets battle!
timeout 2 /NOBREAK > nul
echo wait, i wanna autosave so we dont lose progress, okay?
timeout 3 /NOBREAK > nul
echo Saving Data...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelthreebattleloadcheck >save.dat
echo Level Three Battle >friendlysave.dat
rem if i were to save the data directly, it would save as "ECHO is off..."
rem hey, i mentioned that earlier!
if "%answerone%" EQU "Y" echo Y>answerone.dat
if "%answerone%" EQU "N" echo N>answerone.dat
if "%answertwo%" EQU "Y" echo Y>answertwo.dat
if "%answertwo%" EQU "N" echo N>answertwo.dat
if "%answerthree%" EQU "Y" echo Y>answerthree.dat
if "%answerthree%" EQU "N" echo N>answerthree.dat
cls
echo Saved...
timeout 2 /NOBREAK > nul
goto :levelthreebattle

:levelthreebattleload
rem example of loading: set /P level=<save.dat
set /P answerone=<answerone.dat
set /P answertwo=<answertwo.dat
set /P answerthree=<answerthree.dat
goto :levelthreebattle

:levelthreebattleloadcheck
cls
if exist "C:\Users\%username%\ThatTemp\BCG\answerone.dat" goto :levelthreebattleload
goto :levelthreebattle

:levelthreebattle
cls
echo BCG (BOREDCODING) wants to battle!
timeout 2 /NOBREAK > nul
set /A mhp=100
set /A yhp=100
set battleend=battleendthree
set firsttimeskull=Y
set forfeitbattle=N
goto :battleloop

rem below is code for getting the skull crusher achievement!
:checkforskull
if "%firsttimeskull%" EQU "Y" cd "C:\Users\%username%\ThatTemp\BCG\"
if "%firsttimeskull%" EQU "Y" echo OMGYOUDIDIT>skull.aim
if "%firsttimeskull%" EQU "Y" cls & echo Achievement Unlocked: Skull Crusher MASTER - Land Skull Crusher FIRST TRY!
if "%firsttimeskull%" EQU "N" set checkforskull=N& goto :battleloop
timeout 4 /NOBREAK > nul
set firsttimeskull=N
set checkforskull=N
goto :battleloop

:battleloop
if "%checkforskull%" EQU "Y" goto :checkforskull
if "%forfeitbattle%" EQU "Y" set winbattle=F& goto :%battleend%
if %mhp% LSS 1 set winbattle=Y& goto :%battleend%
if %yhp% LSS 1 set winbattle=N& goto :%battleend%
if %yhp% GTR 100 set /A yhp=100
if %mhp% GTR 100 set /A mhp=100
cls
echo Press E to forfeit the match.
echo ----------------------------------------------------------
echo [Your HP: %yhp%/100]
echo [BCGs HP: %mhp%/100]
echo .
echo .
echo .
echo .
echo .
echo [Attacks:]
echo [Lethal Grab (10HP)] [Skull Crusher (1/1638 chance, 100HP)]
echo [Heal (+15 HP)]      [Baby Punch (1 HP)]
echo -----------------------------------------------------------
echo Type the first letter of your attack to use it!
choice /C LHBSEP /N
cls
if /I "%errorlevel%" EQU "1" goto :lethalgrabfight
if /I "%errorlevel%" EQU "2" goto :healfight
if /I "%errorlevel%" EQU "3" goto :babypunchfight
if /I "%errorlevel%" EQU "4" goto :skullcrusherfight
if /I "%errorlevel%" EQU "5" set forfeitbattle=Y& goto :battleloop
if /I "%errorlevel%" EQU "6" set /A mhp=0& goto :battleloop
cls
rem do you think this part is unfair?
echo You chose a non-existent attack.
timeout 2 /NOBREAK > nul
echo BCG uses this as a chance!
timeout 2 /NOBREAK > nul
set atkrng=%random%
if %atkrng% LSS 2000 echo A critical attack! 15 damage taken. & set /A yhp=%yhp%-15
if %atkrng% GTR 2000 echo A regular attack! 10 damage taken. & set /A yhp=%yhp%-10
if %atkrng% EQU 2000 echo Missed! 0 damage taken. (that was a 1 in 32767 chance.)
timeout 3 /NOBREAK > nul
goto :battleloop

:battleloopbcg
cls
set atkrng=%random%
echo BCG uses his chance to strike!
if %atkrng% LSS 1500 echo A critical attack! 30 damage taken. & set /A yhp=%yhp%-20
if %atkrng% GTR 1500 echo A regular attack! 10 damage taken. & set /A yhp=%yhp%-10
if %atkrng% EQU 1500 echo Missed! 0 damage taken. (that was a 1 in 32767 chance.)
echo press any key to progress...
pause > nul
goto :battleloop

:healfight
cls
echo Sitting down, and catching your breath cools you down. Healed by 25 HP!
set /A yhp=%yhp%+25
echo press any key to progress...
pause > nul
echo BCG also heals! Healed by 10 HP.
set /A mhp=%mhp%+10
timeout 2 /NOBREAK > nul
goto :battleloopbcg

:skullcrusherfight
cls
set atkrng=%random%
if %atkrng% LSS 1000 echo HIT A 1 IN 1638 CHANCE! 100 DAMAGE DEALT.& set /A mhp=%mhp%-100& set checkforskull=Y
if %atkrng% LSS 1000 timeout 2 /NOBREAK > nul
if %atkrng% GTR 1000 echo Missed! 0 damage dealt.& set firsttimeskull=N
if %atkrng% EQU 1000 echo Missed! 0 damage dealt.& set firsttimeskull=N
echo press any key to progress...
pause > nul
rem uncomment the below if you want to force the achievement.
rem set checkforskull=Y& set firsttimeskull=Y
goto :battleloopbcg

:lethalgrabfight
cls
set atkrng=%random%
if %atkrng% LSS 2000 echo A critical attack! 20 damage dealt. & set /A mhp=%mhp%-20
if %atkrng% GTR 2000 echo A regular attack! 10 damage dealt. & set /A mhp=%mhp%-10
if %atkrng% EQU 2000 echo Missed! 0 damage dealt. (that was a 1 in 32767 chance.)
echo press any key to progress...
pause > nul
goto :battleloopbcg

:babypunchfight
cls
set atkrng=%random%
if %atkrng% LSS 2000 echo A critical attack! 5 damage dealt. & set /A mhp=%mhp%-5
if %atkrng% GTR 2000 echo A regular attack! 1 damage dealt. & set /A mhp=%mhp%-1
if %atkrng% EQU 2000 echo Missed! 0 damage dealt. (that was a 1 in 32767 chance.)
echo press any key to progress...
pause > nul
goto :battleloopbcg

:battleendthree
cls
if "%winbattle%" EQU "F" echo You lose by forfeit...
if "%winbattle%" EQU "Y" echo You win!
if "%winbattle%" EQU "N" echo You lose.
echo press any key to advance...
pause > nul
cls
echo wow, that took a lot out of me.
timeout 2 /NOBREAK > nul
if "%winbattle%" EQU "Y" echo congrats on winning!
if "%winbattle%" EQU "N" echo better luck next time.
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\levelthreefun.vbs" goto :levelthreefunfail
"C:\Users\%username%\ThatTemp\BCG\levelthreefun.vbs"
echo it sure was!
timeout 2 /NOBREAK > nul
echo well, we've officially made it past the 1000 lines of code part.
rem as of writing this, 1222 lines of code!
rem and as of writing this, its on line 1839!
timeout 3 /NOBREAK > nul
echo we've done a lot in this level, but i think it's time to end it.
timeout 3 /NOBREAK > nul
echo say it with me!
timeout 2 /NOBREAK > nul
cls
echo see you next time!
if not exist "C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs" goto :leveloneend
"C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs"
set /A threescore=0
if "%answerone%" EQU "Y" set /A threescore=%threescore%+50
if "%answertwo%" EQU "Y" set /A threescore=%threescore%+50
if "%answerthree%" EQU "Y" set /A threescore=%threescore%+50
if "%winbattle%" EQU "Y" set /A threescore=%threescore%+100
cls
echo level three finished!
timeout 2 /NOBREAK > nul
echo score: %threescore%
echo -----------------------------
if "%answerone%" EQU "Y" echo Got question 1 correct (+50)
if "%answertwo%" EQU "Y" echo Got question 2 correct (+50)
if "%answerthree%" EQU "Y" echo Got question 3 correct (+50)
if "%winbattle%" EQU "Y" echo Won the battle (+100)
echo -----------------------------
timeout 1 /NOBREAK > nul
echo time: bro stop asking me just use a freaking stopwatch
timeout 1 /NOBREAK > nul
if %threescore% GTR 0 if %threescore% LSS 51 echo rating: F-
if %threescore% GTR 51 if %threescore% LSS 101 echo rating: D+
if %threescore% GTR 101 if %threescore% LSS 151 echo rating: C+
if %threescore% GTR 151 if %threescore% LSS 201 echo rating: B
if %threescore% GTR 201 if %threescore% LSS 251 echo rating: A+
timeout 3 /NOBREAK > nul
echo press any key to advance!
pause > nul
rem i do this part incase someone's taking a screenshot.
rem who would, though?
echo do it again to really make sure!
pause > nul
cls
echo Saving Data...
timeout 3 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelfour >save.dat
echo Level Four >friendlysave.dat
cls
echo Saved.
timeout 2 /NOBREAK > nul
echo Returning to Title Screen...
timeout 2 /NOBREAK > nul
goto :start

:levelfourbattlestart
cls
echo BCG (BOREDCODING) wants to battle!
timeout 2 /NOBREAK > nul
set /A mhp=100
set /A yhp=100
set battleend=levelfourendbattle
set firsttimeskull=Y
set forfeitbattle=N
goto :battleloop

:levelfourendbattle
cls
echo wowiee, that was fun!
timeout 2 /NOBREAK > nul
goto :levelfourbattleended

:levelfour
cls
echo welcomeeeee
timeout 3 /NOBREAK > nul
echo i dont know what to put here lol
timeout 2 /NOBREAK > nul
echo wanna do another battle? this time, im not goin easy on ya.
timeout 3 /NOBREAK > nul
echo Yes                                                      No
echo *type your answer*
set /P option=
if /I "%option%" EQU "Yes" goto :levelfourbattlestart
if /I "%option%" EQU "Y" goto :levelfourbattlestart
cls
echo oh, uhhh i guess not.
timeout 2 /NOBREAK > nul
cls
goto :levelfourbattleended

:levelfourbattleended
rem a clean cut, no matter if you chose the battle or not!
echo well anyway, welcome to level...
timeout 2 /NOBREAK > nul
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
start cmd /c "@echo off & echo FOUR!!! pause & exit"
echo press any key to advance...
pause > nul
goto :fourask

:foursecretask
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\"
echo lol> feel.aim
cls
echo WELCOME!!!
timeout 2 /NOBREAK > nul
echo you just entered a secret code.
timeout 2 /NOBREAK > nul
echo good job on reading the code!
timeout 2 /NOBREAK > nul
echo unless i gave you the code, of course.
timeout 2 /NOBREAK > nul
echo okay back to the real game lol
timeout 3 /NOBREAK > nul
goto :fourask

:fourask
cls
echo so, how ya doin?
timeout 2 /NOBREAK > nul
echo *type your answer!*
set /P option=
if /I "%option%" EQU "good" echo that's great to hear!
if /I "%option%" EQU "great" echo that's great to hear!
if /I "%option%" EQU "excellent" echo that's great to hear!
if /I "%option%" EQU "Esquisite" echo weird word choice, but still great to hear!
if /I "%option%" EQU "happy" echo that's great to hear!
if /I "%option%" EQU "joyful" echo dope!
if /I "%option%" EQU "fine" echo okay!
rem .
rem haha, funny little codes you can type here.
if /I "%option%" EQU "Pneumonoultramicroscopicsilicovolcanoconiosis" echo yo wassap?& goto :foursecretask
if /I "%option%" EQU "dementa" echo hi guy i have dementa& goto :foursecretask
rem dementa actually originated from a joke i would tell to my friends!
rem .
if /I "%option%" EQU "sad" echo i'm sorry to hear that.
if /I "%option%" EQU "horrible" echo i'm sorry to hear that.
if /I "%option%" EQU "depressed" echo i'm sorry to hear that.
if /I "%option%" EQU "grieving" echo i'm sorry to hear that.
if /I "%option%" EQU "regreting" echo i'm sorry to hear that.
rem .
if /I "%option%" EQU "angry" echo oh.
if /I "%option%" EQU "furious" echo oh.
rem .
timeout 2 /NOBREAK > nul
echo if i just said nothing, my coder is too stupid to put in what you said.
timeout 3 /NOBREAK > nul
echo want it to be added? just ask him on the gamejolt page!
timeout 1 /NOBREAK > nul
echo press any key to progress...
pause > nul
cls
echo im going to check if you have stardew valley and if you do im opening it lol
timeout 3 /NOBREAK > nul
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Stardew Valley.exe" echo welp, im opening it.
if not exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Stardew Valley.exe" echo welp, you dont have it.
timeout 2 /NOBREAK > nul
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Stardew Valley.exe" "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Stardew Valley.exe"
echo press any key to advance...
pause > nul
cls
echo hey whats another funny game people might have?
timeout 3 /NOBREAK > nul
echo uhhh what about undertale..?
timeout 2 /NOBREAK > nul
if exist "C:\Program Files (x86)\Steam\steamapps\common\Undertale\UNDERTALE.exe" echo LETS GOOOO I CAN OPEN STUFF
if not exist "C:\Program Files (x86)\Steam\steamapps\common\Undertale\UNDERTALE.exe" echo aww man, you dont have it.
timeout 2 /NOBREAK > nul
if exist "C:\Program Files (x86)\Steam\steamapps\common\Undertale\UNDERTALE.exe" "C:\Program Files (x86)\Steam\steamapps\common\Undertale\UNDERTALE.exe"
echo press any key to advance...
pause > nul
cls
echo well i don't know what to do next.
timeout 2 /NOBREAK > nul
echo wait, do you have minecraft java?
timeout 2 /NOBREAK > nul
rem AINT NO WAY LOL
rem check the earlier builds, i accidentally made the username mine lol
if exist "C:\Users\%username%\AppData\Roaming\.minecraft" echo YOU DO! WAHOOOO
if not exist "C:\Users\%username%\AppData\Roaming\.minecraft" echo welp, ya dont.
timeout 2 /NOBREAK > nul
echo i wanna end it here, since it's been a while irl.
timeout 3 /NOBREAK > nul
echo but i know it's only been a little bit for you, so ill wait.
timeout 3 /NOBREAK > nul
echo isn't this fun?
timeout 2 /NOBREAK > nul
echo well i really hope it is for you.
timeout 2 /NOBREAK > nul
echo what's your fastest typing speed?
timeout 2 /NOBREAK > nul
echo mines 116wpm, with 100% accuracy.
timeout 2 /NOBREAK > nul
echo that's only while coding this tho.
timeout 2 /NOBREAK > nul
echo here, ill show you my monkeytype account.
timeout 3 /NOBREAK > nul
start microsoft-edge:"https://monkeytype.com/profile/scrambled_egg1"
echo press any key to advance...
pause > nul
rem i use Visual Studio Code to code! i used to use Sublime Text!
cls
echo what's your favorite song?
set /P option=
echo huh, never knew you liked "%option%"!
timeout 3 /NOBREAK > nul
echo well, what's next?
timeout 2 /NOBREAK > nul
echo now, as of typing this.
timeout 2 /NOBREAK > nul
echo it's my channels 3rd birthday!
timeout 2 /NOBREAK > nul
echo well, im glad you're playing this game.
timeout 3 /NOBREAK > nul
echo thank you.
timeout 5 /NOBREAK > nul
cls
echo see you next time.
timeout 2 /NOBREAK > nul
cls
echo level four finished!
timeout 3 /NOBREAK > nul
echo score: potato
timeout 1 /NOBREAK > nul
rem potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato potato
echo time: potato
timeout 1 /NOBREAK > nul
echo overall: potato
timeout 2 /NOBREAK > nul
echo press any key to advance...
pause > nul
cls
echo Saving Data...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelfive >save.dat
echo Level Five >friendlysave.dat
cls
echo Saving Data...
echo Saved.
timeout 1 /NOBREAK > nul
echo Returning to title screen...
timeout 3 /NOBREAK > nul
goto :start

:levelfive
rem level five, no more comments! (maybe)
cls
echo man, i wonder when this game is going to get into beta...
timeout 3 /NOBREAK > nul
echo oh yeah, we've reached the 2,000 lines of code part!
timeout 3 /NOBREAK > nul
echo fun fact: there's a place where you can play pre-releases of this game now!
timeout 3 /NOBREAK > nul
echo yes, you can play versions pretty much before they're fully released and tested!
timeout 3 /NOBREAK > nul
echo want me to pull up the web page?
echo Yes                           No
set /P option=
if /I "%option%" EQU "Y" set wantedSnap=Y& start microsoft-edge:"https://gamejolt.com/games/bcgpre/929613"
if /I "%option%" EQU "Yes" set wantedSnap=Y& start microsoft-edge:"https://gamejolt.com/games/bcgpre/929613"
if /I "%option%" EQU "No" set wantedSnap=N
if /I "%option%" EQU "N" set wantedSnap=N
if "%wantedSnap%" EQU "N" echo oh, ok.
if "%wantedSnap%" EQU "Y" echo well, there ya go!
echo ----------------------------------------------------------------------------------
echo press any key to advance...
pause > nul
cls
echo well, we've come a long ways, you're already on level five!
timeout 2 /NOBREAK > nul
echo lets see here...
timeout 2 > NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\cheater.dat" echo okay, you probably haven't cheated your achievements...
if exist "C:\Users\%username%\ThatTemp\BCG\cheater.dat" echo okay, you probably have cheated your achievements...
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\math.aim" echo huh, it seems like you didn't pass the math quiz...
if exist "C:\Users\%username%\ThatTemp\BCG\math.aim" echo huh, it seems like you're an expert at simple math...
timeout 2 /NOBREAK > nul
if not exist "C:\Users\%username%\ThatTemp\BCG\ls.aim" echo well, it doesn't seem like you've found the debug menu...
if exist "C:\Users\%username%\ThatTemp\BCG\ls.aim" echo seems like you dug around and found the debug menu...
timeout 2 /NOBREAK > nul
echo OH SHOOT!
timeout 1 /NOBREAK > nul
echo I HAVEN'T TALKED TO WINDOWS SINCE LEVEL THREE!
timeout 1 /NOBREAK > nul
echo HOLD ON...
timeout 3 /NOBREAK > nul
rem no more error handling = less unnecessary work
"C:\Users\%username%\ThatTemp\BCG\levelfiveoh.vbs"
echo sorry bro, i haven't talked to you in forever.
timeout 2 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelfiveitsok.vbs"
echo fr?
timeout 1 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelfiveitsokfr.vbs"
"C:\Users\%username%\ThatTemp\BCG\levelfivenerdtalk.vbs"
echo didn't know what any of that meant, but okay!
echo press any key to advance...
pause > nul
goto :levelfiverockask

:levelfiverockask
cls
echo hey, wanna play rock paper scissors?
echo Yes                               No
set /P option=
if /I "%option%" EQU "Y" goto :rockpaperscissorsplay
if /I "%option%" EQU "Yes" goto :rockpaperscissorsplay
if /I "%option%" EQU "No" set playedrock=N& goto :levelfiverockdone
if /I "%option%" EQU "N" set playedrock=N& goto :levelfiverockdone
cls
echo that's not an option...
timeout 2 /NOBREAK > nul
goto :levelfiverockask

:rockpaperscissorsplay
cls
if "%isDev%" EQU "Y" echo What beats rock?
echo Choose your option:
echo ---------------------------------------------
echo Rock
echo Paper
echo Scissors
echo ---------------------------------------------
echo Type the first letter of an option to use it!
echo Pressing nothing will choose Rock.
set /P option=
rem I choose rock here!
set rockchoiceonewin=S
if /I "%option%" EQU "R" set rockchoiceonewin=N
if /I "%option%" EQU "P" set rockchoiceonewin=Y
if /I "%option%" EQU "S" set rockchoiceonewin=N
if "%rockchoiceonewin%" EQU "S" set rockchoiceonewin=N
cls
echo Rock,
timeout 1 /NOBREAK > nul
echo Paper,
timeout 1 /NOBREAK > nul
echo Scissors,
timeout 1 /NOBREAK > nul
echo SHOOT!
timeout 2 /NOBREAK > nul
cls
if "%rockchoiceonewin%" EQU "Y" echo You win!
if "%rockchoiceonewin%" EQU "N" echo You lost.
timeout 2 /NOBREAK > nul
cls
if "%isDev%" EQU "Y" echo What beats scissors?
echo Choose your option:
echo ---------------------------------------------
echo Rock
echo Paper
echo Scissors
echo ---------------------------------------------
echo Type the first letter of an option to use it!
echo Pressing nothing will choose Rock.
set /P option=
rem I choose scissors here!
set rockchoicetwowin=S
if /I "%option%" EQU "R" set rockchoicetwowin=Y
if /I "%option%" EQU "P" set rockchoicetwowin=N
if /I "%option%" EQU "S" set rockchoicetwowin=N
if "%rockchoicetwowin%" EQU "S" set rockchoicetwowin=Y
cls
echo Rock,
timeout 1 /NOBREAK > nul
echo Paper,
timeout 1 /NOBREAK > nul
echo Scissors,
timeout 1 /NOBREAK > nul
echo SHOOT!
timeout 2 /NOBREAK > nul
cls
if "%rockchoicetwowin%" EQU "Y" echo You win!
if "%rockchoicetwowin%" EQU "N" echo You lost.
timeout 2 /NOBREAK > nul
cls
if "%isDev%" EQU "Y" echo What beats paper?
echo Choose your option:
echo ---------------------------------------------
echo Rock
echo Paper
echo Scissors
echo ---------------------------------------------
echo Type the first letter of an option to use it!
echo Pressing nothing will choose Rock.
set /P option=
rem I choose scissors here!
set rockchoicethreewin=S
if /I "%option%" EQU "R" set rockchoicethreewin=N
if /I "%option%" EQU "P" set rockchoicethreewin=N
if /I "%option%" EQU "S" set rockchoicethreewin=Y
if "%rockchoicethreewin%" EQU "S" set rockchoicethreewin=Y
cls
echo Rock,
timeout 1 /NOBREAK > nul
echo Paper,
timeout 1 /NOBREAK > nul
echo Scissors,
timeout 1 /NOBREAK > nul
echo SHOOT!
timeout 2 /NOBREAK > nul
cls
if "%rockchoicethreewin%" EQU "Y" echo You win!
if "%rockchoicethreewin%" EQU "N" echo You lost.
timeout 2 /NOBREAK > nul
set playedrock=Y
goto :levelfiverockdone

:levelfiverockdone
cls
if "%playedrock%" EQU "N" echo oh, well that's okay.
if "%playedrock%" EQU "Y" echo man, that was fun!
timeout 2 /NOBREAK > nul
echo well, even though its been pretty short, say it with me!
timeout 3 /NOBREAK > nul
cls
echo see you next time!
"C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs"
echo ---------------------------
echo press any key to advance...
pause > nul
cls
echo level five finished!
timeout 2 /NOBREAK > nul
echo no statistics here.
timeout 1 /NOBREAK > nul
echo ------------------------------
echo press any key to finish...
pause > nul
cls
echo Saving Data...
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelsix>save.dat
echo Level Six >friendlysave.dat
cls
echo Saved.
timeout 1 /NOBREAK > nul
echo Returning to Title Screen...
timeout 2 /NOBREAK > nul
goto :start

:levelsix
cls
echo the choices you make in this level may affect how the story goes on...
timeout 2 /NOBREAK > nul
echo so what? i got inspired by minecraft story mode!
timeout 2 /NOBREAK > nul
echo ----------------------------------------------------------------------
echo press any key to advance...
pause > nul
goto :levelsixtellsave

:levelsixtellsavequit
cls
echo see? i told you it saves a lot!
echo -------------------------------
echo Press any key to advance...
pause > nul
goto :levelsixaskbreakfast

:levelsixtellsave
"C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo Level Six >friendlysave.dat
echo levelsixtellsavequit >save.dat
cls
echo oh yeah, and this level saves A TON. so feel free to close whenever you'd like!
echo -------------------------------------------------------------------------------
echo press any get to advance...
pause > nul
goto :levelsixaskbreakfast

:levelsixaskbreakfast
cls
echo so anyway, what do you like to eat for breakfast?
echo -------------------------------------------------
echo P=Pancakes                                 E=Eggs
echo B=Bacon                                 D=Drywall
set /P option=
if /I "%option%" EQU "P" set favoritefood=P& goto :levelsixdoneaskbreakfast
if /I "%option%" EQU "B" set favoritefood=B& goto :levelsixdoneaskbreakfast
if /I "%option%" EQU "E" set favoritefood=E& goto :levelsixdoneaskbreakfast
if /I "%option%" EQU "D" set favoritefood=D& goto :levelsixdoneaskbreakfast
cls
echo hey!
echo my coder's too dumb to add that!
echo --------------------------------------
echo press any key to go back..............
pause > nul
goto :levelsixaskbreakfast

:levelsixsaveload
cls
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
set /P sixsave=<sixsave.dat

set /P favoritefood=<favoritefood.dat
set /P likechanging=<likechanging.dat
set /P questionaskedsix=<questionaskedsix.dat
set /P questionaskyousix=<questionaskyousix.dat
goto :%sixsave%

:levelsixdoneaskbreakfast
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo %favoritefood% >favoritefood.dat
echo levelsixsaveload >save.dat
echo Level Six (Continued) >friendlysave.dat
echo levelsixdoneaskbreakfast >sixsave.dat
cls
if "%favoritefood%" EQU "P" echo same!
if "%favoritefood%" EQU "B" echo ooh, i love bacon!
if "%favoritefood%" EQU "E" echo nice!
if "%favoritefood%" EQU "D" echo thats... interesting...
if "%favoritefood%" EQU "P " echo same!
if "%favoritefood%" EQU "B " echo ooh, i love bacon!
if "%favoritefood%" EQU "E " echo nice!
if "%favoritefood%" EQU "D " echo thats... interesting...
timeout 2 /NOBREAK > nul
echo well anyway, welcome to level six!
timeout 2 /NOBREAK > nul
goto :levelsixasklike

:levelsixasklike
echo do you like levels like these?
echo y'know, how the story changes?
echo Yes                         No
set /P option=
if /I "%option%" EQU "Y" set likechanging=Y& goto :levelsixdoneasklike
if /I "%option%" EQU "Yes" set likechanging=Y& goto :levelsixdoneasklike
if /I "%option%" EQU "No" set likechanging=N& goto :levelsixdoneasklike
if /I "%option%" EQU "N" set likechanging=N& goto :levelsixdoneasklike
cls
echo nuh-uh!
echo ---------------------------
echo press any key to go back...
pause > nul
cls
goto :levelsixasklike

:levelsixdoneasklike
echo levelsixdoneasklike >sixsave.dat
echo %likechanging% >likechanging.dat
cls
if "%likechanging%" EQU "N" echo oh...
if "%likechanging%" EQU "Y" echo dope!
timeout 2 /NOBREAK > nul
if "%likechanging%" EQU "N" echo well, thats too bad...
if "%likechanging%" EQU "Y" echo glad you like it!
timeout 2 /NOBREAK > nul
if "%favoritefood%" EQU "P" echo ooh, sometime i can get you some pancakes!
if "%favoritefood%" EQU "B" echo ooh, sometime i can get you some bacon!
if "%favoritefood%" EQU "E" echo ooh, sometime i can get you some eggs!
if "%favoritefood%" EQU "D" echo ooh, sometime i can get you some... drywall..?
if "%favoritefood%" EQU "P " echo ooh, sometime i can get you some pancakes!
if "%favoritefood%" EQU "B " echo ooh, sometime i can get you some bacon!
if "%favoritefood%" EQU "E " echo ooh, sometime i can get you some eggs!
if "%favoritefood%" EQU "D " echo ooh, sometime i can get you some... drywall..?
timeout 1 /NOBREAK > nul
echo --------------------------------------------------------------------------
echo press any key to advance...
pause > nul
cls
echo what if i went too fast for you to read?
timeout 3 /NOBREAK > nul
echo like its not that big of a deal, right? how bad could it possibly be?
timeout 1 /NOBREAK > nul
echo how much content will you miss? is it even important?
timeout 1 /NOBREAK > nul
if "%favoritefood%" EQU "P" echo pancake
if "%favoritefood%" EQU "B" echo bacon
if "%favoritefood%" EQU "E" echo egg
if "%favoritefood%" EQU "D" echo drywall...?
if "%favoritefood%" EQU "P " echo pancake
if "%favoritefood%" EQU "B " echo bacon
if "%favoritefood%" EQU "E " echo egg
if "%favoritefood%" EQU "D " echo drywall...?
timeout 1 /NOBREAK > nul
echo hah, this is really fun, you'll never even know what im saying!
timeout 1 /NOBREAK > nul
echo okay enough of that. wait, should i even let you read any of this?
timeout 1 /NOBREAK > nul
echo or should i just type "cls"?
timeout 1 /NOBREAK > nul
echo do i pause?
timeout 1 /NOBREAK > nul
echo mmmmmmmmm, nahhhh.
timeout 1 /NOBREAK > nul
echo there's actually a really good chance that you're reading all of this faster than im saying
timeout 1 /NOBREAK > nul
echo it! well, maybe not after that super huge piece of text.
timeout 1 /NOBREAK > nul
echo infact, there's another long piece of text coming soon! right after the "he he he" im about
timeout 1 /NOBREAK > nul
echo to do. how much content will take place here? is that even corrent grammar?
timeout 1 /NOBREAK > nul
echo he he he
timeout 1 /NOBREAK > nul
echo firefox is better than opera gx, you might think opera is faster, but if you actually use it
timeout 1 /NOBREAK > nul
echo all the time, then it gets really, really slow.
timeout 1 /NOBREAK > nul
echo what if i do two lines at a time? that would be really, really funny.
timeout 1 /NOBREAK > nul
echo hah!
echo hah!
timeout 1 /NOBREAK > nul
echo okay fine, ill pause.
echo --------------------------------------------------------------------------------------------
echo press any key to advance...
pause > nul
cls
echo well, we're almost at the 2,400 lines of code part!
timeout 2 /NOBREAK > nul
echo almost...
timeout 1 /NOBREAK > nul
timeout 1 /NOBREAK > nul
echo there...
timeout 1 /NOBREAK > nul
timeout 1 /NOBREAK > nul
echo YES!!!
timeout 1 /NOBREAK > nul
echo WE'RE HERE!
echo ---------------------------------------------------
echo press any key to advance...
pause > nul
goto :levelsixaskquestionyou

rem ------------------------------------------------------------------------------------------------------

:levelsixaskquestionyou
set questionaskedsix=somehow you glitched the game, so im in charge of the question. did you eat drywall yesterday
cls 
echo what yes or no question should i ask next?
echo *type your answer*
set /P option=
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
set questionaskedsix="%option%"
echo %questionaskedsix% >questionaskedsix.dat
echo levelsixaskyouask >sixsave.dat
rem HEY! REMEMBER TO EDIT AND DOUBLE CHECK THIS CODE!
cls
echo okay, ill ask you that then:
timeout 2 /NOBREAK > nul
goto :levelsixaskyouask

:levelsixaskyouask
cls
echo %questionaskedsix%?
echo .
echo Yes or No
set /P option=
if /I "%option%" EQU "Y" set questionaskyousix=Y& goto :levelsixyouasksave
if /I "%option%" EQU "Yes" set questionaskyousix=Y& goto :levelsixyouasksave
if /I "%option%" EQU "No" set questionaskyousix=N& goto :levelsixyouasksave
if /I "%option%" EQU "N" set questionaskyousix=N& goto :levelsixyouasksave
rem maybe add an achievement for this?
set alreadyesno=Y
cls 
echo thats a yes or no question.
echo ---------------------------
echo press any key to go back...
pause > nul
goto :levelsixaskyouask

:levelsixyouasksave
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelsixyouaskstreamer >sixsave.dat
echo %questionaskyousix% >questionaskyousix.dat
goto :levelsixyouaskstreamer

:levelsixyouaskstreamer
cls
echo are you a streamer?
echo -------------------
echo Yes              No
set /P option=
if /I "%option%" EQU "Y" set streamer=Y& goto :levelsixasktimesave
if /I "%option%" EQU "Yes" set streamer=Y& goto :levelsixasktimesave
if /I "%option%" EQU "No" set streamer=N& goto :levelsixasktimesave
if /I "%option%" EQU "N" set streamer=N& goto :levelsixasktimesave
cd "C:\Users\%username%\ThatTemp\BCG\"
cls
if "%alreadyesno%" EQU "Y" echo WHAT PART OF YES OR NO DO YOU NOT GET?!& echo ---------------------------------------
if not "%alreadyesno%" EQU "Y" echo thats a yes or no question.& echo ---------------------------
echo press any key to go back...
pause > nul
goto :levelsixyouaskstreamer

:levelsixasktimesave
echo %streamer% >streamer.dat
echo levelsixasktime >sixsave.dat
goto :levelsixasktime

:levelsixasktime
cls
echo what's the time?
if "%streamer%" EQU "N" echo the system tells me it's %time%
if "%streamer%" EQU "Y" echo i would tell you what the system tells me, but i dont want to doxx you.
rem im glad i added that streamer mode.
echo -----------------------------------------------------------------------
set /P option=
cls
echo well, i guess the time is "%option%"!
timeout 2 /NOBREAK > nul
echo woah, i haven't said your name since level two!
timeout 2 /NOBREAK > nul
echo hi %username%
timeout 2 /NOBREAK > nul
cls
echo well, i guess that's the end of the level!
timeout 2 /NOBREAK > nul
echo say it with me!
timeout 2 /NOBREAK > nul
cls
echo see you next time!
"C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs"
cls
echo level six completed!
echo ------------------------
echo press any key to save...
pause > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%"
echo levelseven >save.dat
echo Level Seven >friendlysave.dat
cls
echo Saving...
timeout 1 /NOBREAK > nul
cls
echo Saved...
timeout 1 /NOBREAK > nul
echo Returing to Title Screen...
timeout 2 /NOBREAK > nul
goto :start

:levelseven
cls
echo what if i deleted your save file?
timeout 2 /NOBREAK > nul
echo nah, i wouldn't do that.
timeout 2 /NOBREAK > nul
echo jk
timeout 1 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
if "%currentsave%" EQU "saveone" set levelseventrollsavedelete=1
if "%currentsave%" EQU "savetwo" set levelseventrollsavedelete=2
if "%currentsave%" EQU "savethree" set levelseventrollsavedelete=3
echo levelseventrolldelete >save.dat
echo NEW GAME >friendlysave.dat
cls
echo Deleting save...
timeout 2 /NOBREAK > nul
cls
echo Save file %levelseventrollsavedelete% deleted.
echo ----------------------------
echo Press any key to go back...
pause > nul
goto :start

:levelseventrolldelete
cls
echo This game uses an autosave feature.
echo When you see the text "Saving Data...", do NOT close out of the program.
timeout 5 /NOBREAK > nul
cls
echo well, welcome to level one!
timeout 2 /NOBREAK > nul
echo jk lol
timeout 2 /NOBREAK > nul
goto :levelseventrolldeletefinish

:levelseventrolldeletefinish
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelseventrolldeletefinish >save.dat
echo Level Seven >friendlysave.dat
cls
echo well, welcome to level one!
echo jk lol
echo did you really think i would just delete your save like that?
timeout 3 /NOBREAK > nul
echo nahhhh i wouldn't do that to you
timeout 2 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelseventhreat.vbs"
echo i mean, you could, but is it really worth it?
timeout 2 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelseventrue.vbs"
echo hey you know what would be harmless and funny?
timeout 2 /NOBREAK > nul
echo if i crashed the game!
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelseventrollcorrupt >save.dat
echo ??? (Save Corrupt) >friendlysave.dat
exit

:levelseventrollcorrupt
echo ??? (SSSS CCCCCCC) >friendlysave.dat
cls
echo A serious error has occured the last time you tried to use BCG.
echo Pressing any key now will overwrite the current save.
echo ---------------------------------------------------------------
echo Press any key to overwrite the save and start again...
pause > nul
color 02
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelseventrollcorruptcrash >save.dat
echo Level 8293523589727895879295789238975259738795273859723589723987523759823759285738572985 >friendlysave.dat
cls
echo Overwriting save...
timeout 2 /NOBREAK > nul
color %colorchoice%
cls
echo Done.
timeout 1 /NOBREAK > nul
echo Returning to Title Screen...
timeout 2 /NOBREAK > nul
goto :start

:levelseventrollcorruptcrash
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelseventrollcorruptdone >save.dat
echo Level 1 >friendlysave.dat
exit

:levelseventrollcorruptdone
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
set /P favoritefood=<favoritefood.dat
echo levelseventrollcorruptdone >save.dat
echo Level 7 >friendlysave.dat
cls
echo okay, enough toying around with your save file.
timeout 2 /NOBREAK > nul
if "%favoritefood%" EQU "D" echo well, as a surprise, i got you some drywall..?
if "%favoritefood%" EQU "B" echo well, as a surprise, i got you some bacon!
if "%favoritefood%" EQU "P" echo well, as a surprise, i got you some pancakes!
if "%favoritefood%" EQU "E" echo well, as a surprise, i got you some eggs!
if "%favoritefood%" EQU "D " echo well, as a surprise, i got you some drywall..?
if "%favoritefood%" EQU "B " echo well, as a surprise, i got you some bacon!
if "%favoritefood%" EQU "P " echo well, as a surprise, i got you some pancakes!
if "%favoritefood%" EQU "E " echo well, as a surprise, i got you some eggs!
timeout 2 /NOBREAK > nul
echo hope you enjoy!
timeout 2 /NOBREAK > nul
if "%favoritefood%" EQU "D" start microsoft-edge:"https://www.finestfinish.ca/wp-content/uploads/drywall-installation-2.jpg"
if "%favoritefood%" EQU "B" start microsoft-edge:"https://www.youtube.com/watch?v=thKsAWJjD8Y"
if "%favoritefood%" EQU "P" start microsoft-edge:"https://www.youtube.com/watch?v=aR2rQtJYW3I"
if "%favoritefood%" EQU "E" start microsoft-edge:"https://www.youtube.com/watch?v=f7NbokHUTRA"
if "%favoritefood%" EQU "D " start microsoft-edge:"https://www.finestfinish.ca/wp-content/uploads/drywall-installation-2.jpg"
if "%favoritefood%" EQU "B " start microsoft-edge:"https://www.youtube.com/watch?v=thKsAWJjD8Y"
if "%favoritefood%" EQU "P " start microsoft-edge:"https://www.youtube.com/watch?v=aR2rQtJYW3I"
if "%favoritefood%" EQU "E " start microsoft-edge:"https://www.youtube.com/watch?v=f7NbokHUTRA"
echo ---------------------------------------------------------
echo press any key to advance...
pause > nul
goto :levelsevendoneeat

:levelsevendoneeat
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
set favoritefood=<favoritefood.dat
echo levelsevendoneeat >save.dat
echo Level 7 >friendlysave.dat
cls
if "%favoritefood%" EQU "D" echo i hope you enjoyed... drywall...
if "%favoritefood%" EQU "P" echo i hope you enjoyed those sweet pancakes!
if "%favoritefood%" EQU "B" echo i hope you enjoyed that crispy bacon!
if "%favoritefood%" EQU "E" echo i hope you enjoyed your eggs!
if "%favoritefood%" EQU "D " echo i hope you enjoyed... drywall...
if "%favoritefood%" EQU "P " echo i hope you enjoyed those sweet pancakes!
if "%favoritefood%" EQU "B " echo i hope you enjoyed that crispy bacon!
if "%favoritefood%" EQU "E " echo i hope you enjoyed your eggs!
timeout 2 /NOBREAK > nul
echo did you know cacti is made from cacti?
timeout 2 /NOBREAK > nul
echo hi guys
timeout 1 /NOBREAK > nul
echo i dont know what to put here...
timeout 2 /NOBREAK > nul
cls
echo hey windows?
timeout 1 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelsevenask.vbs"
echo i dont know what to do, any suggestions?
timeout 2 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelsevensuggest.vbs"
echo uhhhhhh
timeout 1 /NOBREAK > nul
echo we're on line 2676!
timeout 2 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelsevensurprised.vbs"
echo mhm.
timeout 1 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelsevendoublecheck.vbs"
echo yep.
timeout 1 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelsevenverysurprised.vbs"
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelseveneditpee >save.dat
echo pee pee poo poo >friendlysave.dat
cls
echo wait, i found an idea!
timeout 2 /NOBREAK > nul
"C:\Users\%username%\ThatTemp\BCG\levelsevenwhatisit.vbs"
echo bye
timeout 1 /NOBREAK > nul
goto :start

:levelseveneditpee
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo levelseveneditpeesure >save.dat
echo pee pee poo poo >friendlysave.dat
cls
echo did you read the save name?
timeout 2 /NOBREAK > nul
echo bye
timeout 1 /NOBREAK > nul
goto :start

:levelseveneditpeesure
echo levelseveneditpeesure >save.dat
echo Level 7 >friendlysave.dat
cls
echo okay, that's enough of the peepee poopoo jokes.
timeout 3 /NOBREAK > nul
echo fun fact, i changed saving in the last version!
timeout 3 /NOBREAK > nul
echo now the save file names dont say weird stuff!
timeout 3 /NOBREAK > nul
echo for example:
timeout 1 /NOBREAK > nul
echo old save would say this: levelseveneditpeesure
echo new save would say this: Level 7
timeout 4 /NOBREAK > nul
echo pretty cool, right?
timeout 2 /NOBREAK > nul
echo -----------------------------------------------
echo press any key to advance...
pause > nul
cls
echo man, remember when i fake deleted your save file?
timeout 3 /NOBREAK > nul
echo WAIT, I HAVE THE BEST IDEA!
timeout 2 /NOBREAK > nul
cls
echo what do you want the save file name to be?
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo *this will be overwritten later.*
echo *type your answer!*
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set /P option=

cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%"
set newsavefilename="%option%"
echo levelsevennewnamedone >save.dat
echo %newsavefilename% >friendlysave.dat
cls
echo Returning to Title Screen...
timeout 2 /NOBREAK > nul
goto :start

:levelsevennewnamedone
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%"
set /P newsavefilename=<friendlysave.dat
cls
echo well aint that neat?
timeout 1 /NOBREAK > nul
echo your save file name is %newsavefilename%!
timeout 2 /NOBREAK > nul
echo time to set it to level 8...
timeout 2 /NOBREAK > nul
echo because this is the end of the level!
echo ------------------------------------------------------
echo press any key to advance...
pause > nul
cls
echo say it with me!
timeout 2 /NOBREAK > nul
cls
echo see you next time!
"C:\Users\%username%\ThatTemp\BCG\leveloneend.vbs"
cls
echo level 7 finished!
timeout 2 /NOBREAK > nul
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%"
echo leveleight >save.dat
echo Level 8 >friendlysave.dat
cls
echo Saving...
timeout 1 /NOBREAK > nul
cls
echo Saved...
timeout 1 /NOBREAK > nul
echo Returning to Title Screen...
timeout 2 /NOBREAK > nul
goto :start

:leveleight
cls
echo yo!
timeout 1 /NOBREAK > nul
echo we've been through eight levels, and you've probably only had around 5 minutes of playtime.
timeout 4 /NOBREAK > nul
echo well i have a fun game for us!
timeout 2 /NOBREAK > nul
echo and it can go on forever if you choose!
timeout 2 /NOBREAK > nul
echo lets start!
timeout 2 /NOBREAK > nul
set guessnumberfrom=leveleightnumberdone
goto :guessnumberstart

:guessnumberstart
set /a randomNum=%random% * 100 / 32767 + 1
rem uncomment the below if you'd like to know the number when the game starts.
cls
rem if "%isDev%" EQU "Y" echo the number is %randomNum% 
rem if "%isDev%" EQU "Y" pause
cls
goto :guessnumberloop

:guessnumberwrong
cls
if "%guessnumbermore%" EQU "Y" echo higher.
if "%guessnumberless%" EQU "Y" echo lower.
echo -----------------------------
echo press any key to try again...
pause > nul
goto :guessnumberloop

:guessnumberloop
set guessnumberless=N
set guessnumbermore=N
cls
echo press E to forfeit.
echo .
echo what number am i thinking of?
echo it ranges from 1 to 100.
echo -----------------------------
echo Type your answer:
set /P numberGuess=
rem yes, i know ACE is possible here.
if /I "%numberGuess%" EQU "E" set wonguess=N& goto :guessnumberwin
if %numberGuess% LSS %randomNum% set guessnumbermore=Y& goto :guessnumberwrong
if %numberGuess% GTR %randomNum% set guessnumberless=Y& goto :guessnumberwrong
if %numberGuess% EQU %randomNum% set firsttimeguesswait=Y& set wonguess=Y& goto :guessnumberwin
echo oops, an error occured evaluating your answer.
timeout 2 /NOBREAK > nul
goto :guessnumberloop

:guessnumberwin
cls
if "%wonguess%" EQU "Y" echo Correct, the number is %randomNum%!
if "%wonguess%" EQU "N" echo You lost, the number was %randomNum%.
if "%firsttimeguesswait%" EQU "Y" timeout 1 /NOBREAK > nul
if "%firsttimeguesswait%" EQU "Y" set firsttimeguesswait=N
echo Would you like to play again?
echo -----------------------------------
echo Yes                              No
set /P option=
if /I "%option%" EQU "Y" goto :guessnumberstart
if /I "%option%" EQU "Yes" goto :guessnumberstart
if /I "%option%" EQU "No" goto :%guessnumberfrom%
if /I "%option%" EQU "N" goto :%guessnumberfrom%
cls
echo that's not an option...
echo ---------------------------
echo press any key to go back...
pause > nul
goto :guessnumberwin

goto :%guessnumberfrom%

:leveleightnumberdone
set firsttimeminiwait=Y
cls
echo that was fun!
timeout 1 /NOBREAK > nul
echo oh yeah! i have a little something to show you...
echo -------------------------------------------------
echo press any key to advance...
pause > nul
goto :leveleightunlockminigames

:leveleightunlockminigames
cd "C:\Users\%username%\ThatTemp\BCG\"
echo do you got games on yo phone? >minigames.dat
cd "C:\Users\%username%\ThatTemp\BCG\%currentsave%\"
echo Level 8 (Continued) >friendlysave.dat
echo leveleightunlockminigamesdone >save.dat
cls
echo you have unlocked the minigames menu!
if "%firsttimeminiwait%" EQU "Y" timeout 1 /NOBREAK > nul
if "%firsttimeminiwait%" EQU "Y" set firsttimeminiwait=N
echo would you like to try it out first?
echo -------------------------------------
echo Yes                                No
set /P option=
if /I "%option%" EQU "Y" goto :start
if /I "%option%" EQU "Yes" goto :start
if /I "%option%" EQU "No" goto :leveleightunlockminigamesdone
if /I "%option%" EQU "N" goto :leveleightunlockminigamesdone
cls
echo that's not an option...
timeout 2 /NOBREAK > nul
goto :leveleightunlockminigames

:leveleightunlockminigamesdone
cls
echo well anyway, welcome to level 8!
timeout 2 /NOBREAK > nul
echo we've officially reached 3000 lines of code!
timeout 2 /NOBREAK > nul
echo and you've been through a lot, huh?
timeout 2 /NOBREAK > nul
echo sure, it was all in the span of 5 minutes, but still a lot.
timeout 3 /NOBREAK > nul
echo i hope you're enjoying boredcoding!
timeout 2 /NOBREAK > nul
echo welp, this is unfinished.
echo ---------------------------
echo press any key to go back...
pause > nul
goto :start





























