/PROG  JOB_BLOW
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 520;
CREATE		= DATE 21-10-16  TIME 01:56:34;
MODIFIED	= DATE 21-10-16  TIME 01:59:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 876;
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
   1:  UFRAME_NUM=3 ;
   2:  UTOOL_NUM=6 ;
   3:J P[1] 100% FINE    ;
   4:   ;
/POS
P[1]{
   GP1:
	UF : 3, UT : 6,		CONFIG : 'F U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     -.155 deg,	P =      .060 deg,	R =      .154 deg,
	E1= -1288.199  mm
};
/END