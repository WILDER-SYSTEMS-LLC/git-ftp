/PROG  PLCRESET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 257;
CREATE		= DATE 21-02-21  TIME 07:48:14;
MODIFIED	= DATE 21-02-21  TIME 07:53:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 6;
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
   1:  !TO RESET THE JOB DONE ;
   2:  IF (UI[5:Fault reset]=ON) THEN ;
   3:  DO[1:JOB DONE]=OFF ;
   4:  ENDIF ;
   5:   ;
   6:   ;
/POS
/END