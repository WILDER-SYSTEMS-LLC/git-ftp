/PROG  UF_REGENFRAME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 399;
CREATE		= DATE 21-10-21  TIME 03:13:00;
MODIFIED	= DATE 22-02-01  TIME 23:52:56;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 759;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  CALL MERGE3D2(62,63,64,0,65) ;
   2:  //UFRAME[7:TOOL BAY 4]=PR[66:invUFoCAD] ;
   3:   ;
   4:  CALL INVERSE(65,66) ;
   5:   ;
   6:  CALL MERGE3D2(67,68,69,0,70) ;
   7:  CALL MATRIX(70,66,71) ;
   8:  UFRAME[R[9]]=PR[71:newFRAME] ;
   9:  UFRAME[R[198]]=PR[71:newFRAME] ;
  10:  WAIT    .50(sec) ;
  11:  CALL PLCHANDSHAKE    ;
/POS
/END
