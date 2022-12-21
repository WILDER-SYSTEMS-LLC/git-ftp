/PROG  SUBTEST1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 530;
CREATE		= DATE 21-04-16  TIME 11:42:42;
MODIFIED	= DATE 21-04-16  TIME 11:44:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 5;
MEMORY_SIZE	= 882;
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
   1:J PR[...] R[1:HOLE X]% FINE    ;
   2:L P[2] R[3:MAX X]mm/sec FINE    ;
   3:   ;
   4:   ;
   5:   ;
/POS
P[2]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1172.566  mm,	Y = -1701.401  mm,	Z =  -258.262  mm,
	W =     -.491 deg,	P =      .067 deg,	R =   -89.601 deg,
	E1=  1114.408  mm
};
/END
