/PROG  WRITEPLC_NORM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 267;
CREATE		= DATE 22-08-25  TIME 10:26:42;
MODIFIED	= DATE 22-08-25  TIME 10:26:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 603;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:   ;
   2:  DO[3:Reset Normality]=ON ;
   3:  WAIT    .10(sec) ;
   4:  DO[3:Reset Normality]=OFF ;
   5:   ;
   6:  DO[2:Execute Normality]=ON ;
   7:  WAIT    .10(sec) ;
   8:   ;
   9:  DO[2:Execute Normality]=OFF ;
/POS
/END
