*********************************************************************
 MAY 30, 2014  1:02 PM
 
 This is an example of a SAS program that creates a SAS
 file from the 2013 NHIS Public Use FAMILYXX.DAT ASCII file
 
 This is stored in FAMILYXX.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2013";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2013";

FILENAME ASCIIDAT 'C:\NHIS2013\FAMILYXX.dat';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"
     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH
      TO PERMANENTLY STORE THE FORMATS;

PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

   VALUE $GROUPC
      ' '< - HIGH   = "Range of Values"
   ;
   VALUE GROUPN
      LOW - HIGH   = "Range of Values"
   ;
   VALUE FAP001X
      10                 = "10 Household"
      20                 = "20 Person"
      25                 = "25 Income Imputation"
      30                 = "30 Sample Adult"
      38                 = "38 Functioning and Disability"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      63                 = "63 Family Disability Questions"
      65                 = "65 Paradata"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
   ;
   VALUE FAP002X
      .                   = '.'
      OTHER              = "Survey Year"
   ;
   VALUE FAP006X
      .                   = '.'
      OTHER              = "Completion Year"
      9998               = "9998 Not ascertained"
   ;
   VALUE FAP007X
      01                 = "01 January"
      02                 = "02 February"
      03                 = "03 March"
      04                 = "04 April"
      05                 = "05 May"
      06                 = "06 June"
      07                 = "07 July"
      08                 = "08 August"
      09                 = "09 September"
      10                 = "10 October"
      11                 = "11 November"
      12                 = "12 December"
      98                 = "98 Not ascertained"
   ;
   VALUE FAP008X
      1                  = "1 Gave telephone number"
      2                  = "2 No telephone"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE FAP009X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE FAP011X
      000                = "000 Less than 1 week"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE FAP013X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE FAP015X
      1                  = "1 All or almost all calls received on cell phones"
      2                  = 
"2 Some received on cell phones and some on regular phones"
      3                  = "3 Very few or none on cell phones"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE FAP016X
      1                  = "1 English"
      2                  = "2 Spanish"
      3                  = "3 English and Spanish"
      4                  = "4 Other"
      8                  = "8 Not ascertained"
   ;
   VALUE FAP020X
      1                  = "1 One adult, no child(ren) under 18"
      2                  = "2 Multiple adults, no child(ren) under 18"
      3                  = "3 One adult, 1+ child(ren) under 18"
      4                  = "4 Multiple adults, 1+ child(ren) under 18"
      9                  = "9 Unknown"
   ;
   VALUE FAP021X
      11                 = "11 Living alone"
      12                 = "12 Living with roommate(s)"
      21                 = "21 Married couple"
      22                 = "22 Unmarried couple"
      23                 = "23 All other adult-only families"
      31                 = 
"31 Mother and biological or non-biological child(ren) only"
      32                 = 
"32 Father and biological or non-biological child(ren) only"
      33                 = "33 All other single-adult and child(ren) families"
      41                 = 
"41 Married or unmarried parents with biological/adoptive child(ren) only"
      42                 = 
"42 Parent (biological or adoptive), step parent, and child(ren) only"
      43                 = 
"43 Parent (biological or adoptive), cohabiting partner, and child(ren) only"
      44                 = 
"44 At least 1 (biological or adoptive) parent and 1+ child(ren), and other rela
ted adults"
      45                 = 
"45 Other related and/or unrelated adults, 1+ child(ren), no biological or adopt
ive parent(s)"
      99                 = "99 Unknown"
   ;
   VALUE FAP022X
      11                 = "11 Living alone"
      12                 = "12 Living with roommate(s)"
      21                 = "21 Married couple"
      22                 = "22 Unmarried couple"
      23                 = "23 All other adult-only families"
      31                 = 
"31 Mother and biological or non-biological child(ren) only"
      32                 = 
"32 Father and biological or non-biological child(ren) only"
      33                 = "33 All other single-adult and child(ren) families"
      41                 = 
