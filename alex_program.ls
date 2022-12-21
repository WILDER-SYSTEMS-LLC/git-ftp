/PROG  ALEX_PROGRAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 885;
CREATE		= DATE 21-08-19  TIME 03:23:56;
MODIFIED	= DATE 21-10-21  TIME 05:56:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 1349;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=9 ;
   2:  UTOOL_NUM=7 ;
   3:  R[29:HOLE X]=0    ;
   4:  R[30:HOLE Y]=0    ;
   5:  R[31:MAX X]=50    ;
   6:  R[32:MAX Y]=3    ;
   7:  PR[95,1:HOLE]=0    ;
   8:  PR[95,2:HOLE]=(-50)    ;
   9:  PR[95,3:HOLE]=0    ;
  10:  PR[95,4:HOLE]=0    ;
  11:  PR[95,5:HOLE]=0    ;
  12:  PR[95,6:HOLE]=90    ;
  13:  PR[95,7:HOLE]=(-1290.45)    ;
  14:   ;
  15:  IF R[29:HOLE X]<=0 AND R[30:HOLE Y]<=0,JMP LBL[1] ;
  16:   ;
  17:  LBL[1] ;
  18:  R[29:HOLE X]=R[29:HOLE X]+1    ;
  19:  R[30:HOLE Y]=R[30:HOLE Y]+1    ;
  20:  PR[95:HOLE]=PR[95:HOLE]+PR[93:X OFFSET]+PR[94:Y OFFSET]    ;
  21:   ;
  22:  LBL[2] ;
  23:L PR[95:HOLE] 100mm/sec FINE Tool_Offset,PR[96:FLIGHT HEIGHT]    ;
  24:  WAIT    .10(sec) ;
  25:  CALL CLAMP_COUPON    ;
  26:  WAIT    .10(sec) ;
  27:  PAUSE ;
  28:  WAIT    .10(sec) ;
  29:  UFRAME_NUM=9 ;
  30:  UTOOL_NUM=7 ;
  31:L PR[95:HOLE] 100mm/sec FINE Tool_Offset,PR[96:FLIGHT HEIGHT]    ;
  32:  R[29:HOLE X]=R[29:HOLE X]+1    ;
  33:  PR[95:HOLE]=PR[95:HOLE]+PR[93:X OFFSET]    ;
  34:  WAIT    .10(sec) ;
  35:  IF R[29:HOLE X]<=R[31:MAX X],JMP LBL[2] ;
  36:   ;
  37:  LBL[3] ;
  38:  R[29:HOLE X]=0    ;
  39:  R[30:HOLE Y]=R[30:HOLE Y]+1    ;
  40:  PR[95,1:HOLE]=0    ;
  41:  PR[95:HOLE]=PR[95:HOLE]+PR[93:X OFFSET]+PR[94:Y OFFSET]    ;
  42:  WAIT    .10(sec) ;
  43:  IF R[30:HOLE Y]<=R[32:MAX Y],JMP LBL[2] ;
  44:   ;
/POS
/END
