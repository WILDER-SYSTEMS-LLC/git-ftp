/PROG  NORMALIZE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 253;
CREATE		= DATE 21-02-09  TIME 05:18:10;
MODIFIED	= DATE 22-09-14  TIME 22:35:16;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 5;
MEMORY_SIZE	= 613;
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
   2:  PR[2:NORM CURRT POS]=LPOS    ;
   3:L PR[2:NORM CURRT POS] 5mm/sec FINE Tool_Offset,PR[3:NORM TOOL OFFST] ACC20    ;
   4:  WAIT    .75(sec) ;
   5:  //CALL PLCHANDSHAKE    ;
/POS
/END
