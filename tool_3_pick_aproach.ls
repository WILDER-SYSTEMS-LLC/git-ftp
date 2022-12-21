/PROG  TOOL_3_PICK_APROACH
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 785;
CREATE		= DATE 21-04-28  TIME 17:02:14;
MODIFIED	= DATE 22-03-01  TIME 07:34:10;
FILE_NAME	= TOOL_3_D;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 1129;
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
   3:  !MOVE TO FLIGHT HEIGHT (x axis) ;
   4:L P[1] 100mm/sec FINE ACC10    ;
   5:  !ENGAGE EOAT ONTO TOOL (origin) ;
   6:L P[2] 100mm/sec FINE ACC10    ;
   7:  WAIT   1.00(sec) ;
   8:  !PLC TOOL LOCK ;
   9:  CALL PLCHANDSHAKE    ;
/POS
P[1]{
   GP1:
	UF : 6, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =     0.000  mm,	Y =    -2.043  mm,	Z =   300.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg,
	E1= -1290.487  mm
};
P[2]{
   GP1:
	UF : 6, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =      .000  mm,	Y =    -2.043  mm,	Z =      .819  mm,
	W =      .000 deg,	P =      .000 deg,	R =     -.000 deg,
	E1= -1290.487  mm
};
/END