"41 Married parents with biological/adoptive child(ren) only"
      42                 = "42 Cohabiting parent(s) with child(ren) only"
      43                 = 
"43 Parent (biological or adoptive), step parent, and child(ren) only"
      44                 = 
"44 At least 1 (biological or adoptive) parent and 1+ child(ren), and other rela
ted adults"
      45                 = 
"45 Other related and/or unrelated adults, 1+ child(ren), no biological or adopt
ive parent(s)"
      99                 = "99 Unknown"
   ;
   VALUE FAP023X
      01                 = "01 Less than/equal to 8th grade"
      02                 = "02 9-12th grade, no high school diploma"
      03                 = "03 GED recipient"
      04                 = "04 High school graduate"
      05                 = "05 Some college, no degree"
      06                 = "06 AA degree, technical or vocational"
      07                 = "07 AA degree, academic program"
      08                 = "08 Bachelor's degree (BA, BS, AB, BBA)"
      09                 = "09 Master's, professional, or doctoral degree"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE FAP045X
      1                  = "1 Often true"
      2                  = "2 Sometimes true"
      3                  = "3 Never true"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE FAP061X
      1                  = "1 Original wording (FSLESS1, FSHUNGRY1, FSWEIGHT1)"
      2                  = "2 New wording (FSLESS2, FSHUNGRY2, FSWEIGHT2)"
   ;
   VALUE FAP089X
      1                  = "1 Very confident"
      2                  = "2 Somewhat confident"
      3                  = "3 Not too confident"
      4                  = "4 Not confident at all"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE FAP090X
      0                  = "0 Zero"
      1                  = "1 Less than $500"
      2                  = "2 $500-$1,999"
      3                  = "3 $2,000-$2,999"
      4                  = "4 $3,000-$4,999"
      5                  = "5 $5,000 or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE FAP123X
      01                 = "01 $0 - $34,999"
      02                 = "02 $35,000 - $49,999"
      03                 = "03 $50,000 - $74,999"
      04                 = "04 $75,000 - $99,999"
      05                 = "05 $100,000 and over"
      06                 = "06 $0 - $49,999 (no further detail)"
      07                 = "07 $50,000 and over (no further detail)"
      08                 = "08 $50,000 - $99,999 (no further detail)"
      99                 = "99 Unknown"
   ;
   VALUE FAP124X
      01                 = "01 $0 - $34,999"
      02                 = "02 $35,000 - $74,999"
      03                 = "03 $75,000 - $99,999"
      04                 = "04 $100,000 and over"
      96                 = "96 Undefined"
      99                 = "99 Unknown"
   ;
   VALUE FAP125X
      01                 = "01 Under 0.50"
      02                 = "02 0.50 - 0.74"
      03                 = "03 0.75 - 0.99"
      04                 = "04 1.00 - 1.24"
      05                 = "05 1.25 - 1.49"
      06                 = "06 1.50 - 1.74"
      07                 = "07 1.75 - 1.99"
      08                 = "08 2.00 - 2.49"
      09                 = "09 2.50 - 2.99"
      10                 = "10 3.00 - 3.49"
      11                 = "11 3.50 - 3.99"
      12                 = "12 4.00 - 4.49"
      13                 = "13 4.50 - 4.99"
      14                 = "14 5.00 and over"
      15                 = "15 Less than 1.00 (no further detail)"
      16                 = "16 1.00 - 1.99 (no further detail)"
      17                 = "17 2.00 and over (no further detail)"
      96                 = "96 Undefinable"
      99                 = "99 Unknown"
   ;
   VALUE FAP126X
      01                 = "01 Under 0.50"
      02                 = "02 0.50 - 0.74"
      03                 = "03 0.75 - 0.99"
      04                 = "04 1.00 - 1.24"
      05                 = "05 1.25 - 1.49"
      06                 = "06 1.50 - 1.74"
      07                 = "07 1.75 - 1.99"
      08                 = "08 2.00 - 2.49"
      09                 = "09 2.50 - 2.99"
      10                 = "10 3.00 - 3.49"
      11                 = "11 3.50 - 3.99"
      12                 = "12 4.00 - 4.49"
      13                 = "13 4.50 - 4.99"
      14                 = "14 5.00 and over"
      15                 = "15 Less than 1.00 (no further detail)"
      16                 = "16 1.00 - 1.99 (no further detail)"
      17                 = "17 2.00 - 3.99 (no further detail)"
      18                 = "18 4.00 and over (no further detail)"
      96                 = "96 Undefinable"
      99                 = "99 Unknown"
   ;
   VALUE FAP127X
      1                  = "1 Owned or being bought"
      2                  = "2 Rented"
      3                  = "3 Other arrangement"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;

