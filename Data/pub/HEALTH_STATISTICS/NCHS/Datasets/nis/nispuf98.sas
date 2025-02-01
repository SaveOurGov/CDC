/**************************************************************************/
/* PROGRAM     :  NISPUF98.SAS                                            */
/*                                                                        */
/* PURPOSE     :  THIS SAS PROGRAM CREATES A PERMANENT SAS DATASET        */ 
/*                FROM THE 1998 NIS PUBLIC USE ASCII FILE                 */
/*                                                                        */
/* NOTES       :  THIS PROGRAM IS DIVIDED INTO 7 SECTIONS DESCRIBED BELOW.*/
/*                                                                        */
/* SECTION A   :  CREATE A DIRECTORY TO COPY FILES TO AND STORE THE       */
/*                PERMANENT SAS DATASET CREATED BY THIS PROGRAM,          */
/*                E.G. C:\NISPUF98 .                                      */
/*                                                                        */
/*             :  COPY THE ASCII FILE CALLED NISPUF98.DAT AND THIS        */
/*                PROGRAM TO THE DIRECTORY CREATED.                       */
/*                                                                        */
/* SECTION B   :  IDENTIFIES THE LOCATION OF THE ASCII FILE NISPUF98.DAT. */
/*                                                                        */
/* SECTION C   :  DEFINES VARIABLE FORMATS.                               */
/*                                                                        */
/*             :  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"         */
/*                TO PERMANENTLY STORE THE FORMATS IN THE LOCATION        */
/*                IDENTIFIED IN THE LIBNAME STATEMENT IN SECTION A.       */
/*                                                                        */
/*             :  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH      */
/*                TO PERMANENTLY STORE THE FORMATS.                       */
/*                                                                        */
/* SECTION D   :  CREATES A PERMANENT SAS DATASET CALLED NISPUF98         */
/*                IN THE DIRECTORY REFERRED TO IN THE LIBNAME "puf"       */
/*                STATEMENT IN SECTION A.                                 */
/*                                                                        */
/*             :  THE VARIABLES AND THEIR LOCATIONS IN THE ASCII FILE     */
/*                ARE IN THIS SECTION.                                    */
/*                                                                        */
/* SECTION E   :  ASSIGNS LABELS TO THE VARIABLES IN THE DATASET.         */
/*                                                                        */
/* SECTION F   :  ASSIGNS FORMATS TO VARIABLES TO PRODUCE FORMATTED       */
/*                FREQUENCIES                                             */
/*                                                                        */
/* SECTION G   :  PROC CONTENTS STATEMENT TO LIST VARIABLES IN DATASET.   */
/*                EXAMPLE OF PROC FREQ STATEMENTS TO PRODUCE FREQUENCIES  */
/*                ON THE VARIABLE AGEGRP , UNWEIGHTED AND WEIGHTED USING  */
/*                W0 AS WEIGHT.                                           */
/*                                                                        */
/**************************************************************************/
options ps=56 ls=90 obs= max;  

*----------------------------------------------------*;
* A. CREATE DIRECTORY WHERE FILES ARE TO BE LOCATED  *;
*----------------------------------------------------*;
libname puf     'c:\nispuf98';  ** "puf" REFERS TO THE DIRECTORY WHERE THE  **; 
                                **  PERMANENT SAS DATASET WILL BE WRITTEN TO**;

libname library 'c:\nispuf98'; ** "library" REFERS TO THE DIRECTORY WHERE  **;
                                ** PERMANENT FORMATS ARE GOING TO BE STORED **;
                                ** COMMENT OUT THIS STATEMENT IF YOU DO NOT **;
                                **  WANT TO STORE PERMANENT FORMATS         **;

*------------------------------------*;
* B. NAME OF 1998 NIS PUF ASCII FILE *;
*------------------------------------*;
 filename in 'c:\nispuf98\nispuf98.dat';  

*----------------------------*;
* C. VARIABLE FORMATS        *;
*----------------------------*;
* PROC FORMAT ;               ** USE THIS STATEMENT TO CREATE TEMPORARY FORMATS**;
PROC FORMAT LIBRARY=LIBRARY;  ** USE THIS STATEMENT TO STORE PERMANENT FORMATS **;

VALUE AGEGRPF      
  1  = "1  19 - 23 MONTHS"
  2  = "2  24 - 29 MONTHS"
  3  = "3  30 - 35 MONTHS"
;
VALUE ALL4SHOF
  .  =  ".  MISSING"
  1  =  "1  YES"
  2  =  "2  NO"
  6  =  "6  DON'T KNOW"
  7  =  "7  REFUSED"
;
VALUE C1RF
   .  = " .  MISSING"
   2  = " 2  2"
   3  = " 3  3"
   4  = " 4  4"
   5  = " 5  5"
   6  = " 6  6" 
   7  = " 7  7"
   8  = " 8  8+ "
  96  = "96  DON'T KNOW"
  97  = "97  REFUSED"
;
VALUE C5RF                
   .  =" .  MISSING"
   1  =" 1  MOTHER (STEP, FOSTER, ADOPTIVE) OR FEMALE GUARDIAN"
   2  =" 2  FATHER (STEP, FOSTER, ADOPTIVE) OR MALE GUARDIAN"
   3  =" 3  GRANDPARENT"
   4  =" 4  OTHER FAMILY MEMBER/FRIEND"
  96  ="96  DON'T KNOW"
  97  ="97  REFUSED"                                    
;
VALUE CEN_REGF
1  ='1  NORTHEAST'  
2  ='2  MIDWEST'
3  ='3  SOUTH'
4  ='4  WEST'
;
VALUE CHILDNMF    
  1  = "1  1 CHILD"
  2  = "2  2-3 CHILDREN"
  3  = "3  4+ CHILDREN"
  4  = "4  UNKNOWN"
;
VALUE C_4313F
  1  = "1  UTD 4313/SC"
  2  = "2  NOT UTD 4313/ SC "
  3  = "3  UTD 4313/NSC"
  4  = "4  NOT UTD 4313/ NSC"
  5  = "5  MISSING 4313/SC,NSC"
;
VALUE C_HEPF
  1  = "1  UTD HEPB/SC"
  2  = "2  NOT UTD HEPB/ SC"
  3  = "3  UTD HEPB/NSC"
  4  = "4  NOT UTD HEPB/ NSC"
  5  = "5  MISSING HEPB/SC,NSC"
;
VALUE C_VRCF
  1  = "1  UTD VRC/SC"
  2  = "2  NOT UTD VRC/ SC"
  3  = "3  UTD VRC/NSC"
  4  = "4  NOT UTD VRC/ NSC"
  5  = "5  MISSING VRC/SC,NSC"
;
VALUE C_431F
  1  = "1  UTD 431/SC"
  2  = "2  NOT UTD 431/ SC "
  3  = "3  UTD 431/NSC"
  4  = "4  NOT UTD 431/ NSC"
  5  = "5  MISSING 431/SC,NSC"
;
VALUE C_DTPF
  1  = "1  UTD DTP/SC"
  2  = "2  NOT UTD DTP/ SC"
  3  = "3  UTD DTP/NSC"
  4  = "4  NOT UTD DTP/ NSC"
  5  = "5  MISSING DTP/SC,NSC"
;

VALUE C_POLF
  1  = "1  UTD POLIO/SC"
  2  = "2  NOT UTD POLIO/ SC"
  3  = "3  UTD POLIO/NSC"
  4  = "4  NOT UTD POLIO/ NSC"
  5  = "5  MISSING POLIO/SC,NSC"
;

VALUE C_MMRF
  1  = "1  UTD MMR/SC"
  2  = "2  NOT UTD MMR/ SC"
  3  = "3  UTD MMR/NSC"
  4  = "4  NOT UTD MMR/ NSC"
  5  = "5  MISSING MMR/SC,NSC"
;

VALUE C_HIBF
  1  = "1  UTD HIB/SC"
  2  = "2  NOT UTD HIB/ SC"
  3  = "3  UTD HIB/NSC"
  4  = "4  NOT UTD HIB/ NSC"
  5  = "5  MISSING HIB/SC,NSC"
;

VALUE D6RF 
  . =".  MISSING"
  0 ="0  0"
  1 ="1  1"
  2 ="2  2"
  3 ="3  3+"
;

VALUE D7F 
  .  =".  MISSING"
  1 = '1  YES'
  2 = '2  NO '
;

VALUE DTP_SOUF
  .  = ".  UNKNOWN"
  1  = "1  SHOT RECORDS"
  2  = "2  BOTH SHOT RECORDS AND RESPONDENT RECALL"
  3  = "3  RESPONDENT RECALL ONLY"
  6  = "6  DON'T KNOW"
;

VALUE EDUC1F     
  1  = "1  <12 YEARS"
  2  = "2  12 YEARS"
  3  = "3  >12, NON COLLEGE GRADUATE"
  4  = "4  COLLEGE GRADUATE"
;

VALUE ENTRYF     
  1  = "1  YES"
  2  = "2  NO"
;

VALUE FRSTBRNF   
  1  = "1  NO"
  2  = "2  YES"
