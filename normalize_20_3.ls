/PROG  NORMALIZE_20_3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "r3";
PROG_SIZE	= 494;
CREATE		= DATE 22-08-25  TIME 10:26:40;
MODIFIED	= DATE 22-08-25  TIME 10:26:40;
FILE_NAME	= ROS_MOVE;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 942;
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
/MN
   1:  CALL WRITEPLC_NORM    ;
   2:  LBL[40] ;
   3:  IF (!DI[4:Normality Done]) THEN ;
   4:  IF DI[6:Run Normalize TPP]=ON,JMP LBL[20] ;
   5:  IF DI[7:Run Normalize_Height TPP]=ON,JMP LBL[21] ;
   6:  LBL[20] ;
   7:  CALL NORMALIZE    ;
   8:  DO[4:Normalize TPP Done]=ON ;
   9:  WAIT    .10(sec) ;
  10:  DO[4:Normalize TPP Done]=OFF ;
  11:  WAIT   1.50(sec) ;
  12:  JMP LBL[40] ;
  13:  LBL[21] ;
  14:  CALL NORMALIZE_HEIGHT    ;
  15:  DO[5:Normalize_Height TPP Don]=ON ;
  16:  WAIT    .10(sec) ;
  17:  DO[5:Normalize_Height TPP Don]=OFF ;
  18:  WAIT   1.50(sec) ;
  19:  JMP LBL[40] ;
  20:  ENDIF ;
/POS
/END
