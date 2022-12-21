/PROG  JOB_DBL_SAFE_6000
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "RoboDK sequence";
PROG_SIZE	= 978;
CREATE		= DATE 21-09-30  TIME 12:31:26;
MODIFIED	= DATE 22-02-01  TIME 23:48:38;
FILE_NAME	= JOB_DBL_;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1282;
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
/MN
   1:  ! Program generated by ;
   2:  !  RoboDK v5.2.4 for 1 ;
   3:  !  - Fanuc R-2000iC/21 ;
   4:  ! 0L on 30/09/2021 12: ;
   5:  ! 29:31 ;
   6:  ! Using nominal kinema ;
   7:  ! tics. ;
   8:  UFRAME_NUM=0 ;
   9:  ! UF0:0.0,0.0,0.0,0.0, ;
  10:  ! 0.0,0.0 ;
  11:  UTOOL_NUM=3 ;
  12:  ! UT3:74.0,-301.7,19.8 ;
  13:  ! ,0.0,-90.0,-90.0 ;
  14:J P[1] 20% FINE    ;
  15:  UTOOL_NUM=4 ;
  16:  ! UT4:11.5,-301.7,19.4 ;
  17:  ! ,0.0,-90.0,-90.0 ;
  18:L P[2] 200mm/sec FINE    ;
  19:  CALL PLCHANDSHAKE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,	
	J1=   -90.383 deg,	J2=   -17.219 deg,	J3=   -15.054 deg,
	J4=     1.476 deg,	J5=    15.059 deg,	J6=    88.575 deg,
	E1= -1290.500  mm
};
P[2]{
   GP1:
	UF : 0, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	X =    62.470  mm,	Y = -3273.100  mm,	Z =   493.057  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =   -90.000 deg,
	E1= -1290.500  mm
};
/END