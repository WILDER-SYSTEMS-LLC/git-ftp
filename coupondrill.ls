/PROG  COUPONDRILL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 573;
CREATE		= DATE 21-01-26  TIME 07:02:20;
MODIFIED	= DATE 22-02-23  TIME 00:32:36;
FILE_NAME	= XYROTATE;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 857;
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
   1:  UFRAME_NUM=3 ;
   2:  UTOOL_NUM=5 ;
   3:   ;
   4:  PR[17,1]=GI[5]/10    ;
   5:  PR[17,2]=GI[6]/10    ;
   6:  //PR[17,1]=0    ;
   7:  //PR[17,2]=0    ;
   8:  IF (R[8]=2) THEN ;
   9:  PR[17,3]=50    ;
  10:  ELSE ;
  11:  PR[17,3]=0    ;
  12:  ENDIF ;
  13:  PR[17,4]=0    ;
  14:  PR[17,5]=0    ;
  15:  PR[17,6]=0    ;
  16:  PR[17,7]=(-1114.4)    ;
  17:   ;
  18:L PR[17] 240mm/sec FINE ACC50    ;
  19:   ;
  20:  CALL PLCHANDSHAKE    ;
  21:   ;
  22:   ;
  23:   ;
  24:   ;
/POS
/END