DATA NHIS.FAMILYXX;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=221;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2
      WTFA_FAM   8

      /* FRT LENGTHS */

      FINT_Y_P   4   FINT_M_P   3

      /* COV LENGTHS */

      TELN_FLG   3   CURWRKN    3   RNOSERVN   3   RHLNGDY    4
      TELCELN    3   WRKCELN    3   CELLOUT    3   PHONEUSE   3

      /* BCK LENGTHS */

      FLNGINTV   3

      /* MFM LENGTHS */

      FM_SIZE    3   FM_KIDS    3   FM_ELDR    3   FM_TYPE    3
      FM_STRCP   3   FM_STRP    3   FM_EDUC1   3

      /* FHS LENGTHS */

      FCHLMYN    3   FCHLMCT    3   FSPEDYN    3   FSPEDCT    3
      FLAADLYN   3   FLAADLCT   3   FLIADLYN   3   FLIADLCT   3
      FWKLIMYN   3   FWKLIMCT   3   FWALKYN    3   FWALKCT    3
      FREMEMYN   3   FREMEMCT   3   FANYLYN    3   FANYLCT    3
      FHSTATEX   3   FHSTATVG   3   FHSTATG    3   FHSTATFR   3
      FHSTATPR   3

      /* FFS LENGTHS */

      FSRUNOUT   3   FSLAST     3   FSBALANC   3   FSSKIP     3
      FSSKDAYS   3   FSLESS     3   FSLESS1    3   FSLESS2    3
      FSHUNGRY   3   FSHUNGR1   3   FSHUNGR2   3   FSWEIGHT   3
      FSWEIGH1   3   FSWEIGH2   3   FSNOTEAT   3   FSNEDAYS   3
      FFS_FLG    3

      /* FAU LENGTHS */

      FDMEDYN    3   FDMEDCT    3   FNMEDYN    3   FNMEDCT    3
      FHOSP2YN   3   FHOSP2CT   3   FHCHMYN    3   FHCHMCT    3
      FHCPHRYN   3   FHCPHRCT   3   FHCDVYN    3   FHCDVCT    3
      F10DVYN    3   F10DVCT    3

      /* FHI LENGTHS */

      FHICOVYN   3   FHICOVCT   3   FHIPRVCT   3   FHISINCT   3
      FHICARCT   3   FHICADCT   3   FHICHPCT   3   FHIMILCT   3
      FHIIHSCT   3   FHIPUBCT   3   FHIOGVCT   3   FPRCOOH    3
      FHIEBCCT   3   COVCONF    3   FHICOST    3   FMEDBILL   3
      FMEDBPAY   3   FMEDBNOP   3   FSAF       3

      /* FSD LENGTHS */

      FHDSTCT    3   FDGLWCT1   3   FDGLWCT2   3   FWRKLWCT   3

      /* FIN LENGTHS */

      FSALYN     3   FSALCT     3   FSEINCYN   3   FSEINCCT   3
      FSSRRYN    3   FSSRRCT    3   FPENSYN    3   FPENSCT    3
      FOPENSYN   3   FOPENSCT   3   FSSIYN     3   FSSICT     3
      FTANFYN    3   FTANFCT    3   FOWBENYN   3   FOWBENCT   3
      FINTR1YN   3   FINTR1CT   3   FDIVDYN    3   FDIVDCT    3
      FCHSPYN    3   FCHSPCT    3   FINCOTYN   3   FINCOTCT   3
      INCGRP2    3   INCGRP3    3   RAT_CAT2   3   RAT_CAT3   3
      HOUSEOWN   3   FGAH       3   FSSAPLYN   3   FSSAPLCT   3
      FSDAPLYN   3   FSDAPLCT   3   FSNAP      3   FSNAPMYR   3
      FWICYN     3   FWICCT     3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    FMX      $   13 -  14
      WTFA_FAM     15 -  20

      /* FRT LOCATIONS */

      FINT_Y_P     21 -  24    FINT_M_P     25 -  26


      /* COV LOCATIONS */

      TELN_FLG     27 -  27    CURWRKN      28 -  28
      RNOSERVN     29 -  29    RHLNGDY      30 -  32
      TELCELN      33 -  33    WRKCELN      34 -  35
      CELLOUT      36 -  36    PHONEUSE     37 -  37


      /* BCK LOCATIONS */

      FLNGINTV     38 -  38

      /* MFM LOCATIONS */

      FM_SIZE      39 -  40    FM_KIDS      41 -  42
      FM_ELDR      43 -  44    FM_TYPE      45 -  45
      FM_STRCP     46 -  47    FM_STRP      48 -  49
      FM_EDUC1     50 -  51

      /* FHS LOCATIONS */

      FCHLMYN      52 -  52    FCHLMCT      53 -  54
      FSPEDYN      55 -  55    FSPEDCT      56 -  57
      FLAADLYN     58 -  58    FLAADLCT     59 -  60
      FLIADLYN     61 -  61    FLIADLCT     62 -  63
      FWKLIMYN     64 -  64    FWKLIMCT     65 -  66
      FWALKYN      67 -  67    FWALKCT      68 -  69
      FREMEMYN     70 -  70    FREMEMCT     71 -  72
      FANYLYN      73 -  73    FANYLCT      74 -  75
      FHSTATEX     76 -  77    FHSTATVG     78 -  79
      FHSTATG      80 -  81    FHSTATFR     82 -  83
      FHSTATPR     84 -  85

      /* FFS LOCATIONS */

      FSRUNOUT     86 -  86    FSLAST       87 -  87
      FSBALANC     88 -  88    FSSKIP       89 -  89
      FSSKDAYS     90 -  91    FSLESS       92 -  92
      FSLESS1      93 -  93    FSLESS2      94 -  94
      FSHUNGRY     95 -  95    FSHUNGR1     96 -  96
      FSHUNGR2     97 -  97    FSWEIGHT     98 -  98
      FSWEIGH1     99 -  99    FSWEIGH2    100 - 100
      FSNOTEAT    101 - 101    FSNEDAYS    102 - 103
      FFS_FLG     104 - 104

      /* FAU LOCATIONS */

      FDMEDYN     105 - 105    FDMEDCT     106 - 107
      FNMEDYN     108 - 108    FNMEDCT     109 - 110
      FHOSP2YN    111 - 111    FHOSP2CT    112 - 113
      FHCHMYN     114 - 114    FHCHMCT     115 - 116
      FHCPHRYN    117 - 117    FHCPHRCT    118 - 119
      FHCDVYN     120 - 120    FHCDVCT     121 - 122
      F10DVYN     123 - 123    F10DVCT     124 - 125

      /* FHI LOCATIONS */

      FHICOVYN    126 - 126    FHICOVCT    127 - 128
      FHIPRVCT    129 - 130    FHISINCT    131 - 132
      FHICARCT    133 - 134    FHICADCT    135 - 136
      FHICHPCT    137 - 138    FHIMILCT    139 - 140
      FHIIHSCT    141 - 142    FHIPUBCT    143 - 144
      FHIOGVCT    145 - 146    FPRCOOH     147 - 147
      FHIEBCCT    148 - 149    COVCONF     150 - 150
      FHICOST     151 - 151    FMEDBILL    152 - 152
      FMEDBPAY    153 - 153    FMEDBNOP    154 - 154
      FSAF        155 - 155

      /* FSD LOCATIONS */

      FHDSTCT     156 - 157    FDGLWCT1    158 - 159
      FDGLWCT2    160 - 161    FWRKLWCT    162 - 163

      /* FIN LOCATIONS */

      FSALYN      164 - 164    FSALCT      165 - 166
      FSEINCYN    167 - 167    FSEINCCT    168 - 169
      FSSRRYN     170 - 170    FSSRRCT     171 - 172
      FPENSYN     173 - 173    FPENSCT     174 - 175
      FOPENSYN    176 - 176    FOPENSCT    177 - 178
      FSSIYN      179 - 179    FSSICT      180 - 181
      FTANFYN     182 - 182    FTANFCT     183 - 184
      FOWBENYN    185 - 185    FOWBENCT    186 - 187
      FINTR1YN    188 - 188    FINTR1CT    189 - 190
      FDIVDYN     191 - 191    FDIVDCT     192 - 193
      FCHSPYN     194 - 194    FCHSPCT     195 - 196
      FINCOTYN    197 - 197    FINCOTCT    198 - 199
      INCGRP2     200 - 201    INCGRP3     202 - 203
      RAT_CAT2    204 - 205    RAT_CAT3    206 - 207
      HOUSEOWN    208 - 208    FGAH        209 - 209
      FSSAPLYN    210 - 210    FSSAPLCT    211 - 212
      FSDAPLYN    213 - 213    FSDAPLCT    214 - 215
      FSNAP       216 - 216    FSNAPMYR    217 - 218
      FWICYN      219 - 219    FWICCT      220 - 221;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="Household Number"
      FMX        ="Family Number"
      WTFA_FAM   ="Weight - Final Annual"

      /* FRT LABELS */

      FINT_Y_P   ="Year Interview Completed - Year"
      FINT_M_P   ="Date of Interview - Month"

      /* COV LABELS */

      TELN_FLG   ="Supplied telephone number"
      CURWRKN    ="Working phone inside home"
      RNOSERVN   ="Without telephone service in the past 12 months"
      RHLNGDY    ="Number of days without telephone service"
      TELCELN    ="Working cell phone in family"
      WRKCELN    ="Number of working cell phones"
      CELLOUT    ="Working cell during land-line outage"
      PHONEUSE   ="Received calls cell/landline/both"

      /* BCK LABELS */

      FLNGINTV   ="Language of Interview"

      /* MFM LABELS */

      FM_SIZE    ="Size of family"
      FM_KIDS    ="# family members under 18 years of age"
      FM_ELDR    ="# family members aged 65 and older"
      FM_TYPE    ="Family type"
      FM_STRCP   ="Family Structure"
      FM_STRP    ="Family Structure"
      FM_EDUC1   ="Education of adult with highest education in family"

      /* FHS LABELS */

      FCHLMYN    ="Any children under age 5 in family with play limitations?"
      FCHLMCT    ="# children under age 5 in family with play limitations"
      FSPEDYN    ="Any children in family receive Special Education/EIS?"
      FSPEDCT    ="# children in family receiving Special Education/EIS"
      FLAADLYN   ="Any family member need help with an ADL?"
      FLAADLCT   ="# family members needing help with an ADL"
      FLIADLYN   ="Any family member need help with an IADL?"
      FLIADLCT   ="# family members needing help with an IADL"
      FWKLIMYN   =
