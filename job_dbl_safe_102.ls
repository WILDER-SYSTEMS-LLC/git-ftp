/PROG  JOB_DBL_SAFE_102
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "RoboDK sequence";
PROG_SIZE	= 990;
CREATE		= DATE 21-11-30  TIME 15:56:16;
MODIFIED	= DATE 22-02-06  TIME 01:19:42;
FILE_NAME	= JOB_DBL_;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1294;
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
   4:  ! 0L on 30/11/2021 15: ;
   5:  ! 54:58 ;
   6:  ! Using nominal kinema ;
   7:  ! tics. ;
   8:  UFRAME_NUM=1 ;
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
	UF : 1, UT : 3,	
	J1=     1.030 deg,	J2=    15.933 deg,	J3=   -67.747 deg,
	J4=   -42.758 deg,	J5=    77.152 deg,	J6=   102.231 deg,
	E1= -1300.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	X =   965.701  mm,	Y =  6526.330  mm,	Z =    45.459  mm,
	W =     2.699 deg,	P =    -3.743 deg,	R =   -40.523 deg,
	E1= -1300.000  mm
};
/END
