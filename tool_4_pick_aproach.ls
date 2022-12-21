/PROG  TOOL_4_PICK_APROACH
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 775;
CREATE		= DATE 21-04-29  TIME 08:17:24;
MODIFIED	= DATE 22-03-01  TIME 07:42:00;
FILE_NAME	= TOOL_3_P;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 1119;
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
   1:  UFRAME_NUM=7 ;
   2:  UTOOL_NUM=2 ;
   3:  !MOVE TO FLIGHT HEIGHT (x axis) ;
   4:L P[1] 100mm/sec FINE    ;
   5:  !ENGAGE EOAT ONTO TOOL (origin) ;
   6:L P[2] 100mm/sec FINE ACC10    ;
   7:  WAIT   1.00(sec) ;
   8:  !PLC TOOL LOCK ;
   9:  CALL PLCHANDSHAKE    ;
/POS
P[1]{
   GP1:
	UF : 7, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =     -.040  mm,	Y =    -4.968  mm,	Z =   300.000  mm,
	W =     -.309 deg,	P =     0.000 deg,	R =     0.000 deg,
	E1= -1290.487  mm
};
P[2]{
   GP1:
	UF : 7, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =     -.043  mm,	Y =    -4.968  mm,	Z =     1.287  mm,
	W =     -.309 deg,	P =      .002 deg,	R =      .000 deg,
	E1= -1290.488  mm
};
/END