"Any family member have work limitations due to a health problem?"
      FWKLIMCT   =
"# family members with work limitations due to a health problem"
      FWALKYN    ="Any family member have difficulty walking without equipment?"
      FWALKCT    ="# family members having difficulty walking without equipment"
      FREMEMYN   ="Any family member limited by difficulty remembering?"
      FREMEMCT   ="# family members with difficulty remembering"
      FANYLYN    ="Is any family member limited in ANY WAY?"
      FANYLCT    ="# of family members with ANY limitation"
      FHSTATEX   ="# family members in excellent health"
      FHSTATVG   ="# family members in very good health"
      FHSTATG    ="# family members in good health"
      FHSTATFR   ="# family members in fair health"
      FHSTATPR   ="# family members in poor health"

      /* FFS LABELS */

      FSRUNOUT   ="Worried food would run out before got money to buy more"
      FSLAST     ="Food did not last before had money to get more"
      FSBALANC   ="Could not afford to eat balanced meals"
      FSSKIP     ="Cut size or skipped meals because not enough money"
      FSSKDAYS   ="Number of days cut size or skipped meals"
      FSLESS     =
"Eat less than felt should because not enough money (interview quarters 1 and 2 
of 2013)"
      FSLESS1    =
"Eat less than felt should because not enough money (Version 1 during interview 
quarters 3 and 4 of 2013)"
      FSLESS2    =
