/PROG  IR_TEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 694;
CREATE		= DATE 21-08-12  TIME 03:26:50;
MODIFIED	= DATE 21-08-12  TIME 04:04:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1122;
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
   1:J PR[98:low point] 100% FINE    ;
   2:   ;
   3:  UFRAME_NUM=9 ;
   4:  UTOOL_NUM=3 ;
   5:   ;
   6:  VISION RUN_FIND 'TEST1'    ;
   7:  VISION GET_OFFSET 'TEST1' VR[1] JMP LBL[99] ;
   8:   ;
   9:J P[1] 100% FINE VOFFSET,VR[1]    ;
  10:   ;
  11:  PR[97]=LPOS    ;
  12:  LBL[99] ;
  13:   ;
  14:  UFRAME_NUM=2 ;
  15:   ;
  16:   ;
  17:   ;
  18:   ;
  19:   ;
/POS
P[1]{
   GP1:
	UF : 9, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1108.943  mm,	Y = -1814.576  mm,	Z =   -67.311  mm,
	W =     -.197 deg,	P =      .004 deg,	R =   -89.698 deg,
	E1= -1114.402  mm
};
/END
