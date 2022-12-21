/PROG  ROS_MOVESM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "r3";
PROG_SIZE	= 548;
CREATE		= DATE 22-08-25  TIME 10:26:38;
MODIFIED	= DATE 22-08-25  TIME 10:26:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 952;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:   ;
   2:  !init: not rdy, no ack ;
   3:  F[1]=(OFF) ;
   4:  F[2]=(OFF) ;
   5:   ;
   6:  LBL[10] ;
   7:   ;
   8:  !we're ready for new point ;
   9:  F[1]=(ON) ;
  10:   ;
  11:  !wait for relay ;
  12:  WAIT (F[2])    ;
  13:   ;
  14:  !cache in temp preg ;
  15:  PR[2:NORM CURRT POS]=PR[1]    ;
  16:   ;
  17:  !first rdy low, then ack copy ;
  18:  F[1]=(OFF) ;
  19:  F[2]=(OFF) ;
  20:   ;
  21:  !move to point ;
  22:J PR[2:NORM CURRT POS] R[1:HOLE X]% CNT R[2:HOLE Y]    ;
  23:   ;
  24:  !done, repeat ;
  25:  JMP LBL[10] ;
/POS
/END