"Eat less than felt should because not enough money (Version 2 during interview 
quarters 3 and 4 of 2013)"
      FSHUNGRY   =
"Hungry but did not eat because not enough money (interview quarters 1 and 2 of 
2013)"
      FSHUNGR1   =
"Hungry but did not eat because not enough money (Version 1 during interview qua
rters 3 and 4 of 2013)"
      FSHUNGR2   =
"Hungry but did not eat because not enough money (Version 2 during interview qua
rters 3 and 4 of 2013)"
      FSWEIGHT   =
"Lose weight because not enough money for food (interview quarters 1 and 2 of 20
13)"
      FSWEIGH1   =
"Lose weight because not enough money for food (Version 1 during interview quart
ers 3 and 4 of 2013)"
      FSWEIGH2   =
"Lose weight because not enough money for food (Version 2 during interview quart
ers 3 and 4 of 2013)"
      FSNOTEAT   ="Not eat for a whole day because not enough money for food"
      FSNEDAYS   ="Number of days did not eat"
      FFS_FLG    ="Family food security split-ballot questions flag"

      /* FAU LABELS */

      FDMEDYN    ="Any family member delay seeking medical care, 12m?"
      FDMEDCT    ="# of family members for whom medical care was delayed, 12m"
      FNMEDYN    ="Any family member need and not get medical care, 12m?"
      FNMEDCT    =