;

VALUE FULL_CPF
  .  = ".  MISSING"
  1  = "1  YES"
  2  = "2  NO"
  6  = "6  DON'T KNOW"
  7  = "7  REFUSED"
;

VALUE FULL_HEF
  .  = ".  MISSING"
  1  = "1  YES"
  2  = "2  NO"
  6  = "6  DON'T KNOW"
  7  = "7  REFUSED"
;

VALUE FULL_DTF
  .  = ".  MISSING"
  1  = "1  YES"
  2  = "2  NO"
  6  = "6  DON'T KNOW"
  7  = "7  REFUSED"
;

VALUE FULL_POF
  .  = ".  MISSING"
  1  = "1  YES"
  2  = "2  NO"
  6  = "6  DON'T KNOW"
  7  = "7  REFUSED"
;

VALUE  FULL_HIF
  .  = ".  MISSING"
  1  = "1  YES"
  2  = "2  NO"
  6  = "6  DON'T KNOW"
  7  = "7  REFUSED"
;

VALUE FUL2_MMF
  .  = ".  MISSING"
  1  = "1  YES"
  2  = "2  NO"
  6  = "6  DON'T KNOW"
  7  = "7  REFUSED"
;

VALUE HEP_BRTF   
   .  =".  MISSING"
  1  = "1  AT LEAST 1 PROVIDER CHECKED THE GIVEN AT BIRTH BOX"
  2  = "2  NO PROVIDER CHECKED THE GIVEN AT BIRTH BOX"
;

VALUE HUTD431F   
  1  = "1  4:3:1:3 UTD"
  2  = "2  NOT 4:3:1:3 UTD"
  3  = "3  MISSING"
;

VALUE I_HISPKF     
  1  = "1  HISPANIC"
  2  = "2  NOT HISPANIC"
;

VALUE I_HISPMF    
  1  = "1  HISPANIC"
  2  = "2  NOT HISPANIC"
;
VALUE I_RACKRF     
  1  = "1  WHITE"            
  2  = "2  BLACK"
  3  = "3  ALL OTHER(AMERICAN INDIAN+ASIAN+OTHER)"
;
VALUE I_RACMRF     
  1  = "1  WHITE"            
  2  = "2  BLACK"
  3  = "3  ALL OTHER(AMERICAN INDIAN+ASIAN+OTHER)"
;
VALUE INCPV1RF   
  1  = "1  >= 1.0 (ABOVE)"
  2  = "2  < 1.0 (BELOW)"      
  3  = "3  UNKNOWN"
;

VALUE INCOMERF
 .    =    " .  NO ANSWER GIVEN"
 3    =    " 3        0 - $ 7,500"
 4    =    " 4  $ 7,501 - $10,000"
 5    =    " 5  $10,001 - $12,500"
 6    =    " 6  $12,501 - $15,000"
 7    =    " 7  $15,001 - $17,500"
 8    =    " 8  $17,501 - $20,000"
 9    =    " 9  $20,001 - $30,000"
10    =    "10  $30,001 - $50,000"
11    =    "11  $50,001 +        "
96    =    "96  DON'T KNOW"
97    =    "97  REFUSED"
;

VALUE ITRUEIAF   
  1  =   " 1  CT"         
  2  =   " 2  MA-REST OF STATE"
  3  =   " 3  MA-CITY OF BOSTON"
  4  =   " 4  ME"
  5  =   " 5  NH"
  6  =   " 6  RI"
  7  =   " 7  VT"
  8  =   " 8  NJ-REST OF STATE"
  9  =   " 9  NJ-CITY OF NEWARK"
 10  =   "10  NY-REST OF STATE"
 11  =   "11  NY-NYC 5 COUNTIES"
 12  =   "12  DISTRICT OF COLUMBIA"
 13  =   "13  DE"
 14  =   "14  MD-REST OF STATE"
 15  =   "15  MD-CITY OF BALTIMORE"
 16  =   "16  PA-REST OF STATE"
 17  =   "17  PA-PHILADELPHIA COUNTY"
 18  =   "18  VA"
 19  =   "19  WV"
 20  =   "20  AL-REST OF STATE"
 21  =   "21  AL-JEFFERSON COUNTY"
 22  =   "22  FL-REST OF STATE"
 23  =   "23  FL-DUVAL COUNTY"
 24  =   "24  FL-DADE COUNTY"
 25  =   "25  GA-REST OF STATE"
 26  =   "26  GA-FULTON/DEKALB COUNTIES"
 27  =   "27  KY"
 28  =   "28  MS"
 29  =   "29  NC"
 30  =   "30  SC"
 31  =   "31  TN-REST OF STATE"
 32  =   "32  TN-SHELBY COUNTY"
 33  =   "33  TN-DAVIDSON COUNTY"
 34  =   "34  IL-REST OF STATE"
 35  =   "35  IL-CITY OF CHICAGO"
 36  =   "36  IN-REST OF STATE"
 37  =   "37  IN-MARION COUNTY"
 38  =   "38  MI-REST OF STATE"
 39  =   "39  MI-CITY OF DETROIT"
 40  =   "40  MN"
 41  =   "41  OH-REST OF STATE"
 42  =   "42  OH-CUYAHOGA COUNTY"
 43  =   "43  OH-FRANKLIN COUNTY"
 44  =   "44  WI-REST OF STATE"
 45  =   "45  WI-MILWAUKEE COUNTY"
 46  =   "46  AR"
 47  =   "47  LA-REST OF STATE"
 48  =   "48  LA-ORLEANS PARISH"
 49  =   "49  NM"
 50  =   "50  OK"
 51  =   "51  TX-REST OF STATE"
 52  =   "52  TX-DALLAS COUNTY"
 53  =   "53  TX-EL PASO COUNTY"
 54  =   "54  TX-CITY OF HOUSTON"
 55  =   "55  TX-BEXAR COUNTY"
 56  =   "56  IA"
 57  =   "57  KS"
 58  =   "58  MO"
 59  =   "59  NE"
 60  =   "60  CO"
 61  =   "61  MT"
 62  =   "62  ND"
 63  =   "63  SD"
 64  =   "64  UT"
 65  =   "65  WY"
 66  =   "66  AZ-REST OF STATE"
 67  =   "67  AZ-MARICOPA COUNTY"
 68  =   "68  CA-REST OF STATE"
 69  =   "69  CA-LOS ANGELES COUNTY"
 70  =   "70  CA-SANTA CLARA COUNTY"
 71  =   "71  CA-SAN DIEGO COUNTY"
 72  =   "72  HI"
 73  =   "73  NV"
 74  =   "74  AK"
 75  =   "75  ID"
 76  =   "76  OR"
 77  =   "77  WA-REST OF STATE"
 78  =   "78  WA-KING COUNTY" 
;

VALUE LANGUAGF    
  .  = ".  NO ANSWER GIVEN"
  1  = "1  ENGLISH"
  2  = "2  SPANISH"                                                                    
  3  = "3  OTHER LANGUAGE" 
;

VALUE M_AGEGRF    
  1  = "1  <=19"           
  2  = "2  20 - 29" 
  3  = "3  30+"
;

VALUE MARITALF     
  1  = "1  WIDOWED/DIVORCED/SEPARATED"
  2  = "2  NEVER MARRIED"
  3  = "3  MARRIED"
  4  = "4  DECEASED"
;

VALUE MEDHOMEF     
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO  PROVIDER"
4  =  "4  UNKNOWN"
;

VALUE MOBILF       
  1  = "1  MOVED FROM DIFFERENT STATE"
  2  = "2  DID NOT MOVE FROM DIFFERENT STATE"
;

VALUE NCARER1F       
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"             
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO PROVIDER/UNKNOWN"
;

VALUE NCARER2F       
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"             
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO PROVIDER/UNKNOWN"
;

VALUE NCARER3F       
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"             
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO PROVIDER/UNKNOWN"
;

VALUE NCARER4F       
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"             
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO PROVIDER/UNKNOWN"
;

VALUE NCARER5F       
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"             
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO PROVIDER/UNKNOWN"
;

VALUE NCARER6F       
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"             
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO PROVIDER/UNKNOWN"
;

VALUE N_PRVRF       
.  =  ".  MISSING"
1  =  "1  1 "   
2  =  "2  2 " 
3  =  "3  3+"
;

VALUE PDATF
1  ='1  USABLE PROVIDER DATA'
2  ='2  NO USABLE PROVIDER DATA'
;

VALUE PROV_FAF     
.  =  ".  MISSING"
1  =  "1  ALL PUBLIC FACILITIES"
2  =  "2  ALL HOSPITAL FACILITIES"
3  =  "3  ALL PRIVATE FACILITIES"
4  =  "4  ALL MILITARY/OTHER FACILITIES"
5  =  "5  MIXED(ONE OR MORE OF ABOVE CATEGORIES)"
6  =  "6  TYPE OF FACILITY UNKNOWN"
;

VALUE P_U12VRF    
.  =  ".  MISSING"
1  =  "1  UTD"  
0  =  "0  NOT UTD" 
;

