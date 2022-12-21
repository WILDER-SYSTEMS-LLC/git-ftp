/PROG  PRGCOGNEX_ERROR_MOVE_PROGRAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 741;
CREATE		= DATE 22-03-14  TIME 13:03:42;
MODIFIED	= DATE 22-03-14  TIME 13:03:42;
FILE_NAME	= COGNEX_E;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1009;
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
   1:  UFRAME_NUM=R[9] ;
   2:   ;
   3:  UTOOL_NUM=3 ;
   4:  PR[48]=LPOS    ;
   5:  //L PR[25] R[24]mm/sec FINE ACC R[25] Offset,PR[47]    ;
   6:L PR[48] 200mm/sec FINE Tool_Offset,PR[47] ACC20    ;
   7:   ;
   8:  PR[20]=LPOS    ;
   9:  GO[1]=(PR[20,1]) ;
  10:  GO[2]=(PR[20,2]) ;
  11:  GO[1]=(PR[20,1]) ;
  12:  GO[3]=(PR[20,3]) ;
  13:  GO[4]=(PR[20,4]*100) ;
  14:  GO[5]=(PR[20,5]*100) ;
  15:  GO[6]=(PR[20,6]*100) ;
  16:  GO[7]=(PR[20,7]) ;
  17:   ;
  18:  GO[8]=(PR[20,1] MOD 1*(1000)) ;
  19:  GO[9]=(PR[20,2] MOD 1*(1000)) ;
  20:  GO[10]=(PR[20,3] MOD 1*(1000)) ;
  21:   ;
  22:   ;
  23:   ;
  24:   ;
  25:  UFRAME_NUM=0 ;
  26:   ;
  27:  WAIT   1.00(sec) ;
  28:  CALL PLCHANDSHAKE    ;
/POS
/END
