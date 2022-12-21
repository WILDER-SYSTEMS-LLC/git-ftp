/PROG  TOOL_1_DROPOFF_LEAVE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 719;
CREATE		= DATE 21-04-29  TIME 08:16:24;
MODIFIED	= DATE 22-03-01  TIME 07:13:50;
FILE_NAME	= TOOL_3_D;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 1071;
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
   1:  UFRAME_NUM=4 ;
   2:  UTOOL_NUM=2 ;
   3:  WAIT   1.00(sec) ;
   4:  !MOVE TO FLIGHT HEIGHT (x axis) ;
   5:L P[1] 100mm/sec FINE ACC10    ;
   6:L P[2] 100mm/sec FINE ACC10    ;
   7:  CALL PLCHANDSHAKE    ;
/POS
P[1]{
   GP1:
	UF : 4, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =      .044  mm,	Y =    -4.101  mm,	Z =   300.000  mm,
	W =     -.242 deg,	P =     0.000 deg,	R =     0.000 deg,
	E1= -1290.488  mm
};
P[2]{
   GP1:
	UF : 4, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   -49.056  mm,	Y =    -4.101  mm,	Z =   300.000  mm,
	W =     -.242 deg,	P =     0.000 deg,	R =     0.000 deg,
	E1= -1290.488  mm
};
/END
