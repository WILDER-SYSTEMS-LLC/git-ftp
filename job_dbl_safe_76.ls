/PROG  JOB_DBL_SAFE_76
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "RoboDK sequence";
PROG_SIZE	= 986;
CREATE		= DATE 21-09-28  TIME 14:20:58;
MODIFIED	= DATE 22-02-06  TIME 01:29:26;
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
   4:  ! 0L on 28/09/2021 09: ;
   5:  ! 33:13 ;
   6:  ! Using nominal kinema ;
   7:  ! tics. ;
   8:  UFRAME_NUM=2 ;
   9:  ! UF1:773.6,-8073.7,-6 ;
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
	UF : 2, UT : 3,	
	J1=     -.509 deg,	J2=    47.309 deg,	J3=   -45.731 deg,
	J4=    48.064 deg,	J5=    53.543 deg,	J6=    57.032 deg,
	E1= -2700.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	X =  2000.850  mm,	Y =  5583.640  mm,	Z =    48.265  mm,
	W =     1.642 deg,	P =     2.884 deg,	R =    36.294 deg,
	E1= -2700.000  mm
};
/END
