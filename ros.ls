/PROG  ROS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "r3";
PROG_SIZE	= 198;
CREATE		= DATE 22-08-25  TIME 10:26:38;
MODIFIED	= DATE 22-08-25  TIME 10:26:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 3;
MEMORY_SIZE	= 582;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  RUN ROS_STATE ;
   2:  RUN ROS_RELAY ;
   3:  CALL ROS_MOVESM    ;
/POS
/END