VALUE P_UTD33F     
.  =  ".  MISSING"
1  =  "1  UTD"  
0  =  "0  NOT UTD" 
;

VALUE P_UTD43F        
.  =  ".  MISSING"
1  =  "1  UTD"  
0  =  "0  NOT UTD" 
;

VALUE P_UTDHEF     
.  = ".  MISSING"
1  = "1  UTD"   
0  = "0  NOT UTD" 
;

VALUE P_UTDHIF      
.  = ".  MISSING"
1  = "1  UTD"   
0  = "0  NOT UTD" 
;

VALUE P_UTDMMF     
.  = ".  MISSING"
1  = "1  UTD"   
0  = "0  NOT UTD" 
;

VALUE P_UTDPOF          
.  = ".  MISSING"
1  = "1  UTD"   
0  = "0  NOT UTD" 
;

VALUE P_UTDT3F         
.  = ".  MISSING"
1  = "1  UTD"   
0  = "0  NOT UTD" 
;

VALUE P_UTDT4F      
.  = ".  MISSING"
1  = "1  UTD"   
0  = "0  NOT UTD" 
;

VALUE PUT4313F       
.  = ".  MISSING"
1  = "1  UTD"   
0  = "0  NOT UTD" 
;

VALUE PUTD431F          
.  =  ".  MISSING"
1  =  "1  UTD"  
0  =  "0  NOT UTD" 
;

VALUE RACEKIRF    
  1  =  "1  HISPANIC"        
  2  =  "2  WHITE, NON HISPANIC"
  3  =  "3  BLACK, NON HISPANIC"
  4  =  "4  ALL OTHER, NON HISPANIC"
;

VALUE RACEMORF    
  1  =  "1  HISPANIC"        
  2  =  "2  WHITE, NON HISPANIC"
  3  =  "3  BLACK, NON HISPANIC"
  4  =  "4  ALL OTHER, NON HISPANIC"
;

VALUE SEXF                 
  1  = "1  MALE"             
  2  = "2  FEMALE"
;

VALUE SHOTCARF
  1  = "1  SHOT CARD"
  2  = "2  NON SHOT CARD"
;

VALUE STATEF       
 1  =" 1  ALABAMA"
 2  =" 2  ALASKA"
 4  =" 4  ARIZONA"
 5  =" 5  ARKANSAS"
 6  =" 6  CALIFORNIA"
 8  =" 8  COLORADO"
 9  =" 9  CONNECTICUT"
10  ="10  DELAWARE"
11  ="11  DIST. OF COLUMBIA"
12  ="12  FLORIDA"
13  ="13  GEORGIA"
15  ="15  HAWAII"
16  ="16  IDAHO"
17  ="17  ILLINOIS"
18  ="18  INDIANA"
19  ="19  IOWA"
20  ="20  KANSAS"
21  ="21  KENTUCKY"
22  ="22  LOUISIANA"
23  ="23  MAINE"
24  ="24  MARYLAND"
25  ="25  MASSACHUSETTS"
26  ="26  MICHIGAN"
27  ="27  MINNESOTA"
28  ="28  MISSISSIPPI"
29  ="29  MISSOURI"
30  ="30  MONTANA"
31  ="31  NEBRASKA"
32  ="32  NEVADA"
33  ="33  NEW HAMPSHIRE"
34  ="34  NEW JERSEY"
35  ="35  NEW MEXICO"
36  ="36  NEW YORK"
37  ="37  NORTH CAROLINA"
38  ="38  NORTH DAKOTA"
39  ="39  OHIO"
40  ="40  OKLAHOMA"
41  ="41  OREGON"
42  ="42  PENNSYLVANIA"
44  ="44  RHODE ISLAND"
45  ="45  SOUTH CAROLINA"
46  ="46  SOUTH DAKOTA"
47  ="47  TENNESSEE"
48  ="48  TEXAS"
49  ="49  UTAH"
50  ="50  VERMONT"
51  ="51  VIRGINIA"
53  ="53  WASHINGTON"
54  ="54  WEST VIRGINIA"
55  ="55  WISCONSIN"
56  ="56  WYOMING" 
;

VALUE VFC_PROF     
.  =  ".  MISSING"
1  =  "1  ALL PROVIDERS"
2  =  "2  SOME BUT NOT ALL PROVIDERS"
3  =  "3  NO  PROVIDER"
4  =  "4  UNKNOWN"
;
RUN;

*----------------------------------*;
* D. CREATES PERMANENT SAS DATASET *;
*----------------------------------*;
data puf.nispuf98;
 infile in lrecl=1538 missover;
 input
