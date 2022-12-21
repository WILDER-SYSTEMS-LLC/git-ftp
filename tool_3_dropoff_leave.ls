/PROG  TOOL_3_DROPOFF_LEAVE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 737;
CREATE		= DATE 21-04-28  TIME 16:59:36;
MODIFIED	= DATE 22-03-01  TIME 07:29:54;
FILE_NAME	= TOOL_1_D;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 1081;
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
   1:  UFRAME_NUM=6 ;
   2:  UTOOL_NUM=2 ;
   3:  WAIT   1.00(sec) ;
   4:  !MOVE TO FLIGHT HEIGHT (x axis) ;
   5:L P[1] 100mm/sec FINE ACC10    ;
   6:L P[3] 100mm/sec FINE    ;
   7:   ;
   8:   ;
   9:  CALL PLCHANDSHAKE    ;
/POS
P[1]{
   GP1:
	UF : 6, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =     0.000  mm,	Y =    -2.043  mm,	Z =   300.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg,
	E1= -1290.487  mm
};
P[3]{
   GP1:
	UF : 6, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   -50.000  mm,	Y =    -2.043  mm,	Z =   300.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg,
	E1= -1290.487  mm
};
/END