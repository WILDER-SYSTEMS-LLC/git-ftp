/PROG  ROBOT_REPEATABILITY
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 579;
CREATE		= DATE 21-02-12  TIME 05:06:04;
MODIFIED	= DATE 21-02-12  TIME 05:35:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 1067;
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
   1:  LBL[1] ;
   2:L P[1] 100mm/sec FINE    ;
   3:L P[2] 100mm/sec FINE    ;
   4:  JMP LBL[1] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X = -1130.011  mm,	Y = -1511.461  mm,	Z =  -292.516  mm,
	W =   179.923 deg,	P =      .291 deg,	R =     -.784 deg,
	E1=  1582.463  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X = -1131.708  mm,	Y = -1280.751  mm,	Z =  -209.421  mm,
	W =   179.924 deg,	P =      .290 deg,	R =     -.784 deg,
	E1=  1582.463  mm
};
/END