SEQNUMC  $    0001 - 0006
SEQNUMHH $    0007 - 0011
HY_WGT	      0012 - 0021 .5
W0	      0022 - 0031 .5
YEAR	      0032 - 0035
PDAT	      0036 - 0036
ALL4SHOT      0037 - 0037
C_431	      0038 - 0038
C_4313	      0039 - 0039
C_DTP	      0040 - 0040
C_HEP	      0041 - 0041
C_HIB	      0042 - 0042
C_MMR	      0043 - 0043
C_POL	      0044 - 0044
C_VRC	      0045 - 0045
DTP_SOUR      0046 - 0046
FUL2_MMR      0047 - 0047
FULL_CPO      0048 - 0048
FULL_DTP      0049 - 0049
FULL_HEP      0050 - 0050
FULL_HIB      0051 - 0051
FULL_POL      0052 - 0052
HUTD4313      0053 - 0053
SHOTCARD      0054 - 0054
AGEGRP	      0055 - 0055
C1R	      0056 - 0057
C5R	      0058 - 0059
CEN_REG	      0060 - 0060
CHILDNM	      0061 - 0061
EDUC1	      0062 - 0062
ENTRY	      0063 - 0063
FRSTBRN	      0064 - 0064
INCPOV1R      0065 - 0065
INCOMER	      0066 - 0067
I_HISP_K      0068 - 0068
I_HISP_M      0069 - 0069
I_RACEKR      0070 - 0070
I_RACEMR      0071 - 0071
LANGUAGE      0072 - 0072
MARITAL	      0073 - 0073
MOBIL	      0074 - 0074
M_AGEGRP      0075 - 0075
RACEKIDR      0076 - 0076
RACEMOMR      0077 - 0077
SEX	      0078 - 0078
ITRUEIAP      0079 - 0080
STATE	      0081 - 0082
D6R	      0083 - 0083
D7	      0084 - 0084
DISPCODE      0085 - 0086
N_PRVR	      0087 - 0087
MEDHOME	      0088 - 0088
NCARER1	      0089 - 0089
NCARER2	      0090 - 0090
NCARER3	      0091 - 0091
NCARER4	      0092 - 0092
NCARER5	      0093 - 0093
NCARER6	      0094 - 0094
PROV_FAC      0095 - 0095
VFC_PRO	      0096 - 0096
HEP_BRTH      0097 - 0097
P_UTD431      0098 - 0098
PUTD4313      0099 - 0099
PUT43133      0100 - 0100
P_UTD331      0101 - 0101
P_U12VRC      0102 - 0102
P_UTDHEP      0103 - 0103
P_UTDHIB      0104 - 0104
P_UTDMCV      0105 - 0105
P_UTDMMX      0106 - 0106
P_UTDPOL      0107 - 0107
P_UTDTP3      0108 - 0108
P_UTDTP4      0109 - 0109
P_NUMDAH      0110 - 0110
P_NUMDHB      0111 - 0111
P_NUMDHM      0112 - 0112
P_NUMDHN      0113 - 0113
P_NUMDTA      0114 - 0114
P_NUMDTM      0115 - 0115
P_NUMDTP      0116 - 0116
P_NUMHEP      0117 - 0117
P_NUMHIB      0118 - 0118
P_NUMIPV      0119 - 0119
P_NUMMMR      0120 - 0120
P_NUMMMX      0121 - 0121
P_NUMOLN      0122 - 0122
P_NUMOPV      0123 - 0123
P_NUMPOL      0124 - 0124
P_NUMRB	      0125 - 0125
P_NUMTPM      0126 - 0126
P_NUMTPN      0127 - 0127
P_NUMVRC      0128 - 0128
VB11     $    0129 - 0158
VB12     $    0159 - 0188
VB13     $    0189 - 0218
VB21     $    0219 - 0248
VB22     $    0249 - 0278
VB23     $    0279 - 0308
VB31     $    0309 - 0338
VB32     $    0339 - 0368
VB33     $    0369 - 0398
VB41     $    0399 - 0428
VB42     $    0429 - 0458
VB43     $    0459 - 0488
VB51     $    0489 - 0518
VB52     $    0519 - 0548
VB53     $    0549 - 0578
DDTAH1	      0579 - 0582
DDTAH2	      0583 - 0586
DDTAH3	      0587 - 0590
DDTAH4	      0591 - 0594
DDTAH5	      0595 - 0598
DDTAH6	      0599 - 0602
DDTAH7	      0603 - 0606
DDTAH8	      0607 - 0610
DDTAP1	      0611 - 0614
DDTAP2	      0615 - 0618
DDTAP3	      0619 - 0622
DDTAP4	      0623 - 0626
DDTAP5	      0627 - 0630
DDTAP6	      0631 - 0634
DDTAP7	      0635 - 0638
DDTAP8	      0639 - 0642
DDTHM1	      0643 - 0646
DDTHM2	      0647 - 0650
DDTHM3	      0651 - 0654
DDTHM4	      0655 - 0658
DDTHM5	      0659 - 0662
DDTHM6	      0663 - 0666
DDTHM7	      0667 - 0670
DDTHM8	      0671 - 0674
DDTHN1	      0675 - 0678
DDTHN2	      0679 - 0682
DDTHN3	      0683 - 0686
DDTHN4	      0687 - 0690
DDTHN5	      0691 - 0694
DDTHN6	      0695 - 0698
DDTHN7	      0699 - 0702
DDTHN8	      0703 - 0706
DDTM1	      0707 - 0710
DDTM2	      0711 - 0714
DDTM3	      0715 - 0718
DDTM4	      0719 - 0722
DDTM5	      0723 - 0726
DDTM6	      0727 - 0730
DDTM7	      0731 - 0734
DDTM8	      0735 - 0738
DDTP1	      0739 - 0742
DDTP2	      0743 - 0746
DDTP3	      0747 - 0750
DDTP4	      0751 - 0754
DDTP5	      0755 - 0758
DDTP6	      0759 - 0762
DDTP7	      0763 - 0766
DDTP8	      0767 - 0770
DDTPHB1	      0771 - 0774
DDTPHB2	      0775 - 0778
DDTPHB3	      0779 - 0782
DDTPHB4	      0783 - 0786
DDTPHB5	      0787 - 0790
DDTPHB6	      0791 - 0794
DDTPHB7	      0795 - 0798
DDTPHB8	      0799 - 0802
DDTPM1	      0803 - 0806
DDTPM2	      0807 - 0810
DDTPM3	      0811 - 0814
DDTPM4	      0815 - 0818
DDTPM5	      0819 - 0822
DDTPM6	      0823 - 0826
DDTPM7	      0827 - 0830
DDTPM8	      0831 - 0834
DDTPN1	      0835 - 0838
DDTPN2	      0839 - 0842
DDTPN3	      0843 - 0846
DDTPN4	      0847 - 0850
DDTPN5	      0851 - 0854
DDTPN6	      0855 - 0858
DDTPN7	      0859 - 0862
DDTPN8	      0863 - 0866
DHEPB1	      0867 - 0870
DHEPB2	      0871 - 0874
DHEPB3	      0875 - 0878
DHEPB4	      0879 - 0882
DHEPB5	      0883 - 0886
DHEPB6	      0887 - 0890
DHEPB7	      0891 - 0894
DHEPB8	      0895 - 0898
DHIB1	      0899 - 0902
DHIB2	      0903 - 0906
DHIB3	      0907 - 0910
DHIB4	      0911 - 0914
DHIB5	      0915 - 0918
DHIB6	      0919 - 0922
DHIB7	      0923 - 0926
DHIB8	      0927 - 0930
DIPVM1	      0931 - 0934
DIPVM2	      0935 - 0938
DIPVM3	      0939 - 0942
DIPVM4	      0943 - 0946
DIPVM5	      0947 - 0950
DIPVM6	      0951 - 0954
DIPVM7	      0955 - 0958
DIPVM8	      0959 - 0962
DMMR1	      0963 - 0966
DMMR2	      0967 - 0970
DMMR3	      0971 - 0974
DMMR4	      0975 - 0978
DMMRX1	      0979 - 0982
DMMRX2	      0983 - 0986
DMMRX3	      0987 - 0990
DMMRX4	      0991 - 0994
DMP1	      0995 - 0998
DMP2	      0999 - 1002
DMP3	      1003 - 1006
DMP4	      1007 - 1010
DMPRB1	      1011 - 1014
DMPRB2	      1015 - 1018
DMPRB3	      1019 - 1022
DMPRB4	      1023 - 1026
DMS1	      1027 - 1030
DMS2	      1031 - 1034
DMS3	      1035 - 1038
DMS4	      1039 - 1042
DMSMP1	      1043 - 1046
DMSMP2	      1047 - 1050
DMSMP3	      1051 - 1054
DMSMP4	      1055 - 1058
DMSRB1	      1059 - 1062
DMSRB2	      1063 - 1066
DMSRB3	      1067 - 1070
DMSRB4	      1071 - 1074
DOPVM1	      1075 - 1078
DOPVM2	      1079 - 1082
DOPVM3	      1083 - 1086
DOPVM4	      1087 - 1090
DOPVM5	      1091 - 1094
DOPVM6	      1095 - 1098
DOPVM7	      1099 - 1102
DOPVM8	      1103 - 1106
DPOLIO1	      1107 - 1110
DPOLIO2	      1111 - 1114
DPOLIO3	      1115 - 1118
DPOLIO4	      1119 - 1122
DPOLIO5	      1123 - 1126
DPOLIO6	      1127 - 1130
DPOLIO7	      1131 - 1134
DPOLIO8	      1135 - 1138
DPOLN1	      1139 - 1142
DPOLN2	      1143 - 1146
DPOLN3	      1147 - 1150
DPOLN4	      1151 - 1154
DPOLN5	      1155 - 1158
DPOLN6	      1159 - 1162
DPOLN7	      1163 - 1166
DPOLN8	      1167 - 1170
DRB1	      1171 - 1174
DRB2	      1175 - 1178
DRB3	      1179 - 1182
DRB4	      1183 - 1186
DRB5	      1187 - 1190
DRB6	      1191 - 1194
DRB7	      1195 - 1198
DRB8	      1199 - 1202
DVRC1	      1203 - 1206
DVRC2	      1207 - 1210
DVRC3	      1211 - 1214
DVRC4	      1215 - 1218
DHA1_AGE      1219 - 1220
DHA2_AGE      1221 - 1222
DHA3_AGE      1223 - 1224
DHA4_AGE      1225 - 1226
DHA5_AGE      1227 - 1228
DHA6_AGE      1229 - 1230
DHA7_AGE      1231 - 1232
DHA8_AGE      1233 - 1234
DHB1_AGE      1235 - 1236
DHB2_AGE      1237 - 1238
DHB3_AGE      1239 - 1240
DHB4_AGE      1241 - 1242
DHB5_AGE      1243 - 1244
DHB6_AGE      1245 - 1246
DHB7_AGE      1247 - 1248
DHB8_AGE      1249 - 1250
DHM1_AGE      1251 - 1252
DHM2_AGE      1253 - 1254
DHM3_AGE      1255 - 1256
DHM4_AGE      1257 - 1258
DHM5_AGE      1259 - 1260
DHM6_AGE      1261 - 1262
DHM7_AGE      1263 - 1264
DHM8_AGE      1265 - 1266
DHN1_AGE      1267 - 1268
DHN2_AGE      1269 - 1270
DHN3_AGE      1271 - 1272
DHN4_AGE      1273 - 1274
DHN5_AGE      1275 - 1276
DHN6_AGE      1277 - 1278
DHN7_AGE      1279 - 1280
DHN8_AGE      1281 - 1282
DPM1_AGE      1283 - 1284
DPM2_AGE      1285 - 1286
DPM3_AGE      1287 - 1288
DPM4_AGE      1289 - 1290
DPM5_AGE      1291 - 1292
DPM6_AGE      1293 - 1294
DPM7_AGE      1295 - 1296
DPM8_AGE      1297 - 1298
DPN1_AGE      1299 - 1300
DPN2_AGE      1301 - 1302
DPN3_AGE      1303 - 1304
DPN4_AGE      1305 - 1306
DPN5_AGE      1307 - 1308
DPN6_AGE      1309 - 1310
DPN7_AGE      1311 - 1312
DPN8_AGE      1313 - 1314
DTA1_AGE      1315 - 1316
DTA2_AGE      1317 - 1318
DTA3_AGE      1319 - 1320
DTA4_AGE      1321 - 1322
DTA5_AGE      1323 - 1324
DTA6_AGE      1325 - 1326
DTA7_AGE      1327 - 1328
DTA8_AGE      1329 - 1330
DTM1_AGE      1331 - 1332
DTM2_AGE      1333 - 1334
DTM3_AGE      1335 - 1336
DTM4_AGE      1337 - 1338
DTM5_AGE      1339 - 1340
DTM6_AGE      1341 - 1342
DTM7_AGE      1343 - 1344
DTM8_AGE      1345 - 1346
DTP1_AGE      1347 - 1348
DTP2_AGE      1349 - 1350
DTP3_AGE      1351 - 1352
DTP4_AGE      1353 - 1354
DTP5_AGE      1355 - 1356
DTP6_AGE      1357 - 1358
DTP7_AGE      1359 - 1360
DTP8_AGE      1361 - 1362
HEP1_AGE      1363 - 1364
HEP2_AGE      1365 - 1366
HEP3_AGE      1367 - 1368
HEP4_AGE      1369 - 1370
HEP5_AGE      1371 - 1372
HEP6_AGE      1373 - 1374
HEP7_AGE      1375 - 1376
HEP8_AGE      1377 - 1378
HIB1_AGE      1379 - 1380
HIB2_AGE      1381 - 1382
HIB3_AGE      1383 - 1384
HIB4_AGE      1385 - 1386
HIB5_AGE      1387 - 1388
HIB6_AGE      1389 - 1390
HIB7_AGE      1391 - 1392
HIB8_AGE      1393 - 1394
IPV1_AGE      1395 - 1396
IPV2_AGE      1397 - 1398
IPV3_AGE      1399 - 1400
IPV4_AGE      1401 - 1402
IPV5_AGE      1403 - 1404
IPV6_AGE      1405 - 1406
IPV7_AGE      1407 - 1408
IPV8_AGE      1409 - 1410
MMR1_AGE      1411 - 1412
MMR2_AGE      1413 - 1414
MMR3_AGE      1415 - 1416
MMR4_AGE      1417 - 1418
MMX1_AGE      1419 - 1420
MMX2_AGE      1421 - 1422
MMX3_AGE      1423 - 1424
MMX4_AGE      1425 - 1426
MP1_AGE	      1427 - 1428
MP2_AGE	      1429 - 1430
MP3_AGE	      1431 - 1432
MP4_AGE	      1433 - 1434
MPR1_AGE      1435 - 1436
MPR2_AGE      1437 - 1438
MPR3_AGE      1439 - 1440
MPR4_AGE      1441 - 1442
MS1_AGE	      1443 - 1444
MS2_AGE	      1445 - 1446
MS3_AGE	      1447 - 1448
MS4_AGE	      1449 - 1450
MSM1_AGE      1451 - 1452
MSM2_AGE      1453 - 1454
MSM3_AGE      1455 - 1456
MSM4_AGE      1457 - 1458
MSR1_AGE      1459 - 1460
MSR2_AGE      1461 - 1462
MSR3_AGE      1463 - 1464
MSR4_AGE      1465 - 1466
OPV1_AGE      1467 - 1468
OPV2_AGE      1469 - 1470
OPV3_AGE      1471 - 1472
OPV4_AGE      1473 - 1474
OPV5_AGE      1475 - 1476
OPV6_AGE      1477 - 1478
OPV7_AGE      1479 - 1480
OPV8_AGE      1481 - 1482
PLN1_AGE      1483 - 1484
PLN2_AGE      1485 - 1486
PLN3_AGE      1487 - 1488
PLN4_AGE      1489 - 1490
PLN5_AGE      1491 - 1492
PLN6_AGE      1493 - 1494
PLN7_AGE      1495 - 1496
PLN8_AGE      1497 - 1498
POL1_AGE      1499 - 1500
POL2_AGE      1501 - 1502
POL3_AGE      1503 - 1504
POL4_AGE      1505 - 1506
POL5_AGE      1507 - 1508
POL6_AGE      1509 - 1510
POL7_AGE      1511 - 1512
POL8_AGE      1513 - 1514
RB1_AGE	      1515 - 1516
RB2_AGE	      1517 - 1518
RB3_AGE	      1519 - 1520
RB4_AGE	      1521 - 1522
RB5_AGE	      1523 - 1524
RB6_AGE	      1525 - 1526
RB7_AGE	      1527 - 1528
RB8_AGE	      1529 - 1530
VRC1_AGE      1531 - 1532
VRC2_AGE      1533 - 1534
VRC3_AGE      1535 - 1536
VRC4_AGE      1537 - 1538
;

