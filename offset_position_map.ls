/PROG  OFFSET_POSITION_MAP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 659;
CREATE		= DATE 21-02-09  TIME 02:51:06;
MODIFIED	= DATE 22-06-09  TIME 04:34:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 927;
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
   1:  PR[5,1:VIS TOOL OFFSET]=R[3:MAX X]/100    ;
   2:  PR[5,2:VIS TOOL OFFSET]=R[4:MAX Y]/100    ;
   3:  PR[3,4:NORM TOOL OFFST]=R[1:HOLE X]/100    ;
   4:  PR[3,5:NORM TOOL OFFST]=R[2:HOLE Y]/100    ;
   5:  PR[11,3:NORM HEIGHT]=R[7]/100    ;
   6:   ;
   7:  R[17]=R[17]/100    ;
   8:  R[18]=R[18]/100    ;
   9:  R[19]=R[19]/100    ;
  10:   ;
  11:   ;
  12:  PR[26,1:RIVET LOCATION]=R[10]+R[17]    ;
  13:  PR[26,2:RIVET LOCATION]=R[11]+R[18]    ;
  14:  PR[26,3:RIVET LOCATION]=R[12]+R[19]    ;
  15:  PR[26,4:RIVET LOCATION]=R[13]/100    ;
  16:  PR[26,5:RIVET LOCATION]=R[14]/100    ;
  17:  PR[26,6:RIVET LOCATION]=R[15]/100    ;
  18:  PR[26,7:RIVET LOCATION]=R[16]    ;
  19:   ;
  20:  PR[47,1]=R[34]/100    ;
  21:  PR[47,2]=R[35]/100    ;
  22:   ;
  23:  PR[51,1]=R[36]/100    ;
  24:  PR[51,2]=R[37]/100    ;
  25:   ;
  26:   ;
/POS
/END
