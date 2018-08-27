@ECHO OFF
SETLOCAL enabledelayedexpansion

echo %date% %time% --- begin ---

SET slots=
SET /a start=0
SET /a end=16384
SET ec=FALSE
SET /a ip=6379

for /l %%c in (%start%, 1, %end%) do (
  call set "slots=%%slots%% %%c"
  SET /a counter+=1
  SET /a amari=%%c%%300

  IF %%c gtr 0 IF !amari! equ 0 SET ec=TRUE
  IF %%c equ 5462 SET ec=TRUE
  IF %%c equ 10923 SET ec=TRUE

  IF !ec!==TRUE (
    ECHO "!ip! cluster addslots!slots!"
    SET slots=
    SET ec=FALSE
  )
  IF %%c==5462 (
    ECHO "6380"
    SET /a ip=6380
  )
  IF %%c==10923 (
    ECHO "6381"
    SET /a ip=6381
  )
)

ECHO "!ip! cluster addslots!slots!"

echo %date% %time% --- end ---

pause