*-------------------------------*;
* E. ASSIGN LABELS TO VARIABLES *;
*-------------------------------*;
label
AGEGRP   = "Age category of child (recode)"
ALL4SHOT = "4:3:1:3 up-to-date (HH report)"
C1R      = "Num. people living in household(recode)"
C5R      = "Respondent relationship to child(recode)"
CEN_REG  = "Census region based on state"
CHILDNM  = "Num. children < 18 years old (recode)"
C_4313   = "HH report of 4:3:1:3 UTD by shot card"
C_HEP    = "HH report of 3+ HepB UTD by shot card"
C_VRC    = "HH report of 1+ Varicella UTD by S.C."
C_431    = "HH report of 4:3:1 UTD by shot card"
C_DTP    = "HH report of 4+ DTP UTD by shot card"
C_POL    = "HH report of 3+ POLIO UTD by shot card"
C_MMR    = "HH report of 1+ MCV UTD by shot card"
C_HIB    = "HH report of 3+ HIB UTD by shot card"
D7       = "Consent to contact vaccination providers"
D6R      = "Number of providers identified (recode)"
DDTAH1   = "Age in days provider DTaP/Hib shot #1"
DDTAH2   = "Age in days provider DTaP/Hib shot #2"
DDTAH3   = "Age in days provider DTaP/Hib shot #3"
DDTAH4   = "Age in days provider DTaP/Hib shot #4"
DDTAH5   = "Age in days provider DTaP/Hib shot #5"
DDTAH6   = "Age in days provider DTaP/Hib shot #6"
DDTAH7   = "Age in days provider DTaP/Hib shot #7"
DDTAH8   = "Age in days provider DTaP/Hib shot #8"
DDTAP1   = "Age in days provider DTaP shot #1"
DDTAP2   = "Age in days provider DTaP shot #2"
DDTAP3   = "Age in days provider DTaP shot #3"
DDTAP4   = "Age in days provider DTaP shot #4"
DDTAP5   = "Age in days provider DTaP shot #5"
DDTAP6   = "Age in days provider DTaP shot #6"
DDTAP7   = "Age in days provider DTaP shot #7"
DDTAP8   = "Age in days provider DTaP shot #8"
DDTHM1   = "Age in days provider DTP/Hib shot #1"
DDTHM2   = "Age in days provider DTP/Hib shot #2"
DDTHM3   = "Age in days provider DTP/Hib shot #3"
DDTHM4   = "Age in days provider DTP/Hib shot #4"
DDTHM5   = "Age in days provider DTP/Hib shot #5"
DDTHM6   = "Age in days provider DTP/Hib shot #6"
DDTHM7   = "Age in days provider DTP/Hib shot #7"
DDTHM8   = "Age in days provider DTP/Hib shot #8"
DDTHN1   = "Age in days prov. DTP/Hib nomrk. shot #1"
DDTHN2   = "Age in days prov. DTP/Hib nomrk. shot #2"
DDTHN3   = "Age in days prov. DTP/Hib nomrk. shot #3"
DDTHN4   = "Age in days prov. DTP/Hib nomrk. shot #4"
DDTHN5   = "Age in days prov. DTP/Hib nomrk. shot #5"
DDTHN6   = "Age in days prov. DTP/Hib nomrk. shot #6"
DDTHN7   = "Age in days prov. DTP/Hib nomrk. shot #7"
DDTHN8   = "Age in days prov. DTP/Hib nomrk. shot #8"
DDTM1    = "Age in days provider DT shot #1"
DDTM2    = "Age in days provider DT shot #2"
DDTM3    = "Age in days provider DT shot #3"
DDTM4    = "Age in days provider DT shot #4"
DDTM5    = "Age in days provider DT shot #5"
DDTM6    = "Age in days provider DT shot #6"
DDTM7    = "Age in days provider DT shot #7"
DDTM8    = "Age in days provider DT shot #8"
DDTP1    = "Age in days prov DTP shot (all types) #1"
DDTP2    = "Age in days prov DTP shot (all types) #2"
DDTP3    = "Age in days prov DTP shot (all types) #3"
DDTP4    = "Age in days prov DTP shot (all types) #4"
DDTP5    = "Age in days prov DTP shot (all types) #5"
DDTP6    = "Age in days prov DTP shot (all types) #6"
DDTP7    = "Age in days prov DTP shot (all types) #7"
DDTP8    = "Age in days prov DTP shot (all types) #8"
DDTPHB1  = "Age in days prov DTP/Hib (all types) #1"
DDTPHB2  = "Age in days prov DTP/Hib (all types) #2"
DDTPHB3  = "Age in days prov DTP/Hib (all types) #3"
DDTPHB4  = "Age in days prov DTP/Hib (all types) #4"
DDTPHB5  = "Age in days prov DTP/Hib (all types) #5"
DDTPHB6  = "Age in days prov DTP/Hib (all types) #6"
DDTPHB7  = "Age in days prov DTP/Hib (all types) #7"
DDTPHB8  = "Age in days prov DTP/Hib (all types) #8"
DDTPM1   = "Age in days provider DTP shot #1"
DDTPM2   = "Age in days provider DTP shot #2"
DDTPM3   = "Age in days provider DTP shot #3"
DDTPM4   = "Age in days provider DTP shot #4"
DDTPM5   = "Age in days provider DTP shot #5"
DDTPM6   = "Age in days provider DTP shot #6"
DDTPM7   = "Age in days provider DTP shot #7"
DDTPM8   = "Age in days provider DTP shot #8"
DDTPN1   = "Age in days provider DTP nomrk. shot #1"
DDTPN2   = "Age in days provider DTP nomrk. shot #2"
DDTPN3   = "Age in days provider DTP nomrk. shot #3"
DDTPN4   = "Age in days provider DTP nomrk. shot #4"
DDTPN5   = "Age in days provider DTP nomrk. shot #5"
DDTPN6   = "Age in days provider DTP nomrk. shot #6"
DDTPN7   = "Age in days provider DTP nomrk. shot #7"
DDTPN8   = "Age in days provider DTP nomrk. shot #8"
DHA1_AGE = "Age in months provider DTAP/HIB shot #1"
DHA2_AGE = "Age in months provider DTAP/HIB shot #2"
DHA3_AGE = "Age in months provider DTAP/HIB shot #3"
DHA4_AGE = "Age in months provider DTAP/HIB shot #4"
DHA5_AGE = "Age in months provider DTAP/HIB shot #5"
DHA6_AGE = "Age in months provider DTAP/HIB shot #6"
DHA7_AGE = "Age in months provider DTAP/HIB shot #7"
DHA8_AGE = "Age in months provider DTAP/HIB shot #8"
DHB1_AGE = "Age in months provider DTP/Hib shot #1"
DHB2_AGE = "Age in months provider DTP/Hib shot #2"
DHB3_AGE = "Age in months provider DTP/Hib shot #3"
DHB4_AGE = "Age in months provider DTP/Hib shot #4"
DHB5_AGE = "Age in months provider DTP/Hib shot #5"
DHB6_AGE = "Age in months provider DTP/Hib shot #6"
DHB7_AGE = "Age in months provider DTP/Hib shot #7"
DHB8_AGE = "Age in months provider DTP/Hib shot #8"
DHEPB1   = "Age in days prov HEPB shot (all types)#1"
DHEPB2   = "Age in days prov HEPB shot (all types)#2"
DHEPB3   = "Age in days prov HEPB shot (all types)#3"
DHEPB4   = "Age in days prov HEPB shot (all types)#4"
DHEPB5   = "Age in days prov HEPB shot (all types)#5"
DHEPB6   = "Age in days prov HEPB shot (all types)#6"
DHEPB7   = "Age in days prov HEPB shot (all types)#7"
DHEPB8   = "Age in days prov HEPB shot (all types)#8"
DHIB1    = "Age in days prov Hib shot (all types) #1"
DHIB2    = "Age in days prov Hib shot (all types) #2"
DHIB3    = "Age in days prov Hib shot (all types) #3"
DHIB4    = "Age in days prov Hib shot (all types) #4"
DHIB5    = "Age in days prov Hib shot (all types) #5"
DHIB6    = "Age in days prov Hib shot (all types) #6"
DHIB7    = "Age in days prov Hib shot (all types) #7"
DHIB8    = "Age in days prov Hib shot (all types) #8"
DHM1_AGE = "Age in months provider DTP/Hib shot #1"
DHM2_AGE = "Age in months provider DTP/Hib shot #2"
DHM3_AGE = "Age in months provider DTP/Hib shot #3"
DHM4_AGE = "Age in months provider DTP/Hib shot #4"
DHM5_AGE = "Age in months provider DTP/Hib shot #5"
DHM6_AGE = "Age in months provider DTP/Hib shot #6"
DHM7_AGE = "Age in months provider DTP/Hib shot #7"
DHM8_AGE = "Age in months provider DTP/Hib shot #8"
DHN1_AGE = "Age in months prov DTP/Hib nomrk. shot#1"
DHN2_AGE = "Age in months prov DTP/Hib nomrk. shot#2"
DHN3_AGE = "Age in months prov DTP/Hib nomrk. shot#3"
DHN4_AGE = "Age in months prov DTP/Hib nomrk. shot#4"
DHN5_AGE = "Age in months prov DTP/Hib nomrk. shot#5"
DHN6_AGE = "Age in months prov DTP/Hib nomrk. shot#6"
DHN7_AGE = "Age in months prov DTP/Hib nomrk. shot#7"
DHN8_AGE = "Age in months prov DTP/Hib nomrk. shot#8"
DIPVM1   = "Age in days provider Polio/IPV shot #1"
DIPVM2   = "Age in days provider Polio/IPV shot #2"
DIPVM3   = "Age in days provider Polio/IPV shot #3"
DIPVM4   = "Age in days provider Polio/IPV shot #4"
DIPVM5   = "Age in days provider Polio/IPV shot #5"
DIPVM6   = "Age in days provider Polio/IPV shot #6"
DIPVM7   = "Age in days provider Polio/IPV shot #7"
DIPVM8   = "Age in days provider Polio/IPV shot #8"
DISPCODE = "NIS PRC Edit Program Disposition Code"
DMMR1    = "Age in days provider MCV shot #1"
DMMR2    = "Age in days provider MCV shot #2"
DMMR3    = "Age in days provider MCV shot #3"
DMMR4    = "Age in days provider MCV shot #4"
DMMRX1   = "Age in days of provider MMR shot #1"
DMMRX2   = "Age in days of provider MMR shot #2"
DMMRX3   = "Age in days of provider MMR shot #3"
DMMRX4   = "Age in days of provider MMR shot #4"
DMP1     = "Age in days of provider Mumps shot #1"
DMP2     = "Age in days of provider Mumps shot #2"
DMP3     = "Age in days of provider Mumps shot #3"
DMP4     = "Age in days of provider Mumps shot #4"
DMPRB1   = "Age in days prov. Mumps/Rubella shot #1"
DMPRB2   = "Age in days prov. Mumps/Rubella shot #2"
DMPRB3   = "Age in days prov. Mumps/Rubella shot #3"
DMPRB4   = "Age in days prov. Mumps/Rubella shot #4"
DMS1     = "Age in days provider Measles shot #1"
DMS2     = "Age in days provider Measles shot #2"
DMS3     = "Age in days provider Measles shot #3"
DMS4     = "Age in days provider Measles shot #4"
DMSMP1   = "Age in days prov. Measles/Mumps shot #1"
DMSMP2   = "Age in days prov. Measles/Mumps shot #2"
DMSMP3   = "Age in days prov. Measles/Mumps shot #3"
DMSMP4   = "Age in days prov. Measles/Mumps shot #4"
DMSRB1   = "Age in days provider Measles/Rubella #1"
DMSRB2   = "Age in days provider Measles/Rubella #2"
DMSRB3   = "Age in days provider Measles/Rubella #3"
DMSRB4   = "Age in days provider Measles/Rubella #4"
DOPVM1   = "Age in days provider Polio/OPV shot #1"
DOPVM2   = "Age in days provider Polio/OPV shot #2"
DOPVM3   = "Age in days provider Polio/OPV shot #3"
DOPVM4   = "Age in days provider Polio/OPV shot #4"
DOPVM5   = "Age in days provider Polio/OPV shot #5"
DOPVM6   = "Age in days provider Polio/OPV shot #6"
DOPVM7   = "Age in days provider Polio/OPV shot #7"
DOPVM8   = "Age in days provider Polio/OPV shot #8"
DPM1_AGE = "Age in months provider DTP shot #1"
DPM2_AGE = "Age in months provider DTP shot #2"
DPM3_AGE = "Age in months provider DTP shot #3"
DPM4_AGE = "Age in months provider DTP shot #4"
DPM5_AGE = "Age in months provider DTP shot #5"
DPM6_AGE = "Age in months provider DTP shot #6"
DPM7_AGE = "Age in months provider DTP shot #7"
DPM8_AGE = "Age in months provider DTP shot #8"
DPN1_AGE = "Age in months provider DTP nomrk. shot#1"
DPN2_AGE = "Age in months provider DTP nomrk. shot#2"
DPN3_AGE = "Age in months provider DTP nomrk. shot#3"
DPN4_AGE = "Age in months provider DTP nomrk. shot#4"
DPN5_AGE = "Age in months provider DTP nomrk. shot#5"
DPN6_AGE = "Age in months provider DTP nomrk. shot#6"
DPN7_AGE = "Age in months provider DTP nomrk. shot#7"
DPN8_AGE = "Age in months provider DTP nomrk. shot#8"
DPOLIO1  = "Age in days prov POLIO shot(all types)#1"
DPOLIO2  = "Age in days prov POLIO shot(all types)#2"
DPOLIO3  = "Age in days prov POLIO shot(all types)#3"
DPOLIO4  = "Age in days prov POLIO shot(all types)#4"
DPOLIO5  = "Age in days prov POLIO shot(all types)#5"
DPOLIO6  = "Age in days prov POLIO shot(all types)#6"
DPOLIO7  = "Age in days prov POLIO shot(all types)#7"
DPOLIO8  = "Age in days prov POLIO shot(all types)#8"
DPOLN1   = "Age in days prov POLIO nomrk. shot #1"
DPOLN2   = "Age in days prov POLIO nomrk. shot #2"
DPOLN3   = "Age in days prov POLIO nomrk. shot #3"
DPOLN4   = "Age in days prov POLIO nomrk. shot #4"
DPOLN5   = "Age in days prov POLIO nomrk. shot #5"
DPOLN6   = "Age in days prov POLIO nomrk. shot #6"
DPOLN7   = "Age in days prov POLIO nomrk. shot #7"
DPOLN8   = "Age in days prov POLIO nomrk. shot #8"
DRB1     = "Age in days provider Rubella shot #1"
DRB2     = "Age in days provider Rubella shot #2"
DRB3     = "Age in days provider Rubella shot #3"
DRB4     = "Age in days provider Rubella shot #4"
DRB5     = "Age in days provider Rubella shot #5"
DRB6     = "Age in days provider Rubella shot #6"
DRB7     = "Age in days provider Rubella shot #7"
DRB8     = "Age in days provider Rubella shot #8"
DTA1_AGE = "Age in months provider DTaP shot #1"
DTA2_AGE = "Age in months provider DTaP shot #2"
DTA3_AGE = "Age in months provider DTaP shot #3"
DTA4_AGE = "Age in months provider DTaP shot #4"
DTA5_AGE = "Age in months provider DTaP shot #5"
DTA6_AGE = "Age in months provider DTaP shot #6"
DTA7_AGE = "Age in months provider DTaP shot #7"
DTA8_AGE = "Age in months provider DTaP shot #8"
DTM1_AGE = "Age in months provider DT shot #1"
DTM2_AGE = "Age in months provider DT shot #2"
DTM3_AGE = "Age in months provider DT shot #3"
DTM4_AGE = "Age in months provider DT shot #4"
DTM5_AGE = "Age in months provider DT shot #5"
DTM6_AGE = "Age in months provider DT shot #6"
DTM7_AGE = "Age in months provider DT shot #7"
DTM8_AGE = "Age in months provider DT shot #8"
DTP1_AGE = "Age in months prov DTP (all types)shot#1"
DTP2_AGE = "Age in months prov DTP (all types)shot#2"
DTP3_AGE = "Age in months prov DTP (all types)shot#3"
DTP4_AGE = "Age in months prov DTP (all types)shot#4"
DTP5_AGE = "Age in months prov DTP (all types)shot#5"
DTP6_AGE = "Age in months prov DTP (all types)shot#6"
DTP7_AGE = "Age in months prov DTP (all types)shot#7"
DTP8_AGE = "Age in months prov DTP (all types)shot#8"
DTP_SOUR = "Shot card used for DTP reporting"
DVRC1    = "Age in days provider VARICELLA shot #1"
DVRC2    = "Age in days provider VARICELLA shot #2"
DVRC3    = "Age in days provider VARICELLA shot #3"
DVRC4    = "Age in days provider VARICELLA shot #4"
EDUC1    = "Education of mother categories"
ENTRY    = "Child lives in state with HepB state law"
FRSTBRN  = "First born status of child"
FUL2_MMR = "Household report of 1+ MMR at any age"
FULL_CPO = "HH report of 1+ Varicella at any age"
FULL_DTP = "Household report of 4+ DTP"
FULL_HEP = "Household report of 3+ Hepatitis B"
FULL_HIB = "Household report of 3+ Hib"
FULL_POL = "Household report of 3+ Polio"
HEP_BRTH = "Hepatitis B given at birth flag"
HEP1_AGE = "Age in months prov HEPB(all types)shot#1"
HEP2_AGE = "Age in months prov HEPB(all types)shot#2"
HEP3_AGE = "Age in months prov HEPB(all types)shot#3"
HEP4_AGE = "Age in months prov HEPB(all types)shot#4"
HEP5_AGE = "Age in months prov HEPB(all types)shot#5"
HEP6_AGE = "Age in months prov HEPB(all types)shot#6"
HEP7_AGE = "Age in months prov HEPB(all types)shot#7"
HEP8_AGE = "Age in months prov HEPB(all types)shot#8"
HIB1_AGE = "Age in months prov Hib (all types)shot#1"
HIB2_AGE = "Age in months prov Hib (all types)shot#2"
HIB3_AGE = "Age in months prov Hib (all types)shot#3"
HIB4_AGE = "Age in months prov Hib (all types)shot#4"
HIB5_AGE = "Age in months prov Hib (all types)shot#5"
HIB6_AGE = "Age in months prov Hib (all types)shot#6"
HIB7_AGE = "Age in months prov Hib (all types)shot#7"
HIB8_AGE = "Age in months prov Hib (all types)shot#8"
HUTD4313 = "Household report of 4:3:1:3 UTD"
HY_WGT   = "Modified Poststratificatn HHinterview WT"
INCPOV1R = "Poverty status(Recode)"
INCOMER   = "Family income categories (Recode) "
IPV1_AGE = "Age in months provider Polio/IPV shot #1"
IPV2_AGE = "Age in months provider Polio/IPV shot #2"
IPV3_AGE = "Age in months provider Polio/IPV shot #3"
IPV4_AGE = "Age in months provider Polio/IPV shot #4"
IPV5_AGE = "Age in months provider Polio/IPV shot #5"
IPV6_AGE = "Age in months provider Polio/IPV shot #6"
IPV7_AGE = "Age in months provider Polio/IPV shot #7"
IPV8_AGE = "Age in months provider Polio/IPV shot #8"
ITRUEIAP = "IAP area of current residence"
I_HISP_K = "Hispanic origin of child"
I_HISP_M = "Hispanic origin of mother"
I_RACEKR = "Race of child (Recode)"
I_RACEMR = "Race of mother (Recode)"
LANGUAGE = "Language the interview was conducted in"
MARITAL  = "Marital status of mother categories"
MEDHOME	 = "Was this facility ever child's medical home for primary care"
MMR1_AGE = "Age in months provider MCV shot #1"
MMR2_AGE = "Age in months provider MCV shot #2"
MMR3_AGE = "Age in months provider MCV shot #3"
MMR4_AGE = "Age in months provider MCV shot #4"
MMX1_AGE = "Age in months provider MMR shot #1"
MMX2_AGE = "Age in months provider MMR shot #2"
MMX3_AGE = "Age in months provider MMR shot #3"
MMX4_AGE = "Age in months provider MMR shot #4"
MOBIL    = "Mobility status"
MP1_AGE  = "Age in months of provider Mumps shot #1"
MP2_AGE  = "Age in months of provider Mumps shot #2"
MP3_AGE  = "Age in months of provider Mumps shot #3"
MP4_AGE  = "Age in months of provider Mumps shot #4"
MPR1_AGE = "Age in months prov Mumps/Rubella shot #1"
MPR2_AGE = "Age in months prov Mumps/Rubella shot #2"
MPR3_AGE = "Age in months prov Mumps/Rubella shot #3"
MPR4_AGE = "Age in months prov Mumps/Rubella shot #4"
MS1_AGE = "Age in months prov Measles-only shot #1"
MS2_AGE = "Age in months prov Measles-only shot #2"
MS3_AGE = "Age in months prov Measles-only shot #3"
MS4_AGE = "Age in months prov Measles-only shot #4"
MSM1_AGE = "Age in months prov Measles/Mumps shot #1"
MSM2_AGE = "Age in months prov Measles/Mumps shot #2"
MSM3_AGE = "Age in months prov Measles/Mumps shot #3"
MSM4_AGE = "Age in months prov Measles/Mumps shot #4"
MSR1_AGE = "Age in months prov Measl/Rubella shot #1"
MSR2_AGE = "Age in months prov Measl/Rubella shot #2"
MSR3_AGE = "Age in months prov Measl/Rubella shot #3"
MSR4_AGE = "Age in months prov Measl/Rubella shot #4"
M_AGEGRP = "Age of mother categories"
NCARER1  = "Child's providers offer comprehen care"
NCARER2  = "Child's providers offer acte illness care"
NCARER3  = "Child's providers offer follow up visits"
NCARER4  = "Child's providers offer after-hours phone"
NCARER5  = "Child's providers offer WIC prgrm/service"
NCARER6  = "Child's providers offer other services"
N_PRVR   = "Num. providers with vacc. data for child"
OPV1_AGE = "Age in months prov. Polio/OPV shot #1"
OPV2_AGE = "Age in months prov. Polio/OPV shot #2"
OPV3_AGE = "Age in months prov. Polio/OPV shot #3"
OPV4_AGE = "Age in months prov. Polio/OPV shot #4"
OPV5_AGE = "Age in months prov. Polio/OPV shot #5"
OPV6_AGE = "Age in months prov. Polio/OPV shot #6"
OPV7_AGE = "Age in months prov. Polio/OPV shot #7"
OPV8_AGE = "Age in months prov. Polio/OPV shot #8"
PDAT     = "Child has adequate provider data"
PLN1_AGE = "Age in months prov. Polio Nomrk. shot #1"
PLN2_AGE = "Age in months prov. Polio Nomrk. shot #2"
PLN3_AGE = "Age in months prov. Polio Nomrk. shot #3"
PLN4_AGE = "Age in months prov. Polio Nomrk. shot #4"
PLN5_AGE = "Age in months prov. Polio Nomrk. shot #5"
PLN6_AGE = "Age in months prov. Polio Nomrk. shot #6"
PLN7_AGE = "Age in months prov. Polio Nomrk. shot #7"
PLN8_AGE = "Age in months prov. Polio Nomrk. shot #8"
POL1_AGE = "Age in months prov Polio(all types)shot1"
POL2_AGE = "Age in months prov Polio(all types)shot2"
POL3_AGE = "Age in months prov Polio(all types)shot3"
POL4_AGE = "Age in months prov Polio(all types)shot4"
POL5_AGE = "Age in months prov Polio(all types)shot5"
POL6_AGE = "Age in months prov Polio(all types)shot6"
POL7_AGE = "Age in months prov Polio(all types)shot7"
POL8_AGE = "Age in months prov Polio(all types)shot8"
PROV_FAC = "Provider facility type"
PUT43133 = "UTD flag for provider 4:3:1:3:3"
PUTD4313 = "UTD flag for provider 4:3:1:3"
P_NUMDAH = "Num of DTaP/HIB shots, per prov(s)"
P_NUMDHB = "Num of DTP/HIB shots(all Types)per provs"
P_NUMDHM = "Num of DTP/HIB shots, per prov(s)"
P_NUMDHN = "Num of DTP/HIB Nomrk. shots, per prov(s)"
P_NUMDTA = "Number of DTaP shots, per prov(s)"
P_NUMDTM = "Number of DT shots, per prov(s)"
P_NUMDTP = "Number of DTP shots(all Types) per provs"
P_NUMHEP = "Num of Hep B shots(all Types) per provs"
P_NUMHIB = "Number of Hib shots(all Types) per provs"
P_NUMIPV = "Number of IPV shots, per prov(s)"
P_NUMMMR = "Number of MCV shots, per prov(s)"
P_NUMMMX = "Number of MMR shots, per prov(s)"
P_NUMOLN = "Number of POLIO Nomrk. shots,per prov(s)"
P_NUMOPV = "Number of OPV shots, per prov(s)"
P_NUMPOL = "Num of POLIO shots(all Types) per provs"
P_NUMRB  = "Number of Rubella shots, per prov(s)"
P_NUMTPM = "Number of DTP shots, per prov(s)"
P_NUMTPN = "Number of DTP Nomrk. shots, per prov(s)"
P_NUMVRC = "Number of Varicella shots, per prov(s)"
P_U12VRC = "UTD flag for 1+ Varicella at 12+ months"
P_UTD331 = "UTD (up-to-date) flag for prov 3:3:1"
P_UTD431 = "UTD (up-to-date) flag for prov 4:3:1"
P_UTDHEP = "UTD (up-to-date) flag for prov 3+ HepB"
P_UTDHIB = "UTD (up-to-date) flag for prov 3+ Hib"
P_UTDMCV = "UTD (up-to-date) flag for prov 1+ MCV"
P_UTDMMX = "UTD (up-to-date) flag for prov 1+ MMR"
P_UTDPOL = "UTD (up-to-date) flag for prov 3+ Polio"
P_UTDTP3 = "UTD (up-to-date) flag for prov 3+ DTP"
P_UTDTP4 = "UTD (up-to-date) flag for prov 4+ DTP"
RACEKIDR = "Race/Ethnicity of child (recode)"
RACEMOMR = "Race/Ethnicity of mother (recode)"
RB1_AGE  = "Age in months provider Rubella shot #1"
RB2_AGE  = "Age in months provider Rubella shot #2"
RB3_AGE  = "Age in months provider Rubella shot #3"
RB4_AGE  = "Age in months provider Rubella shot #4"
RB5_AGE  = "Age in months provider Rubella shot #5"
RB6_AGE  = "Age in months provider Rubella shot #6"
RB7_AGE  = "Age in months provider Rubella shot #7"
RB8_AGE  = "Age in months provider Rubella shot #8"
SEQNUMC  = "Unique Child Identifier"
SEQNUMHH = "Unique Household Identifier"
SEX      = "Gender of child"
SHOTCARD = "Shot card use flag"
STATE    = "State of residence (State FIPS Code)"
VB11     = "Verbatim, other shot #1 rptd by prov #1"
VB12     = "Verbatim, other shot #1 rptd by prov #2"
VB13     = "Verbatim, other shot #1 rptd by prov #3"
VB21     = "Verbatim, other shot #2 rptd by prov #1"
VB22     = "Verbatim, other shot #2 rptd by prov #2"
VB23     = "Verbatim, other shot #2 rptd by prov #3"
VB31     = "Verbatim, other shot #3 rptd by prov #1"
VB32     = "Verbatim, other shot #3 rptd by prov #2"
VB33     = "Verbatim, other shot #3 rptd by prov #3"
VB41     = "Verbatim, other shot #4 rptd by prov #1"
VB42     = "Verbatim, other shot #4 rptd by prov #2"
VB43     = "Verbatim, other shot #4 rptd by prov #3"
VB51     = "Verbatim, other shot #5 rptd by prov #1"
VB52     = "Verbatim, other shot #5 rptd by prov #2"
VB53     = "Verbatim, other shot #5 rptd by prov #3"
VFC_PRO  = "Part. of child's provs. in VFC prgrm."
VRC1_AGE = "Age in months provider Varicella shot #1"
VRC2_AGE = "Age in months provider Varicella shot #2"
VRC3_AGE = "Age in months provider Varicella shot #3"
VRC4_AGE = "Age in months provider Varicella shot #4"
W0       = "Imm. History Nonresponse Adjusted Weight"
YEAR     = "Year of interview"
;


