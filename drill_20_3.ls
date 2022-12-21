/PROG  DRILL_20_3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 559;
CREATE		= DATE 22-08-25  TIME 10:26:40;
MODIFIED	= DATE 22-08-25  TIME 10:26:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 863;
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
   1:  DO[8:Clamp]=ON ;
   2:  CALL WRITEPLC_CLAMP    ;
   3:  WAIT (DI[8:Run PF_DRILL_CLAMP TPP])    ;
   4:  CALL PF_DRILL_CLAMP    ;
   5:  DO[10:Clamp TPP Done]=ON ;
   6:  WAIT    .10(sec) ;
   7:  DO[10:Clamp TPP Done]=OFF ;
   8:  WAIT (DI[10:Clamp Done])    ;
   9:  DO[8:Clamp]=OFF ;
  10:  DO[6:Execute Clamp]=OFF ;
  11:   ;
  12:  CALL WRITEPLC_DRILL    ;
  13:  WAIT (DI[11:Drill Done])    ;
  14:  DO[12:Enable Drill]=OFF ;
  15:   ;
  16:  DO[9:Unclamp]=ON ;
  17:  CALL WRITEPLC_CLAMP    ;
  18:  WAIT (DI[9:Run PF_DRILL_UNCLAMP TPP])    ;
  19:  CALL PF_DRILL_UNCLAMP    ;
  20:  DO[11:Unclamp TPP Done]=ON ;
  21:  WAIT    .10(sec) ;
  22:  DO[11:Unclamp TPP Done]=OFF ;
  23:  WAIT (DI[10:Clamp Done])    ;
  24:  DO[9:Unclamp]=OFF ;
  25:  DO[6:Execute Clamp]=OFF ;
/POS
/END
