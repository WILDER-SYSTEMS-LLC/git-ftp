/PROG  NORM_TO_VIS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 245;
CREATE		= DATE 21-02-09  TIME 05:19:54;
MODIFIED	= DATE 21-05-12  TIME 10:23:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 5;
MEMORY_SIZE	= 605;
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
   1:  UTOOL_NUM=4 ;
   2:  PR[4:VIS CURRT POS]=LPOS    ;
   3:  UTOOL_NUM=3 ;
   4:L PR[4:VIS CURRT POS] R[24]mm/sec FINE ACC R[25]    ;
   5:  CALL PLCHANDSHAKE    ;
/POS
/END