*------------------------------------------------------------------*;
* F. ASSIGN FORMATS TO VARIABLES TO PRODUCE FORMATTED              *;
*    FREQUENCIES.                                                  *;
*    COMMENT OUT THIS SECTION IF YOU WANT UNFORMATTED FREQUENCIES. *;
*------------------------------------------------------------------*;
format
       AGEGRP     AGEGRPF.
       ALL4SHOT   ALL4SHOF.
       C1R        C1RF.
       C5R        C5RF.
       CEN_REG    CEN_REGF.
       CHILDNM    CHILDNMF.
       C_4313     C_4313F.
       C_HEP      C_HEPF.
       C_VRC      C_VRCF.
       C_431      C_431F.
       C_DTP      C_DTPF.
       C_POL      C_POLF.
       C_MMR      C_MMRF.
       C_HIB      C_HIBF.
       D6R        D6RF.
       D7         D7F.
       DTP_SOUR   DTP_SOUF.
       EDUC1      EDUC1F.
       ENTRY      ENTRYF.
       FRSTBRN    FRSTBRNF.
       FULL_CPO   FULL_CPF. 
       FULL_HEP   FULL_HEF.
       FULL_DTP   FULL_DTF.
       FULL_POL   FULL_POF.
       FULL_HIB   FULL_HIF.
       FUL2_MMR   FUL2_MMF.
       HEP_BRTH   HEP_BRTF.
       HUTD4313   HUTD431F.
       I_HISP_K   I_HISPKF.
       I_HISP_M   I_HISPMF.
       I_RACEKR   I_RACKRF.
       I_RACEMR   I_RACMRF.
       INCPOV1R   INCPV1RF.
       INCOMER    INCOMERF. 
       ITRUEIAP   ITRUEIAF.
       LANGUAGE   LANGUAGF.
       M_AGEGRP   M_AGEGRF.
       MARITAL    MARITALF.
       MEDHOME    MEDHOMEF.
       MOBIL      MOBILF.
       NCARER1    NCARER1F.
       NCARER2    NCARER2F.
       NCARER3    NCARER3F.
       NCARER4    NCARER4F.
       NCARER5    NCARER5F.
       NCARER6    NCARER6F.
       N_PRVR     N_PRVRF.
       PDAT       PDATF.
       PROV_FAC   PROV_FAF.
       P_U12VRC   P_U12VRF.
       P_UTD331   P_UTD33F.
       P_UTD431   P_UTD43F.
       P_UTDHEP   P_UTDHEF.
       P_UTDHIB   P_UTDHIF.
       P_UTDMMX   P_UTDMMF.
       P_UTDMCV   P_UTDMMF.
       P_UTDPOL   P_UTDPOF.
       P_UTDTP3   P_UTDT3F.
       P_UTDTP4   P_UTDT4F.
       PUT43133   PUT4313F.
       PUTD4313   PUTD431F.
       RACEKIDR   RACEKIRF.
       RACEMOMR   RACEMORF.
       SEX        SEXF.
       SHOTCARD   SHOTCARF.
       STATE      STATEF.
       VFC_PRO    VFC_PROF.
;
RUN;

*-----------------------------------*;
* G. PROC CONTENTS AND FREQUENCIES   ;
*-----------------------------------*;
proc contents data=puf.nispuf98;
RUN;

proc freq data=puf.nispuf98;
 tables agegrp;
 title1 '1998 NIS PUBLIC USE FILE';
 title2 'UNWEIGHTED FREQUENCIES';
RUN;

proc freq data=puf.nispuf98;
 tables agegrp;
 weight w0;
 title1 '1998 NIS PUBLIC USE FILE';
 title2 'WEIGHTED FREQUENCIES';
RUN;