"# of family members who needed and did not get medical care, 12m"
      FHOSP2YN   ="Any family member in hospital overnight, 12m?"
      FHOSP2CT   ="# of family members in hospital overnight, 12m"
      FHCHMYN    ="Any family member receive home care, 2wk?"
      FHCHMCT    ="# of family members who received home care, 2wk"
      FHCPHRYN   =
"Any family member get advice/test results over the phone, 2wk?"
      FHCPHRCT   =
"# of family members who got advice/test results over the phone, 2wk"
      FHCDVYN    ="Any family member have an office visit, etc., 2wk"
      FHCDVCT    ="# of family members who had an office visit, etc., 2wk"
      F10DVYN    ="Any family member receive care 10+ times, 12m?"
      F10DVCT    ="# of family members who received care 10+ times, 12m"

      /* FHI LABELS */

      FHICOVYN   ="Any family member have health insurance coverage?"
      FHICOVCT   ="Number of family members with health insurance coverage"
      FHIPRVCT   =
"Number of family members with private health insurance coverage"
      FHISINCT   ="Number of family members with single service plans"
      FHICARCT   ="Number of family members with Medicare"
      FHICADCT   ="Number of family members with Medicaid"
      FHICHPCT   ="Number of family members with SCHIP"
      FHIMILCT   =
