/PROG  ROS_MOVESM_WILDER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "r3";
PROG_SIZE	= 830;
CREATE		= DATE 22-06-24  TIME 15:52:32;
MODIFIED	= DATE 22-09-13  TIME 05:59:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 1298;
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
   3:  F[61:ROS_I rdy]=(OFF) ;
   4:  F[62:ROS_I drdy]=(OFF) ;
   5:  F[63:ROS point move]=(OFF) ;
   6:  F[70:Go to zero]=(OFF) ;
   7:  F[71:Go home]=(OFF) ;
   8:  F[72:normalize-20-3]=(OFF) ;
   9:  F[73:vis-move]=(OFF) ;
  10:  F[74:ros-scan]=(OFF) ;
  11:  F[75:Call drill prog]=(OFF) ;
  12:  F[76:Keyence-cam switch]=(OFF) ;
  13:  F[77:Keyence-drill switch]=(OFF) ;
  14:  F[78:Cam-drill switch]=(OFF) ;
  15:  F[10:ROS PC WAIT]=(ON) ;
  16:  F[80:Job selected]=(OFF) ;
  17:  DO[8:Clamp]=OFF ;
  18:  DO[9:Unclamp]=OFF ;
  19:   ;
  20:  //R[50]=80    ;
  21:   ;
  22:  PR[114:Current JPOS]=JPOS    ;
  23:   ;
  24:  LBL[10] ;
  25:  F[62:ROS_I drdy]=(OFF) ;
  26:  //WAIT   8.00(sec) ;
  27:  !we're ready for new point ;
  28:  F[61:ROS_I rdy]=(ON) ;
  29:   ;
  30:  !wait for relay ;
  31:  WAIT (F[62:ROS_I drdy])    ;
  32:  //WAIT   5.00(sec) ;
  33:  !cache in temp preg ;
  34:  PR[112:ROS PR move]=PR[111:ROS PR cache]    ;
  35:   ;
  36:  !first rdy low, then ack copy ;
  37:  F[61:ROS_I rdy]=(OFF) ;
  38:  F[62:ROS_I drdy]=(OFF) ;
  39:  //WAIT   7.00(sec) ;
  40:  CALL SCI_TAIL_SWITCH    ;
  41:   ;
  42:  !done, repeat ;
  43:  JMP LBL[10] ;
/POS
/END
