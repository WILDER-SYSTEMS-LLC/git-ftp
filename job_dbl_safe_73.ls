/PROG  JOB_DBL_SAFE_73
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "RoboDK sequence";
PROG_SIZE	= 986;
CREATE		= DATE 21-11-03  TIME 07:38:32;
MODIFIED	= DATE 22-02-06  TIME 01:28:58;
FILE_NAME	= JOB_DBL_;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1290;
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
   2:  !  RoboDK v5.2.4 for 2 ;
   3:  !  - Fanuc R-2000iC/21 ;
   4:  ! 0L on 03/11/2021 07: ;
   5:  ! 34:24 ;
   6:  ! Using nominal kinema ;
   7:  ! tics. ;
   8:  UFRAME_NUM=2 ;
   9:  ! UF1:773.6,-7914.0,-8 ;
  10:  ! 08.0,0.0,0.0,0.0 ;
  11:  UTOOL_NUM=3 ;
  12:  ! UT3:74.0,-301.7,19.8 ;
  13:  ! ,0.0,-90.0,-90.0 ;
  14:J P[1] 20% FINE ACC10    ;
  15:  UTOOL_NUM=4 ;
  16:  ! UT4:11.5,-301.7,19.4 ;
  17:  ! ,0.0,-90.0,-90.0 ;
  18:L P[2] 200mm/sec FINE ACC10    ;
  19:  CALL PLCHANDSHAKE    ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 3,	
	J1=     6.547 deg,	J2=    23.622 deg,	J3=   -57.684 deg,
	J4=    -7.722 deg,	J5=    58.196 deg,	J6=    94.365 deg,
	E1= -2700.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	X =  1468.410  mm,	Y =  5584.290  mm,	Z =    65.652  mm,
	W =     -.246 deg,	P =     -.276 deg,	R =     -.010 deg,
	E1= -2700.000  mm
};
/END
