/PROG  JOB_DBL_SAFE_9
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "RoboDK sequence";
PROG_SIZE	= 986;
CREATE		= DATE 21-09-28  TIME 13:52:14;
MODIFIED	= DATE 22-02-06  TIME 01:31:50;
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
   2:  !  RoboDK v5.2.4 for 1 ;
   3:  !  - Fanuc R-2000iC/21 ;
   4:  ! 0L on 28/09/2021 09: ;
   5:  ! 32:58 ;
   6:  ! Using nominal kinema ;
   7:  ! tics. ;
   8:  UFRAME_NUM=1 ;
   9:  ! UF1:773.6,-3832.1,-6 ;
  10:  ! 71.4,0.0,0.0,0.0 ;
  11:  UTOOL_NUM=3 ;
  12:  ! UT3:74.0,-301.7,19.8 ;
  13:  ! ,0.0,-90.0,-90.0 ;
  14:J P[1] 20% FINE ACC10    ;
  15:  UTOOL_NUM=4 ;
  16:  ! UT4:17.1,-301.7,24.1 ;
  17:  ! ,0.0,-90.0,-90.0 ;
  18:L P[2] 200mm/sec FINE ACC10    ;
  19:  CALL PLCHANDSHAKE    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 3,	
	J1=    -1.892 deg,	J2=    50.926 deg,	J3=   -41.072 deg,
	J4=    50.042 deg,	J5=    52.363 deg,	J6=    54.319 deg,
	E1= -2000.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	X =  1894.110  mm,	Y =  1926.060  mm,	Z =    75.278  mm,
	W =      .375 deg,	P =     1.020 deg,	R =    35.487 deg,
	E1= -2000.000  mm
};
/END