"Number of family members with Military health insurance coverage"
      FHIIHSCT   ="Number of family members with Indian Health Service coverage"
      FHIPUBCT   =
"Number of family members with other state-sponsored health plan"
      FHIOGVCT   ="Number of family members with other government health plan"
      FPRCOOH    ="Any persons covered living outside of the household"
      FHIEBCCT   ="Number of family members with employer based coverage"
      COVCONF    ="Confidence in obtaining affordable coverage"
      FHICOST    ="Cost of family medical/dental care in the past 12 months"
      FMEDBILL   ="Problems paying or unable to pay any medical bills"
      FMEDBPAY   ="Medical bills being paid off over time"
      FMEDBNOP   ="Unable to pay medical bills"
      FSAF       ="Family has a Flexible Spending Account"

      /* FSD LABELS */

      FHDSTCT    ="# of children in family currently or ever in Head Start"
      FDGLWCT1   ="# family members working last week"
      FDGLWCT2   ="# family members looking for work last week"
      FWRKLWCT   ="# family members working full time last week"

      /* FIN LABELS */

      FSALYN     ="Any family member receive income from wages or salary?"
      FSALCT     ="# family members receiving income from wages or salary"
      FSEINCYN   ="Any family member receive income from self-employment?"
      FSEINCCT   ="# family members receiving income from self-employment"
      FSSRRYN    =
"Any family member receive Social Security or Railroad Retirement income?"
      FSSRRCT    =
"# family members receiving Social Security or Railroad Retirement income"
      FPENSYN    =
"Any family members receive disability pensions (See file layout)"
      FPENSCT    =
"# family members receiving disability pensions (See file layout)"
      FOPENSYN   =
"Any family member receive other survivor or retirement pensions?"
      FOPENSCT   =
"# family members receiving other survivor or retirement pension"
      FSSIYN     ="Any family member receive income from SSI?"
      FSSICT     ="# of family members receiving income from SSI"
      FTANFYN    =
"Any family member receive income from a state or county welfare program?"
      FTANFCT    =
"# of family members receiving income from a state or county welfare program"
      FOWBENYN   ="Any family member receive other kind of welfare assistance?"
      FOWBENCT   =
"# of family members receiving other kind of welfare assistance"
      FINTR1YN   =
"Any family member receive income from interest bearing accounts, funds, etc.?"
      FINTR1CT   =
"# of family members receiving income from interest bearing accounts, funds, etc
."
      FDIVDYN    ="Any family member receive dividends from stocks, etc.?"
      FDIVDCT    ="# of family members receiving dividends from stocks, etc."
      FCHSPYN    ="Any family member receive child support income?"
      FCHSPCT    ="# of family members for whom child support was received"
      FINCOTYN   ="Any family member receive income from any other source?"
      FINCOTCT   ="# of family members receiving income from any other source"
      INCGRP2    ="Total combined family income (grouped)"
      INCGRP3    ="Total combined family income (grouped)"
      RAT_CAT2   ="Ratio of family income to the poverty threshold"
      RAT_CAT3   ="Ratio of family income to the poverty threshold"
      HOUSEOWN   ="Home tenure status"
      FGAH       ="Paying lower rent due to government program"
      FSSAPLYN   ="Any family member ever apply for SSI?"
      FSSAPLCT   ="# family members ever applying for SSI"
      FSDAPLYN   ="Any family member ever apply for SSDI?"
      FSDAPLCT   ="# family members ever applying for SSDI"
      FSNAP      =
"Any family member receive food stamp/SNAP benefits last calendar year?"
      FSNAPMYR   =
