/PROG  VIS_TO_DRILL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 317;
CREATE		= DATE 21-02-09  TIME 05:20:32;
MODIFIED	= DATE 22-02-11  TIME 09:27:40;
FILE_NAME	= NORM_TO_;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 673;
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
   1:  UTOOL_NUM=3 ;
   2:  PR[4:VIS CURRT POS]=LPOS    ;
   3:  GO[1]=(PR[4,2:VIS CURRT POS]) ;
   4:  UTOOL_NUM=R[28] ;
   5:L PR[4:VIS CURRT POS] R[24]mm/sec FINE Tool_Offset,PR[13] ACC R[25]    ;
   6:  CALL PLCHANDSHAKE    ;
/POS
/END
