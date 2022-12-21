/PROG  COGNEX_ERROR_MOVE_PROGRAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 681;
CREATE		= DATE 22-03-10  TIME 12:22:50;
MODIFIED	= DATE 22-03-18  TIME 09:19:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 945;
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
   3:  PR[48]=LPOS    ;
   4:  //L PR[25] R[24]mm/sec FINE ACC R[25] Offset,PR[47]    ;
   5:L PR[48] 200mm/sec FINE Tool_Offset,PR[47] ACC20    ;
   6:   ;
   7:  UFRAME_NUM=R[9] ;
   8:   ;
   9:  PR[20]=LPOS    ;
  10:  GO[1]=(PR[20,1]) ;
  11:  GO[2]=(PR[20,2]) ;
  12:  GO[1]=(PR[20,1]) ;
  13:  GO[3]=(PR[20,3]) ;
  14:  GO[4]=(PR[20,4]*100) ;
  15:  GO[5]=(PR[20,5]*100) ;
  16:  GO[6]=(PR[20,6]*100) ;
  17:  GO[7]=(PR[20,7]) ;
  18:   ;
  19:  GO[8]=(PR[20,1] MOD 1*(1000)) ;
  20:  GO[9]=(PR[20,2] MOD 1*(1000)) ;
  21:  GO[10]=(PR[20,3] MOD 1*(1000)) ;
  22:   ;
  23:   ;
  24:   ;
  25:   ;
  26:  //UFRAME_NUM=0 ;
  27:   ;
  28:  WAIT   1.00(sec) ;
  29:  CALL PLCHANDSHAKE    ;
/POS
/END
