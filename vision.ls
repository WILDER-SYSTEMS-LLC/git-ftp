/PROG  VISION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 667;
CREATE		= DATE 21-02-09  TIME 05:18:50;
MODIFIED	= DATE 22-04-05  TIME 00:20:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 931;
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
   1:   ;
   2:  UTOOL_NUM=3 ;
   3:  PR[4:VIS CURRT POS]=LPOS    ;
   4:L PR[4:VIS CURRT POS] 200mm/sec FINE Tool_Offset,PR[5:VIS TOOL OFFSET] ACC20    ;
   5:  UFRAME_NUM=R[9] ;
   6:   ;
   7:  PR[20]=LPOS    ;
   8:  GO[1]=(PR[20,1]) ;
   9:  GO[2]=(PR[20,2]) ;
  10:  GO[1]=(PR[20,1]) ;
  11:  GO[3]=(PR[20,3]) ;
  12:  GO[4]=(PR[20,4]*100) ;
  13:  GO[5]=(PR[20,5]*100) ;
  14:  GO[6]=(PR[20,6]*100) ;
  15:  GO[7]=(PR[20,7]) ;
  16:   ;
  17:  GO[8]=(PR[20,1] MOD 1*(1000)) ;
  18:  GO[9]=(PR[20,2] MOD 1*(1000)) ;
  19:  GO[10]=(PR[20,3] MOD 1*(1000)) ;
  20:   ;
  21:   ;
  22:   ;
  23:   ;
  24:  UFRAME_NUM=0 ;
  25:  PR[R[200]]=LPOS    ;
  26:   ;
  27:  WAIT    .50(sec) ;
  28:   ;
  29:  CALL PLCHANDSHAKE    ;
/POS
/END