"Number of months family received food stamps/SNAP benefits, last calendar year"
      FWICYN     ="Any family member receiving WIC benefits?"
      FWICCT     ="# family members receiving WIC benefits"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE   FAP001X.   SRVY_YR   FAP002X.   HHX       $GROUPC.
      WTFA_FAM  GROUPN.

      /* FRT FORMAT ASSOCIATIONS */

      FINT_Y_P  FAP006X.   FINT_M_P  FAP007X.

      /* COV FORMAT ASSOCIATIONS */

      TELN_FLG  FAP008X.   CURWRKN   FAP009X.   RNOSERVN  FAP009X.
      RHLNGDY   FAP011X.   TELCELN   FAP009X.   WRKCELN   FAP013X.
      CELLOUT   FAP009X.   PHONEUSE  FAP015X.

      /* BCK FORMAT ASSOCIATIONS */

      FLNGINTV  FAP016X.

      /* MFM FORMAT ASSOCIATIONS */

      FM_TYPE   FAP020X.   FM_STRCP  FAP021X.   FM_STRP   FAP022X.
      FM_EDUC1  FAP023X.

      /* FHS FORMAT ASSOCIATIONS */

      FCHLMYN   FAP009X.   FSPEDYN   FAP009X.   FLAADLYN  FAP009X.
      FLIADLYN  FAP009X.   FWKLIMYN  FAP009X.   FWALKYN   FAP009X.
      FREMEMYN  FAP009X.   FANYLYN   FAP009X.

      /* FFS FORMAT ASSOCIATIONS */

      FSRUNOUT  FAP045X.   FSLAST    FAP045X.   FSBALANC  FAP045X.
      FSSKIP    FAP009X.   FSSKDAYS  FAP013X.   FSLESS    FAP009X.
      FSLESS1   FAP009X.   FSLESS2   FAP009X.   FSHUNGRY  FAP009X.
      FSHUNGR1  FAP009X.   FSHUNGR2  FAP009X.   FSWEIGHT  FAP009X.
      FSWEIGH1  FAP009X.   FSWEIGH2  FAP009X.   FSNOTEAT  FAP009X.
      FSNEDAYS  FAP013X.   FFS_FLG   FAP061X.

      /* FAU FORMAT ASSOCIATIONS */

      FDMEDYN   FAP009X.   FNMEDYN   FAP009X.   FHOSP2YN  FAP009X.
      FHCHMYN   FAP009X.   FHCPHRYN  FAP009X.   FHCDVYN   FAP009X.
      F10DVYN   FAP009X.

      /* FHI FORMAT ASSOCIATIONS */

      FHICOVYN  FAP009X.   FPRCOOH   FAP009X.   COVCONF   FAP089X.
      FHICOST   FAP090X.   FMEDBILL  FAP009X.   FMEDBPAY  FAP009X.
      FMEDBNOP  FAP009X.   FSAF      FAP009X.

      /* FSD FORMAT ASSOCIATIONS */



      /* FIN FORMAT ASSOCIATIONS */

      FSALYN    FAP009X.   FSEINCYN  FAP009X.   FSSRRYN   FAP009X.
      FPENSYN   FAP009X.   FOPENSYN  FAP009X.   FSSIYN    FAP009X.
      FTANFYN   FAP009X.   FOWBENYN  FAP009X.   FINTR1YN  FAP009X.
      FDIVDYN   FAP009X.   FCHSPYN   FAP009X.   FINCOTYN  FAP009X.
      INCGRP2   FAP123X.   INCGRP3   FAP124X.   RAT_CAT2  FAP125X.
      RAT_CAT3  FAP126X.   HOUSEOWN  FAP127X.   FGAH      FAP009X.
      FSSAPLYN  FAP009X.   FSDAPLYN  FAP009X.   FSNAP     FAP009X.
      FSNAPMYR  FAP013X.   FWICYN    FAP009X.;
RUN;

PROC CONTENTS DATA=NHIS.FAMILYXX;
   TITLE1 'CONTENTS OF THE 2013 NHIS Family FILE';

PROC FREQ DATA=NHIS.FAMILYXX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Family FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_FAM;

PROC FREQ DATA=NHIS.FAMILYXX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2013 NHIS Family FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
