/PROG  AUTO_CALIB_DRILL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1229;
CREATE		= DATE 22-09-13  TIME 11:22:40;
MODIFIED	= DATE 22-09-22  TIME 05:49:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 51;
MEMORY_SIZE	= 1541;
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
   1:  !Move drill to start point ;
   2:  !at offset from surface ;
   3:J PR[73:DRILL CALIB] 10% FINE Tool_Offset,PR[72:SURF-drill off]    ;
   4:   ;
   5:  !Capture current drill TCP pose ;
   6:  UTOOL_NUM=7 ;
   7:  PR[76:CURRENT POS]=LPOS    ;
   8:   ;
   9:  !Move normalization sensor TCP to ;
  10:  !captured pose and normalize ;
  11:  UTOOL_NUM=4 ;
  12:L PR[76:CURRENT POS] 40mm/sec FINE Tool_Offset,PR[74:Drill-Surf Off]    ;
  13:  CALL NORMALIZE_20_3    ;
  14:   ;
  15:  !Get norm sensor TCP current pose ;
  16:  UTOOL_NUM=4 ;
  17:  PR[76:CURRENT POS]=LPOS    ;
  18:  !Go to captured pose in drill TCP ;
  19:  !at offset from surface ;
  20:  UTOOL_NUM=7 ;
  21:L PR[76:CURRENT POS] 40mm/sec FINE Tool_Offset,PR[72:SURF-drill off]    ;
  22:  !1.Lower tool 2.clamp 3.drill ;
  23:  CALL DRILL_20_3    ;
  24:   ;
  25:  !Lift drill unit ;
  26:  //UTOOL_NUM=9 ;
  27:  //PR[63:p2CAD]=LPOS    ;
  28:  //L PR[63:p2CAD] 40mm/sec FINE Tool_Offset,PR[69:p3REAL]    ;
  29:  //PR[72:SURF-drill offst]=UTOOL[9:TOOL 4] ;
  30:   ;
  31:  !Create UF coincident with ;
  32:  !drill TCP ;
  33:  UFRAME[22:DRILL_UF]=PR[75:ZERO CART POSE] ;
  34:  UFRAME_NUM=22 ;
  35:  PR[76:CURRENT POS]=LPOS    ;
  36:  UFRAME[22:DRILL_UF]=PR[76:CURRENT POS] ;
  37:   ;
  38:  !Move to drill pose in norm ;
  39:  !sensor TCP and normalize ;
  40:  //UTOOL_NUM=9 ;
  41:  //PR[63:p2CAD]=LPOS    ;
  42:  //UTOOL_NUM=4 ;
  43:  //L PR[63:p2CAD] 40mm/sec FINE Tool_Offset,PR[73:DRILL CALIB]    ;
  44:  //CALL NORMALIZE_20_3    ;
  45:   ;
  46:  !Go to drilled hole in camera TCP ;
  47:  UTOOL_NUM=7 ;
  48:  PR[76:CURRENT POS]=LPOS    ;
  49:  UTOOL_NUM=10 ;
  50:L PR[76:CURRENT POS] 40mm/sec FINE Tool_Offset,PR[74:Drill-Surf Off]    ;
  51:   ;
/POS
/END
