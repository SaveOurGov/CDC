*********************************************************************
 JULY 21, 2005
 
 THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
 FILE FROM THE 2004 NHIS Public Use PERSONSX.DAT ASCII FILE
 
 THIS IS STORED IN PERSONSX.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2004";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2004";

FILENAME ASCIIDAT 'C:\NHIS2004\PERSONSX.DAT';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"
     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH
      TO PERMANENTLY STORE THE FORMATS.;

PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

   VALUE $GROUPC
      ' '< - HIGH   = "All Values"
   ;
   VALUE GROUPN
      LOW - HIGH   = "All Values"
   ;
   VALUE PEP001X
      10                 = "10 Household"
      20                 = "20 Person"
      30                 = "30 Sample Adult"
      40                 = "40 Sample Child"
      60                 = "60 Family"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
   ;
   VALUE PEP002X
      2004               = "2004"
   ;
   VALUE PEP008X
   ;
   VALUE PEP009X
   ;
   VALUE PEP010X
      1                  = "1 Male"
      2                  = "2 Female"
   ;
   VALUE PEP011X
      1                  = "1 Yes"
      2                  = "2 No"
   ;
   VALUE PEP012X
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic origin given by respondent/proxy"
   ;
   VALUE PEP013X
      1                  = "1 Imputed: was 'refused' Hispanic Origin"
      2                  = "2 Imputed: was 'not ascertained' Hispanic Origin"
      3                  = "3 Imputed: was 'does not know' Hispanic Origin"
      4                  = "4 Hispanic Origin type given by respondent/proxy"
   ;
   VALUE PEP014X
      00                 = "00 Multiple Hispanic"
      01                 = "01 Puerto Rico"
      02                 = "02 Mexican"
      03                 = "03 Mexican-American"
      04                 = "04 Cuban/Cuban American"
      05                 = "05 Dominican (Republic)"
      06                 = "06 Central or South American"
      07                 = "07 Other Latin American, type not specified"
      08                 = "08 Other Spanish"
      09                 = "09 Hispanic/Latino/Spanish, non-specific type"
      10                 = "10 Hispanic/Latino/Spanish, type refused"
      11                 = "11 Hispanic/Latino/Spanish, type not ascertained"
      12                 = "12 Not Hispanic/Spanish origin"
   ;
   VALUE PEP015X
      01                 = "01 White only"
      02                 = "02 Black/African American only"
      03                 = "03 AIAN only"
      04                 = "04 Asian only"
      05                 = "05 Race group not releasable (See file layout)"
      06                 = "06 Multiple race"
   ;
   VALUE PEP016X
      1                  = "1 Imputed: was 'refused'"
      2                  = "2 Imputed: was 'not ascertained'"
      3                  = "3 Imputed: was 'does not know'"
      4                  = "4 Imputed: was other race'"
      5                  = "5 Imputed: was 'unspecified multiple race'"
      6                  = "6 Race given by respondent/proxy"
   ;
   VALUE PEP017X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American), Alaska Native"
      09                 = "09 Asian Indian"
      10                 = "10 Chinese"
      11                 = "11 Filipino"
      15                 = "15 Other Asian (See file layout)"
      16                 = "16 Primary race not releasable (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE PEP018X
      01                 = "01 White"
      02                 = "02 Black/African American"
      03                 = "03 Indian (American) (includes Eskimo, Aleut)"
      06                 = "06 Chinese"
      07                 = "07 Filipino"
      12                 = "12 Asian Indian"
      16                 = "16 Other race (See file layout)"
      17                 = "17 Multiple race, no primary race selected"
   ;
   VALUE PEP019X
      1                  = "1 White"
      2                  = "2 Black"
      3                  = "3 All other race groups (See file layout)"
   ;
   VALUE PEP020X
      1                  = "1 Hispanic"
      2                  = "2 Non-Hispanic White"
      3                  = "3 Non-Hispanic Black"
      4                  = "4 Non-Hispanic All other race groups"
   ;
   VALUE PEP021X
      1                  = "1 Ethnicity/race imputed"
      2                  = "2 Ethnicity/race given by respondent/proxy"
   ;
   VALUE PEP022X
      1                  = "1 Armed Forces"
      2                  = "2 Not Armed Forces"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP023X
      01                 = "01 Household reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = "
08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      13                 = "13 Housemate/roommate"
      14                 = "14 Roomer/Boarder"
      15                 = "15 Other nonrelative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $PEP024X
      "8"                = "8 Not ascertained"
      "P"                = "P HH Reference person"
   ;
   VALUE $PEP025X
      "01"               = "01 January"
      "02"               = "02 February"
      "03"               = "03 March"
      "04"               = "04 April"
      "05"               = "05 May"
      "06"               = "06 June"
      "07"               = "07 July"
      "08"               = "08 August"
      "09"               = "09 September"
      "10"               = "10 October"
      "11"               = "11 November"
      "12"               = "12 December"
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
   ;
   VALUE $PEP026X
      "1919"             = "1919 or before"
      "9997"             = "9997 Refused"
      "9998"             = "9998 Not ascertained"
      "9999"             = "9999 Don't know"
   ;
   VALUE PEP027X
      00                 = "00 Under 1 year"
      85                 = "85 85+ years"
   ;
   VALUE PEP028X
      01                 = "01 Family reference person"
      02                 = "02 Spouse (husband/wife)"
      03                 = "03 Unmarried Partner"
      04                 = "04 Child (biological/adoptive/in-law/step/foster)"
      05                 = "05 Child of partner"
      06                 = "06 Grandchild"
      07                 = "07 Parent (biological/adoptive/in-law/step/foster)"
      08                 = "
08 Brother/sister (biological/adoptive/in-law/step/foster)"
      09                 = "09 Grandparent (Grandmother/Grandfather)"
      10                 = "10 Aunt/Uncle"
      11                 = "11 Niece/Nephew"
      12                 = "12 Other relative"
      16                 = "16 Legal guardian"
      17                 = "17 Ward"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $PEP029X
      "8"                = "8 Not ascertained"
      "B"                = "B Family respondent"
   ;
   VALUE $PEP030X
      "8"                = "8 Not ascertained"
      "P"                = "P Family reference person"
   ;
   VALUE PEP031X
      0                  = "0 Under 14 years"
      1                  = "1 Married - spouse in household"
      2                  = "2 Married - spouse not in household"
      3                  = "3 Married - spouse in household unknown"
      4                  = "4 Widowed"
      5                  = "5 Divorced"
      6                  = "6 Separated"
      7                  = "7 Never married"
      8                  = "8 Living with partner"
      9                  = "9 Unknown marital status"
   ;
   VALUE PEP032X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP033X
      1                  = "1 Married"
      2                  = "2 Widowed"
      3                  = "3 Divorced"
      4                  = "4 Separated"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP034X
      1                  = "1 Separated"
      2                  = "2 Divorced"
      3                  = "3 Married"
      4                  = "4 Single/never married"
      5                  = "5 Widowed"
      9                  = "9 Unknown marital status"
   ;
   VALUE PEP035X
      1                  = "1 Full {brother/sister}"
      2                  = "2 Half {brother/sister}"
      3                  = "3 Adopted {brother/sister}"
      4                  = "4 Step {brother/sister}"
      5                  = "5 Foster {brother/sister}"
      6                  = "6 {Brother/Sister}-in-law"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP036X
      00                 = "00 Mother not a household member"
      96                 = "96 Has legal guardian"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP037X
      1                  = "1 Biological"
      2                  = "2 Adoptive"
      3                  = "3 Step"
      4                  = "4 Foster"
      5                  = "5 In-law"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP038X
      00                 = "00 Father not in household"
      96                 = "96 Has legal guardian"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP040X
      1                  = "1 Mother, no father"
      2                  = "2 Father, no mother"
      3                  = "3 Mother and father"
      4                  = "4 Neither mother nor father"
      9                  = "9 Unknown"
   ;
   VALUE PEP041X
      01                 = "01 Less/equal to 8th grade"
      02                 = "02 9-12th grade, no high school diploma"
      03                 = "03 High school graduate/GED recipient"
      04                 = "04 Some college, no degree"
      05                 = "05 AA degree, technical or vocational"
      06                 = "06 AA degree, academic program"
      07                 = "07 Bachelor's degree"
      08                 = "08 Master's, professional, or doctoral degree"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP043X
      0                  = "0 Sample Adult - no record"
      1                  = "1 Sample Adult - has record"
      2                  = "2 Not selected as Sample Adult"
      3                  = "3 No one selected as Sample Adult"
      4                  = "4 Armed Force member"
      5                  = "5 Armed Force member - selected as Sample Adult"
   ;
   VALUE PEP044X
      0                  = "0 Sample Child - no record"
      1                  = "1 Sample Child - has record"
      2                  = "2 Not selected as Sample Child"
      3                  = "3 No one selected as Sample Child"
      4                  = "4 Emancipated minor"
   ;
   VALUE PEP058X
      0                  = "0 Unable to work"
      1                  = "1 Limited in work"
      2                  = "2 Not limited in work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't Know"
   ;
   VALUE PEP061X
      0                  = "0 Limitation previously mentioned"
      1                  = "1 Yes, limited in some other way"
      2                  = "2 Not limited in any way"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP062X
      1                  = "1 Limited in any way"
      2                  = "2 Not limited in any way"
      3                  = "3 Unknown if limited"
   ;
   VALUE PEP063X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP078X
      95                 = "95 95+"
      96                 = "96 Since birth"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP079X
      1                  = "1 Day(s)"
      2                  = "2 Week(s)"
      3                  = "3 Month(s)"
      4                  = "4 Year(s)"
      6                  = "6 Since birth"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP080X
      00                 = "00 Less than 1 year"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP081X
      0                  = "0 Since birth and child <1 year of age"
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP082X
      1                  = "1 Chronic"
      2                  = "2 Not chronic"
      9                  = "9 Unknown if chronic"
   ;
   VALUE PEP191X
      00                 = "00 Less than 1 year"
      85                 = "85 85+ years"
      96                 = "96 Unknown number of years"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP192X
      1                  = "1 Less than 3 months"
      2                  = "2 3-5 months"
      3                  = "3 6-12 months"
      4                  = "4 More than 1 year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP369X
      1                  = "1 At least one condition causing LA is chronic"
      2                  = "2 No condition causing LA is chronic"
      9                  = "9 Unk if any condition causing LA is chronic"
   ;
   VALUE PEP370X
      0                  = "0 Not limited in any way (incl unk if limited)"
      1                  = "1 Limited; caused by at least one chronic cond"
      2                  = "2 Limited; not caused by chronic cond"
      3                  = "3 Limited; unk if cond is chronic"
   ;
   VALUE PEP371X
      1                  = "1 Excellent"
      2                  = "2 Very good"
      3                  = "3 Good"
      4                  = "4 Fair"
      5                  = "5 Poor"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP375X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE PEP376X
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE PEP378X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP380X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP382X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP384X
      1                  = "1 Not covered"
      2                  = "2 Covered"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP385X
      1                  = "1 Yes, information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP386X
      1                  = "1 Part A - Hospital only"
      2                  = "2 Part B - Medical only"
      3                  = "3 Both Part A and Part B"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP389X
      04                 = "04 Medigap plan"
      12                 = "12 Group"
      22                 = "22 Staff"
      32                 = "32 IPA"
      92                 = "92 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP394X
      1                  = "1  Any doctor"
      2                  = "2  Select from book/list"
      3                  = "3  Doctor is assigned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP397X
      1                  = "1 Yes, with information"
      2                  = "2 Yes, but no information"
      3                  = "3 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP411X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP412X
      1                  = "1 In own name"
      2                  = "2 Someone else in family"
      3                  = "3 Person not in household"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP413X
      01                 = "01 Through employer"
      02                 = "02 Through union"
      03                 = "
03 Through workplace, but don't know if employer or union"
      04                 = "
04 Through workplace, self-employed or professional association"
      05                 = "05 Purchased directly"
      06                 = "
06 Through a state/local government or community program"
      07                 = "07 Other"
      08                 = "08 Through school"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP421X
      20000              = "20000 $20,000 or more"
      99997              = "99997 Refused"
      99998              = "99998 Not ascertained"
      99999              = "99999 Don't know"
   ;
   VALUE PEP422X
      1                  = "1 HMO/IPA"
      2                  = "2 PPO"
      3                  = "3 POS"
      4                  = "4 Fee-for-service/indemnity"
      5                  = "5 Other"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP423X
      1                  = "1 Any doctor"
      2                  = "2 Select from group/list"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP463X
      1                  = "1 TRICARE Prime"
      2                  = "2 TRICARE Extra"
      3                  = "3 TRICARE Standard"
      4                  = "4 TRICARE for life"
      5                  = "5 TRICARE other (specify)"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP465X
      1                  = "1 6 months or less"
      2                  = "2 More than 6 months, but not more than 1 year ago"
      3                  = "3 More than 1 year, but not more than 3 years ago"
      4                  = "4 More than 3 years"
      5                  = "5 Never"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP482X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP483X
      0                  = "0 Zero"
      1                  = "1 Less than $500"
      2                  = "2 $500 - $1,999"
      3                  = "3 $2,000 - $2,999"
      4                  = "4 $3,000 - $4,999"
      5                  = "5 $5,000 or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP499X
      01                 = "01 United States"
      02                 = "02 Mexico, Central America, Caribbean Islands"
      03                 = "03 South America"
      04                 = "04 Europe"
      05                 = "05 Russia (and former USSR areas)"
      06                 = "06 Africa"
      07                 = "07 Middle East"
      08                 = "08 Indian Subcontinent"
      09                 = "09 Asia"
      10                 = "10 SE Asia"
      11                 = "11 Elsewhere"
      99                 = "99 Unknown"
   ;
   VALUE PEP500X
      1                  = "1 USA: born in one of the 50 United States or D.C."
      2                  = "2 USA: born in a U.S. territory"
      3                  = "3 Not born in the U.S. or a U.S. territory"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP501X
      1                  = "1 Less than 1 year"
      2                  = "2 1 yr., less than 5 yrs."
      3                  = "3 5 yrs., less than 10 yrs."
      4                  = "4 10 yrs., less than 15 yrs."
      5                  = "5 15 years or more"
      9                  = "9 Unknown"
   ;
   VALUE PEP502X
      1                  = "1 Yes, citizen of the United States"
      2                  = "2 No, not a citizen of the United States"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP505X
      00                 = "00 Never attended/kindergarten only"
      01                 = "01 1st grade"
      02                 = "02 2nd grade"
      03                 = "03 3rd grade"
      04                 = "04 4th grade"
      05                 = "05 5th grade"
      06                 = "06 6th grade"
      07                 = "07 7th grade"
      08                 = "08 8th grade"
      09                 = "09 9th grade"
      10                 = "10th grade"
      11                 = "11th grade"
      12                 = "12th grade, no diploma"
      13                 = "13 GED or equivalent"
      14                 = "14 High School Graduate"
      15                 = "15 Some college, no degree"
      16                 = "
16 Associate degree: occupational, technical, or vocational program"
      17                 = "17 Associate degree: academic program"
      18                 = "18 Bachelor's degree (Example: BA, AB, BS, BBA)"
      19                 = "19 Master's degree (Example: MA, MS, MEng, MEd, MBA)
"
      20                 = "
20 Professional School degree (Example: MD, DDS, DVM, JD)"
      21                 = "21 Doctoral degree (Example: PhD, EdD)"
      96                 = "96 Child under 5 years old"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP507X
      1                  = "1 Working for pay at a job or business"
      2                  = "2 With a job or business but not at work"
      3                  = "3 Looking for work"
      4                  = "4 Working, but not for pay, at a job or business"
      5                  = "
5 Not working at a job or business and not looking for work"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE PEP508X
      01                 = "01 Taking care of house or family"
      02                 = "02 Going to school"
      03                 = "03 Retired"
      04                 = "04 On a planned vacation from work"
      05                 = "05 On family or maternity leave"
      06                 = "06 Temporarily unable to work for health reasons"
      07                 = "07 Have job/contract and off-season"
      08                 = "08 On layoff"
      09                 = "09 Disabled"
      10                 = "10 Other"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP509X
      95                 = "95 95+ hours"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP512X
      01                 = "01 1 month or less"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP513X
      01                 = "01 $01-$4,999"
      02                 = "02 $5,000-$9,999"
      03                 = "03 $10,000-$14,999"
      04                 = "04 $15,000-$19,999"
      05                 = "05 $20,000-$24,999"
      06                 = "06 $25,000-$34,999"
      07                 = "07 $35,000-$44,999"
      08                 = "08 $45,000-$54,999"
      09                 = "09 $55,000-$64,999"
      10                 = "10 $65,000-$74,999"
      11                 = "11 $75,000 and over"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE PEP535X
      0                  = "0 No WIC age-eligible family members"
      1                  = "1 At least 1 WIC age-eligible family member"
   ;
   VALUE PEP537X
      0                  = "0 Person not age-eligible"
      1                  = "1 Person age-eligible"
   ;

DATA NHIS.PERSONSX;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=706;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE    3   SRVY_YR    4   HHX      $ 6   FMX      $ 2
      FPX      $ 2   WTIA       8   WTFA       8

      /* UCF LENGTHS */

      STRATUM    4   PSU        3

      /* HHC LENGTHS */

      SEX        3   ORIGIN_I   3   ORIGIMPT   3   HISPIMPT   3
      HISPAN_I   3   RACERPI2   3   RACEIMP2   3   MRACRPI2   3
      MRACBPI2   3   RACRECI2   3   HISCODI2   3   ERIMPFLG   3
      NOWAF      3   RRP        3   HHREFLG  $ 1   DOB_M    $ 2
      DOB_Y_P  $ 4   AGE_P      3

      /* FID LENGTHS */

      FRRP       3   FMRPFLG  $ 1   FMREFLG  $ 1   R_MARITL   3
      COHAB1     3   COHAB2     3   CDCMSTAT   3   SIB_DEG    3
      FMOTHER    3   MOM_DEG    3   FFATHER    3   DAD_DEG    3
      PARENTS    3   MOM_ED     3   DAD_ED     3   ASTATFLG   3
      CSTATFLG   3

      /* FHS LENGTHS */

      PLAPLYLM   3   PLAPLYUN   3   PSPEDEIS   3   PSPEDEM    3
      PLAADL     3   LABATH     3   LADRESS    3   LAEAT      3
      LABED      3   LATOILT    3   LAHOME     3   PLAIADL    3
      PLAWKNOW   3   PLAWKLIM   3   PLAWALK    3   PLAREMEM   3
      PLIMANY    3   LA1AR      3   LAHCC1     3   LAHCC2     3
      LAHCC3     3   LAHCC4     3   LAHCC5     3   LAHCC6     3
      LAHCC7     3   LAHCC8     3   LAHCC9     3   LAHCC10    3
      LAHCC11    3   LAHCC12    3   LAHCC13    3   LAHCC90    3
      LAHCC91    3   LCTIME1    3   LCUNIT1    3   LCDURA1    3
      LCDURB1    3   LCCHRC1    3   LCTIME2    3   LCUNIT2    3
      LCDURA2    3   LCDURB2    3   LCCHRC2    3   LCTIME3    3
      LCUNIT3    3   LCDURA3    3   LCDURB3    3   LCCHRC3    3
      LCTIME4    3   LCUNIT4    3   LCDURA4    3   LCDURB4    3
      LCCHRC4    3   LCTIME5    3   LCUNIT5    3   LCDURA5    3
      LCDURB5    3   LCCHRC5    3   LCTIME6    3   LCUNIT6    3
      LCDURA6    3   LCDURB6    3   LCCHRC6    3   LCTIME7    3
      LCUNIT7    3   LCDURA7    3   LCDURB7    3   LCCHRC7    3
      LCTIME8    3   LCUNIT8    3   LCDURA8    3   LCDURB8    3
      LCCHRC8    3   LCTIME9    3   LCUNIT9    3   LCDURA9    3
      LCDURB9    3   LCCHRC9    3   LCTIME10   3   LCUNIT10   3
      LCDURA10   3   LCDURB10   3   LCCHRC10   3   LCTIME11   3
      LCUNIT11   3   LCDURA11   3   LCDURB11   3   LCCHRC11   3
      LCTIME12   3   LCUNIT12   3   LCDURA12   3   LCDURB12   3
      LCCHRC12   3   LCTIME13   3   LCUNIT13   3   LCDURA13   3
      LCDURB13   3   LCCHRC13   3   LCTIME90   3   LCUNIT90   3
      LCDURA90   3   LCDURB90   3   LCCHRC90   3   LCTIME91   3
      LCUNIT91   3   LCDURA91   3   LCDURB91   3   LCCHRC91   3
      LAHCA1     3   LAHCA2     3   LAHCA3     3   LAHCA4     3
      LAHCA5     3   LAHCA6     3   LAHCA7     3   LAHCA8     3
      LAHCA9     3   LAHCA10    3   LAHCA11    3   LAHCA12    3
      LAHCA13    3   LAHCA14    3   LAHCA15    3   LAHCA16    3
      LAHCA17    3   LAHCA18    3   LAHCA19_   3   LAHCA20_   3
      LAHCA21_   3   LAHCA22_   3   LAHCA23_   3   LAHCA24_   3
      LAHCA25_   3   LAHCA26_   3   LAHCA27_   3   LAHCA28_   3
      LAHCA29_   3   LAHCA30_   3   LAHCA31_   3   LAHCA32_   3
      LAHCA33_   3   LAHCA34_   3   LAHCA90    3   LAHCA91    3
      LATIME1    3   LAUNIT1    3   LADURA1    3   LADURB1    3
      LACHRC1    3   LATIME2    3   LAUNIT2    3   LADURA2    3
      LADURB2    3   LACHRC2    3   LATIME3    3   LAUNIT3    3
      LADURA3    3   LADURB3    3   LACHRC3    3   LATIME4    3
      LAUNIT4    3   LADURA4    3   LADURB4    3   LACHRC4    3
      LATIME5    3   LAUNIT5    3   LADURA5    3   LADURB5    3
      LACHRC5    3   LATIME6    3   LAUNIT6    3   LADURA6    3
      LADURB6    3   LACHRC6    3   LATIME7    3   LAUNIT7    3
      LADURA7    3   LADURB7    3   LACHRC7    3   LATIME8    3
      LAUNIT8    3   LADURA8    3   LADURB8    3   LACHRC8    3
      LATIME9    3   LAUNIT9    3   LADURA9    3   LADURB9    3
      LACHRC9    3   LATIME10   3   LAUNIT10   3   LADURA10   3
      LADURB10   3   LACHRC10   3   LATIME11   3   LAUNIT11   3
      LADURA11   3   LADURB11   3   LACHRC11   3   LATIME12   3
      LAUNIT12   3   LADURA12   3   LADURB12   3   LACHRC12   3
      LATIME13   3   LAUNIT13   3   LADURA13   3   LADURB13   3
      LACHRC13   3   LATIME14   3   LAUNIT14   3   LADURA14   3
      LADURB14   3   LACHRC14   3   LATIME15   3   LAUNIT15   3
      LADURA15   3   LADURB15   3   LACHRC15   3   LATIME16   3
      LAUNIT16   3   LADURA16   3   LADURB16   3   LACHRC16   3
      LATIME17   3   LAUNIT17   3   LADURA17   3   LADURB17   3
      LACHRC17   3   LATIME18   3   LAUNIT18   3   LADURA18   3
      LADURB18   3   LACHRC18   3   LATIME19   3   LAUNIT19   3
      LADURA19   3   LADURB19   3   LACHRC19   3   LATIME20   3
      LAUNIT20   3   LADURA20   3   LADURB20   3   LACHRC20   3
      LATIME21   3   LAUNIT21   3   LADURA21   3   LADURB21   3
      LACHRC21   3   LATIME22   3   LAUNIT22   3   LADURA22   3
      LADURB22   3   LACHRC22   3   LATIME23   3   LAUNIT23   3
      LADURA23   3   LADURB23   3   LACHRC23   3   LATIME24   3
      LAUNIT24   3   LADURA24   3   LADURB24   3   LACHRC24   3
      LATIME25   3   LAUNIT25   3   LADURA25   3   LADURB25   3
      LACHRC25   3   LATIME26   3   LAUNIT26   3   LADURA26   3
      LADURB26   3   LACHRC26   3   LATIME27   3   LAUNIT27   3
      LADURA27   3   LADURB27   3   LACHRC27   3   LATIME28   3
      LAUNIT28   3   LADURA28   3   LADURB28   3   LACHRC28   3
      LATIME29   3   LAUNIT29   3   LADURA29   3   LADURB29   3
      LACHRC29   3   LATIME30   3   LAUNIT30   3   LADURA30   3
      LADURB30   3   LACHRC30   3   LATIME31   3   LAUNIT31   3
      LADURA31   3   LADURB31   3   LACHRC31   3   LATIME32   3
      LAUNIT32   3   LADURA32   3   LADURB32   3   LACHRC32   3
      LATIME33   3   LAUNIT33   3   LADURA33   3   LADURB33   3
      LACHRC33   3   LATIME34   3   LAUNIT34   3   LADURA34   3
      LADURB34   3   LACHRC34   3   LATIME90   3   LAUNIT90   3
      LADURA90   3   LADURB90   3   LACHRC90   3   LATIME91   3
      LAUNIT91   3   LADURA91   3   LADURB91   3   LACHRC91   3
      LCONDRT    3   LACHRONR   3   PHSTAT     3

      /* FAU LENGTHS */

      PDMED12M   3   PNMED12M   3   PHOSPYR    3   HOSPNO     4
      HPNITE     4   PHCHM2W    3   PHCHMN2W   3   PHCPH2WR   3
      PHCPHN2W   3   PHCDV2W    3   PHCDVN2W   3   P10DVYR    3

      /* FHI LENGTHS */

      NOTCOV     3   MEDICARE   3   MCPART     3   MCCHOICE   3
      MCHMO      3   MCNAMEN    3   MCREF      3   MCPAYPRE   3
      MCRXCARD   3   MEDICAID   3   MACHMD     3   MAPCMD     3
      MAREF      3   SINGLE     3   SSTYPEA    3   SSTYPEB    3
      SSTYPEC    3   SSTYPED    3   SSTYPEE    3   SSTYPEF    3
      SSTYPEG    3   SSTYPEH    3   SSTYPEI    3   SSTYPEJ    3
      SSTYPEK    3   SSTYPEL    3   PRIVATE    3   HITYPE1    3
      WHONAM1    3   PLNWRKN1   3   PLNPAY11   3   PLNPAY21   3
      PLNPAY31   3   PLNPAY41   3   PLNPAY51   3   PLNPAY61   3
      PLNPAY71   3   HICOSTR1   4   PLNMGD1    3   MGCHMD1    3
      MGPRMD1    3   MGPYMD1    3   MGPREF1    3   PRRXCOV1   3
      HITYPE2    3   WHONAM2    3   PLNWRKN2   3   PLNPAY12   3
      PLNPAY22   3   PLNPAY32   3   PLNPAY42   3   PLNPAY52   3
      PLNPAY62   3   PLNPAY72   3   HICOSTR2   4   PLNMGD2    3
      MGCHMD2    3   MGPRMD2    3   MGPYMD2    3   MGPREF2    3
      PRRXCOV2   3   PRPLPLUS   3   SCHIP      3   STDOC1     3
      STPCMD1    3   STREF1     3   OTHERPUB   3   STDOC2     3
      STPCMD2    3   STREF2     3   OTHERGOV   3   STDOC3     3
      STPCMD3    3   STREF3     3   MILITARY   3   MILSPC1    3
      MILSPC2    3   MILSPC3    3   MILSPC4    3   MILMAN     3
      IHS        3   HILAST     3   HISTOP1    3   HISTOP2    3
      HISTOP3    3   HISTOP4    3   HISTOP5    3   HISTOP6    3
      HISTOP7    3   HISTOP8    3   HISTOP9    3   HISTOP10   3
      HISTOP11   3   HISTOP12   3   HISTOP13   3   HISTOP14   3
      HISTOP15   3   HINOTYR    3   HINOTMYR   3   HCSPFYR    3
      HIKINDA    3   HIKINDB    3   HIKINDC    3   HIKINDD    3
      HIKINDE    3   HIKINDF    3   HIKINDG    3   HIKINDH    3
      HIKINDI    3   HIKINDJ    3   HIKINDK    3   MCAREPRB   3
      MCAIDPRB   3   SINCOV     3

      /* FSD LENGTHS */

      PLBORN     3   REGIONBR   3   GEOBRTH    3   YRSINUS    3
      CITIZENP   3   HEADST     3   HEADSTV1   3   EDUC1      3
      PMILTRY    3   DOINGLWP   3   WHYNOWKP   3   WRKHRS2    3
      WRKFTALL   3   WRKLYR1    3   WRKMYR     3   ERNYR_P    3
      HIEMPOF    3

      /* FIN LENGTHS */

      PSAL       3   PSEINC     3   PSSRR      3   PSSRRDB    3
      PSSRRD     3   PPENS      3   POPENS     3   PSSI       3
      PSSID      3   PTANF      3   POWBEN     3   PINTRSTR   3
      PDIVD      3   PCHLDSP    3   PINCOT     3   PSSAPL     3
      PSDAPL     3   TANFMYR    3   PFSTP      3   FSTPMYR    3
      ELIGPWIC   3   PWIC       3   WIC_FLAG   3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE       1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    FMX      $   13 -  14
      FPX      $   15 -  16    WTIA         17 -  22 .1
      WTFA         23 -  28

      /* UCF LOCATIONS */

      STRATUM      29 -  31    PSU          32 -  32

      /* HHC LOCATIONS */

      SEX          33 -  33    ORIGIN_I     34 -  34
      ORIGIMPT     35 -  35    HISPIMPT     36 -  36
      HISPAN_I     37 -  38    RACERPI2     39 -  40
      RACEIMP2     41 -  41    MRACRPI2     42 -  43
      MRACBPI2     44 -  45    RACRECI2     46 -  46
      HISCODI2     47 -  47    ERIMPFLG     48 -  48
      NOWAF        49 -  49    RRP          50 -  51
      HHREFLG  $   52 -  52    DOB_M    $   53 -  54
      DOB_Y_P  $   55 -  58    AGE_P        59 -  60


      /* FID LOCATIONS */

      FRRP         61 -  62    FMRPFLG  $   63 -  63
      FMREFLG  $   64 -  64    R_MARITL     65 -  65
      COHAB1       66 -  66    COHAB2       67 -  67
      CDCMSTAT     68 -  68    SIB_DEG      69 -  69
      FMOTHER      70 -  71    MOM_DEG      72 -  72
      FFATHER      73 -  74    DAD_DEG      75 -  75
      PARENTS      76 -  76    MOM_ED       77 -  78
      DAD_ED       79 -  80    ASTATFLG     81 -  81
      CSTATFLG     82 -  82

      /* FHS LOCATIONS */

      PLAPLYLM     83 -  83    PLAPLYUN     84 -  84
      PSPEDEIS     85 -  85    PSPEDEM      86 -  86
      PLAADL       87 -  87    LABATH       88 -  88
      LADRESS      89 -  89    LAEAT        90 -  90
      LABED        91 -  91    LATOILT      92 -  92
      LAHOME       93 -  93    PLAIADL      94 -  94
      PLAWKNOW     95 -  95    PLAWKLIM     96 -  96
      PLAWALK      97 -  97    PLAREMEM     98 -  98
      PLIMANY      99 -  99    LA1AR       100 - 100
      LAHCC1      101 - 101    LAHCC2      102 - 102
      LAHCC3      103 - 103    LAHCC4      104 - 104
      LAHCC5      105 - 105    LAHCC6      106 - 106
      LAHCC7      107 - 107    LAHCC8      108 - 108
      LAHCC9      109 - 109    LAHCC10     110 - 110
      LAHCC11     111 - 111    LAHCC12     112 - 112
      LAHCC13     113 - 113    LAHCC90     114 - 114
      LAHCC91     115 - 115    LCTIME1     116 - 117
      LCUNIT1     118 - 118    LCDURA1     119 - 120
      LCDURB1     121 - 121    LCCHRC1     122 - 122
      LCTIME2     123 - 124    LCUNIT2     125 - 125
      LCDURA2     126 - 127    LCDURB2     128 - 128
      LCCHRC2     129 - 129    LCTIME3     130 - 131
      LCUNIT3     132 - 132    LCDURA3     133 - 134
      LCDURB3     135 - 135    LCCHRC3     136 - 136
      LCTIME4     137 - 138    LCUNIT4     139 - 139
      LCDURA4     140 - 141    LCDURB4     142 - 142
      LCCHRC4     143 - 143    LCTIME5     144 - 145
      LCUNIT5     146 - 146    LCDURA5     147 - 148
      LCDURB5     149 - 149    LCCHRC5     150 - 150
      LCTIME6     151 - 152    LCUNIT6     153 - 153
      LCDURA6     154 - 155    LCDURB6     156 - 156
      LCCHRC6     157 - 157    LCTIME7     158 - 159
      LCUNIT7     160 - 160    LCDURA7     161 - 162
      LCDURB7     163 - 163    LCCHRC7     164 - 164
      LCTIME8     165 - 166    LCUNIT8     167 - 167
      LCDURA8     168 - 169    LCDURB8     170 - 170
      LCCHRC8     171 - 171    LCTIME9     172 - 173
      LCUNIT9     174 - 174    LCDURA9     175 - 176
      LCDURB9     177 - 177    LCCHRC9     178 - 178
      LCTIME10    179 - 180    LCUNIT10    181 - 181
      LCDURA10    182 - 183    LCDURB10    184 - 184
      LCCHRC10    185 - 185    LCTIME11    186 - 187
      LCUNIT11    188 - 188    LCDURA11    189 - 190
      LCDURB11    191 - 191    LCCHRC11    192 - 192
      LCTIME12    193 - 194    LCUNIT12    195 - 195
      LCDURA12    196 - 197    LCDURB12    198 - 198
      LCCHRC12    199 - 199    LCTIME13    200 - 201
      LCUNIT13    202 - 202    LCDURA13    203 - 204
      LCDURB13    205 - 205    LCCHRC13    206 - 206
      LCTIME90    207 - 208    LCUNIT90    209 - 209
      LCDURA90    210 - 211    LCDURB90    212 - 212
      LCCHRC90    213 - 213    LCTIME91    214 - 215
      LCUNIT91    216 - 216    LCDURA91    217 - 218
      LCDURB91    219 - 219    LCCHRC91    220 - 220
      LAHCA1      221 - 221    LAHCA2      222 - 222
      LAHCA3      223 - 223    LAHCA4      224 - 224
      LAHCA5      225 - 225    LAHCA6      226 - 226
      LAHCA7      227 - 227    LAHCA8      228 - 228
      LAHCA9      229 - 229    LAHCA10     230 - 230
      LAHCA11     231 - 231    LAHCA12     232 - 232
      LAHCA13     233 - 233    LAHCA14     234 - 234
      LAHCA15     235 - 235    LAHCA16     236 - 236
      LAHCA17     237 - 237    LAHCA18     238 - 238
      LAHCA19_    239 - 239    LAHCA20_    240 - 240
      LAHCA21_    241 - 241    LAHCA22_    242 - 242
      LAHCA23_    243 - 243    LAHCA24_    244 - 244
      LAHCA25_    245 - 245    LAHCA26_    246 - 246
      LAHCA27_    247 - 247    LAHCA28_    248 - 248
      LAHCA29_    249 - 249    LAHCA30_    250 - 250
      LAHCA31_    251 - 251    LAHCA32_    252 - 252
      LAHCA33_    253 - 253    LAHCA34_    254 - 254
      LAHCA90     255 - 255    LAHCA91     256 - 256
      LATIME1     257 - 258    LAUNIT1     259 - 259
      LADURA1     260 - 261    LADURB1     262 - 262
      LACHRC1     263 - 263    LATIME2     264 - 265
      LAUNIT2     266 - 266    LADURA2     267 - 268
      LADURB2     269 - 269    LACHRC2     270 - 270
      LATIME3     271 - 272    LAUNIT3     273 - 273
      LADURA3     274 - 275    LADURB3     276 - 276
      LACHRC3     277 - 277    LATIME4     278 - 279
      LAUNIT4     280 - 280    LADURA4     281 - 282
      LADURB4     283 - 283    LACHRC4     284 - 284
      LATIME5     285 - 286    LAUNIT5     287 - 287
      LADURA5     288 - 289    LADURB5     290 - 290
      LACHRC5     291 - 291    LATIME6     292 - 293
      LAUNIT6     294 - 294    LADURA6     295 - 296
      LADURB6     297 - 297    LACHRC6     298 - 298
      LATIME7     299 - 300    LAUNIT7     301 - 301
      LADURA7     302 - 303    LADURB7     304 - 304
      LACHRC7     305 - 305    LATIME8     306 - 307
      LAUNIT8     308 - 308    LADURA8     309 - 310
      LADURB8     311 - 311    LACHRC8     312 - 312
      LATIME9     313 - 314    LAUNIT9     315 - 315
      LADURA9     316 - 317    LADURB9     318 - 318
      LACHRC9     319 - 319    LATIME10    320 - 321
      LAUNIT10    322 - 322    LADURA10    323 - 324
      LADURB10    325 - 325    LACHRC10    326 - 326
      LATIME11    327 - 328    LAUNIT11    329 - 329
      LADURA11    330 - 331    LADURB11    332 - 332
      LACHRC11    333 - 333    LATIME12    334 - 335
      LAUNIT12    336 - 336    LADURA12    337 - 338
      LADURB12    339 - 339    LACHRC12    340 - 340
      LATIME13    341 - 342    LAUNIT13    343 - 343
      LADURA13    344 - 345    LADURB13    346 - 346
      LACHRC13    347 - 347    LATIME14    348 - 349
      LAUNIT14    350 - 350    LADURA14    351 - 352
      LADURB14    353 - 353    LACHRC14    354 - 354
      LATIME15    355 - 356    LAUNIT15    357 - 357
      LADURA15    358 - 359    LADURB15    360 - 360
      LACHRC15    361 - 361    LATIME16    362 - 363
      LAUNIT16    364 - 364    LADURA16    365 - 366
      LADURB16    367 - 367    LACHRC16    368 - 368
      LATIME17    369 - 370    LAUNIT17    371 - 371
      LADURA17    372 - 373    LADURB17    374 - 374
      LACHRC17    375 - 375    LATIME18    376 - 377
      LAUNIT18    378 - 378    LADURA18    379 - 380
      LADURB18    381 - 381    LACHRC18    382 - 382
      LATIME19    383 - 384    LAUNIT19    385 - 385
      LADURA19    386 - 387    LADURB19    388 - 388
      LACHRC19    389 - 389    LATIME20    390 - 391
      LAUNIT20    392 - 392    LADURA20    393 - 394
      LADURB20    395 - 395    LACHRC20    396 - 396
      LATIME21    397 - 398    LAUNIT21    399 - 399
      LADURA21    400 - 401    LADURB21    402 - 402
      LACHRC21    403 - 403    LATIME22    404 - 405
      LAUNIT22    406 - 406    LADURA22    407 - 408
      LADURB22    409 - 409    LACHRC22    410 - 410
      LATIME23    411 - 412    LAUNIT23    413 - 413
      LADURA23    414 - 415    LADURB23    416 - 416
      LACHRC23    417 - 417    LATIME24    418 - 419
      LAUNIT24    420 - 420    LADURA24    421 - 422
      LADURB24    423 - 423    LACHRC24    424 - 424
      LATIME25    425 - 426    LAUNIT25    427 - 427
      LADURA25    428 - 429    LADURB25    430 - 430
      LACHRC25    431 - 431    LATIME26    432 - 433
      LAUNIT26    434 - 434    LADURA26    435 - 436
      LADURB26    437 - 437    LACHRC26    438 - 438
      LATIME27    439 - 440    LAUNIT27    441 - 441
      LADURA27    442 - 443    LADURB27    444 - 444
      LACHRC27    445 - 445    LATIME28    446 - 447
      LAUNIT28    448 - 448    LADURA28    449 - 450
      LADURB28    451 - 451    LACHRC28    452 - 452
      LATIME29    453 - 454    LAUNIT29    455 - 455
      LADURA29    456 - 457    LADURB29    458 - 458
      LACHRC29    459 - 459    LATIME30    460 - 461
      LAUNIT30    462 - 462    LADURA30    463 - 464
      LADURB30    465 - 465    LACHRC30    466 - 466
      LATIME31    467 - 468    LAUNIT31    469 - 469
      LADURA31    470 - 471    LADURB31    472 - 472
      LACHRC31    473 - 473    LATIME32    474 - 475
      LAUNIT32    476 - 476    LADURA32    477 - 478
      LADURB32    479 - 479    LACHRC32    480 - 480
      LATIME33    481 - 482    LAUNIT33    483 - 483
      LADURA33    484 - 485    LADURB33    486 - 486
      LACHRC33    487 - 487    LATIME34    488 - 489
      LAUNIT34    490 - 490    LADURA34    491 - 492
      LADURB34    493 - 493    LACHRC34    494 - 494
      LATIME90    495 - 496    LAUNIT90    497 - 497
      LADURA90    498 - 499    LADURB90    500 - 500
      LACHRC90    501 - 501    LATIME91    502 - 503
      LAUNIT91    504 - 504    LADURA91    505 - 506
      LADURB91    507 - 507    LACHRC91    508 - 508
      LCONDRT     509 - 509    LACHRONR    510 - 510
      PHSTAT      511 - 511

      /* FAU LOCATIONS */

      PDMED12M    512 - 512    PNMED12M    513 - 513
      PHOSPYR     514 - 514    HOSPNO      515 - 517
      HPNITE      518 - 520    PHCHM2W     521 - 521
      PHCHMN2W    522 - 523    PHCPH2WR    524 - 524
      PHCPHN2W    525 - 526    PHCDV2W     527 - 527
      PHCDVN2W    528 - 529    P10DVYR     530 - 530


      /* FHI LOCATIONS */

      NOTCOV      531 - 531    MEDICARE    532 - 532
      MCPART      533 - 533    MCCHOICE    534 - 534
      MCHMO       535 - 535    MCNAMEN     536 - 537
      MCREF       538 - 538    MCPAYPRE    539 - 539
      MCRXCARD    540 - 540    MEDICAID    541 - 541
      MACHMD      542 - 542    MAPCMD      543 - 543
      MAREF       544 - 544    SINGLE      545 - 545
      SSTYPEA     546 - 546    SSTYPEB     547 - 547
      SSTYPEC     548 - 548    SSTYPED     549 - 549
      SSTYPEE     550 - 550    SSTYPEF     551 - 551
      SSTYPEG     552 - 552    SSTYPEH     553 - 553
      SSTYPEI     554 - 554    SSTYPEJ     555 - 555
      SSTYPEK     556 - 556    SSTYPEL     557 - 557
      PRIVATE     558 - 558    HITYPE1     559 - 560
      WHONAM1     561 - 561    PLNWRKN1    562 - 563
      PLNPAY11    564 - 564    PLNPAY21    565 - 565
      PLNPAY31    566 - 566    PLNPAY41    567 - 567
      PLNPAY51    568 - 568    PLNPAY61    569 - 569
      PLNPAY71    570 - 570    HICOSTR1    571 - 575
      PLNMGD1     576 - 576    MGCHMD1     577 - 577
      MGPRMD1     578 - 578    MGPYMD1     579 - 579
      MGPREF1     580 - 580    PRRXCOV1    581 - 581
      HITYPE2     582 - 583    WHONAM2     584 - 584
      PLNWRKN2    585 - 586    PLNPAY12    587 - 587
      PLNPAY22    588 - 588    PLNPAY32    589 - 589
      PLNPAY42    590 - 590    PLNPAY52    591 - 591
      PLNPAY62    592 - 592    PLNPAY72    593 - 593
      HICOSTR2    594 - 598    PLNMGD2     599 - 599
      MGCHMD2     600 - 600    MGPRMD2     601 - 601
      MGPYMD2     602 - 602    MGPREF2     603 - 603
      PRRXCOV2    604 - 604    PRPLPLUS    605 - 605
      SCHIP       606 - 606    STDOC1      607 - 607
      STPCMD1     608 - 608    STREF1      609 - 609
      OTHERPUB    610 - 610    STDOC2      611 - 611
      STPCMD2     612 - 612    STREF2      613 - 613
      OTHERGOV    614 - 614    STDOC3      615 - 615
      STPCMD3     616 - 616    STREF3      617 - 617
      MILITARY    618 - 618    MILSPC1     619 - 619
      MILSPC2     620 - 620    MILSPC3     621 - 621
      MILSPC4     622 - 622    MILMAN      623 - 623
      IHS         624 - 624    HILAST      625 - 625
      HISTOP1     626 - 626    HISTOP2     627 - 627
      HISTOP3     628 - 628    HISTOP4     629 - 629
      HISTOP5     630 - 630    HISTOP6     631 - 631
      HISTOP7     632 - 632    HISTOP8     633 - 633
      HISTOP9     634 - 634    HISTOP10    635 - 635
      HISTOP11    636 - 636    HISTOP12    637 - 637
      HISTOP13    638 - 638    HISTOP14    639 - 639
      HISTOP15    640 - 640    HINOTYR     641 - 641
      HINOTMYR    642 - 643    HCSPFYR     644 - 644
      HIKINDA     645 - 645    HIKINDB     646 - 646
      HIKINDC     647 - 647    HIKINDD     648 - 648
      HIKINDE     649 - 649    HIKINDF     650 - 650
      HIKINDG     651 - 651    HIKINDH     652 - 652
      HIKINDI     653 - 653    HIKINDJ     654 - 654
      HIKINDK     655 - 655    MCAREPRB    656 - 656
      MCAIDPRB    657 - 657    SINCOV      658 - 658


      /* FSD LOCATIONS */

      PLBORN      659 - 659    REGIONBR    660 - 661
      GEOBRTH     662 - 662    YRSINUS     663 - 663
      CITIZENP    664 - 664    HEADST      665 - 665
      HEADSTV1    666 - 666    EDUC1       667 - 668
      PMILTRY     669 - 669    DOINGLWP    670 - 670
      WHYNOWKP    671 - 672    WRKHRS2     673 - 674
      WRKFTALL    675 - 675    WRKLYR1     676 - 676
      WRKMYR      677 - 678    ERNYR_P     679 - 680
      HIEMPOF     681 - 681

      /* FIN LOCATIONS */

      PSAL        682 - 682    PSEINC      683 - 683
      PSSRR       684 - 684    PSSRRDB     685 - 685
      PSSRRD      686 - 686    PPENS       687 - 687
      POPENS      688 - 688    PSSI        689 - 689
      PSSID       690 - 690    PTANF       691 - 691
      POWBEN      692 - 692    PINTRSTR    693 - 693
      PDIVD       694 - 694    PCHLDSP     695 - 695
      PINCOT      696 - 696    PSSAPL      697 - 697
      PSDAPL      698 - 698    TANFMYR     699 - 700
      PFSTP       701 - 701    FSTPMYR     702 - 703
      ELIGPWIC    704 - 704    PWIC        705 - 705
      WIC_FLAG    706 - 706;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE    ="IDN.000_00.000: File type identifier"
      SRVY_YR    ="IDN.000_02.000: Year of National Health Interview Survey"
      HHX        ="IDN.000_04.000: Household Serial Number"
      FMX        ="IDN.000_35.000: Family #"
      FPX        ="IDN.000_40.000: Person #"
      WTIA       ="IDN.000_65.000: Weight - Interim Annual"
      WTFA       ="IDN.000_70.000: Weight - Final Annual"

      /* UCF LABELS */

      STRATUM    ="UCF.000_00.000.R18: Stratum for variance estimation"
      PSU        ="UCF.000_00.000.R19: PSU for variance estimation"

      /* HHC LABELS */

      SEX        ="HHC.110_00.000: Sex"
      ORIGIN_I   ="HHC.170_00.000.R01: Hispanic Ethnicity"
      ORIGIMPT   ="HHC.170_00.000.R02: Hispanic Origin Imputation Flag"
      HISPIMPT   ="HHC.170_00.000.R04: Type of Hispanic Origin Imputation Flag"
      HISPAN_I   ="HHC.180_00.000.R03: Hispanic subgroup detail"
      RACERPI2   ="HHC.200_01.000.R13: OMB groups w/multiple race"
      RACEIMP2   ="HHC.200_01.000.R18: Race Imputation Flag"
      MRACRPI2   ="HHC.200_01.000.R21: Race coded to single/multiple race group"
      MRACBPI2   ="HHC.200_01.000.R22: Race coded to single/multiple race group"
      RACRECI2   ="HHC.200_01.000.R23: Race Recode"
      HISCODI2   ="HHC.200_01.000.R24: Race/ethnicity recode"
      ERIMPFLG   ="HHC.200_01.000.R25: Ethnicity/Race Imputation Flag"
      NOWAF      ="HHC.230_03.000: Armed Forces Status"
      RRP        ="HHC.260_01.000: Relationship to the HH reference person"
      HHREFLG    ="HHC.260_01.000.R01: HH Reference Person Flag"
      DOB_M      ="HHC.405_00.000: Month of Birth"
      DOB_Y_P    ="HHC.415_00.000.R01: Year of Birth"
      AGE_P      ="HHC.420_00.000.R01: Age"

      /* FID LABELS */

      FRRP       ="FID.060_00.000: Relationship to family ref. Person"
      FMRPFLG    ="FID.060_00.000.R01: Family Respondent Flag"
      FMREFLG    ="FID.060_00.000.R02: Family Reference Person Flag"
      R_MARITL   ="FID.250_00.000: Marital Status"
      COHAB1     ="FID.280_00.000: Cohabiting person ever married"
      COHAB2     ="FID.290_00.000: Cohabiting person's current marital status"
      CDCMSTAT   ="FID.300_00.000.R01: CDC standard for legal marital status"
      SIB_DEG    ="FID.300_00.000.R02: Degree of sib rel to HH ref person"
      FMOTHER    ="FID.326_00.000: Person # of mother"
      MOM_DEG    ="FID.330_01.000.R01: Type of relationship with Mother"
      FFATHER    ="FID.340_00.000: Person # of father"
      DAD_DEG    ="FID.350_01.000.R01: Type of relationship with Father"
      PARENTS    ="FID.360_01.000.R01: Parent(s) present in the family"
      MOM_ED     ="FID.360_01.000.R02: Education of Mother"
      DAD_ED     ="FID.360_01.000.R03: Education of Father"
      ASTATFLG   ="FID.360_01.000.R04: Sample Adult Flag"
      CSTATFLG   ="FID.360_01.000.R05: Sample Child Flag"

      /* FHS LABELS */

      PLAPLYLM   ="FHS.010_00.000: Is - - limited in kind/amt play?"
      PLAPLYUN   ="FHS.020_00.000: Is - - able to play at all?"
      PSPEDEIS   ="FHS.060_00.000: Does - - receive Special Ed or EIS"
      PSPEDEM    ="FHS.065_00.000: 
Receive Special Ed/EIS due to emotional/behavioral problem"
      PLAADL     ="FHS.080_00.000: Does - - need help with personal care?"
      LABATH     ="FHS.090_01.000: Does - -  need help with bathing/showering?"
      LADRESS    ="FHS.090_02.000: Does - -  need help dressing?"
      LAEAT      ="FHS.090_03.000: Does - -  need help eating?"
      LABED      ="FHS.090_04.000: Does - -  need help in/out of bed or chairs?"
      LATOILT    ="FHS.090_05.000: Does - -  need help using the toilet?"
      LAHOME     ="FHS.090_06.000: 
Does - -  need help to get around in the home?"
      PLAIADL    ="FHS.160_00.000: Does - - need help with routine needs?"
      PLAWKNOW   ="FHS.180_00.000: Is - - unable to work due to health problem?"
      PLAWKLIM   ="FHS.200_00.000: Is - - limited kind/amount of work?"
      PLAWALK    ="FHS.220_00.000: Does - - have difficulty walk w/o equip?"
      PLAREMEM   ="FHS.240_00.000: Is - - limited by difficulty remembering?"
      PLIMANY    ="FHS.260_00.000: Is - - limited in any (other) way?"
      LA1AR      ="FHS.260_00.000.R01: Any limitation - all persons, all conds"
      LAHCC1     ="FHS.270_01.000: Vision problem causes limitation"
      LAHCC2     ="FHS.270_02.000: Hearing problem causes limitation"
      LAHCC3     ="FHS.270_03.000: Speech problem causes limitation"
      LAHCC4     ="FHS.270_04.000: Asthma/breathing problem causes limitation"
      LAHCC5     ="FHS.270_05.000: Birth defect causes limitation"
      LAHCC6     ="FHS.270_06.000: Injury causes limitation"
      LAHCC7     ="FHS.270_07.000: Mental retardation causes limitation"
      LAHCC8     ="FHS.270_08.000: Other dev problem causes limitation"
      LAHCC9     ="FHS.270_09.000: Other emot/behav problem causes limitation"
      LAHCC10    ="FHS.270_10.000: Bone/joint/muscle problem causes limitation"
      LAHCC11    ="FHS.270_11.000: Epilepsy/seizures causes limitation"
      LAHCC12    ="FHS.270_12.000: Learning disability causes  limitation"
      LAHCC13    ="FHS.270_13.000: ADD/ADHD causes limitation"
      LAHCC90    ="FHS.270_90.000: Other impair/problem (1) causes limitation"
      LAHCC91    ="FHS.270_91.000: Other impair/problem (2) causes limitation"
      LCTIME1    ="FHS.280_01.000: Duration of vision problem: Number of units"
      LCUNIT1    ="FHS.280_02.000: Duration of vision problem: Time unit"
      LCDURA1    ="FHS.280_02.000.R01: Duration of vision problem (in years)"
      LCDURB1    ="FHS.280_02.000.R02: Duration of vision problem recode 2"
      LCCHRC1    ="FHS.280_02.000.R03: Vision problem condition status"
      LCTIME2    ="FHS.282_01.000: Duration of hearing problem: Number of units"
      LCUNIT2    ="FHS.282_02.000: Duration of hearing problem: Time unit"
      LCDURA2    ="FHS.282_02.000.R01: Duration of hearing problem (in years)"
      LCDURB2    ="FHS.282_02.000.R02: Duration of hearing problem recode 2"
      LCCHRC2    ="FHS.282_02.000.R03: Hearing problem condition status"
      LCTIME3    ="FHS.284_01.000: Duration of speech problem: Number of units"
      LCUNIT3    ="FHS.284_02.000: Duration of speech problem: Time unit"
      LCDURA3    ="FHS.284_02.000.R01: Duration of speech problem (in years)"
      LCDURB3    ="FHS.284_02.000.R02: Duration of speech problem recode 2"
      LCCHRC3    ="FHS.284_02.000.R03: Speech problem condition status"
      LCTIME4    ="FHS.286_01.000: 
Duration of asthma/breathing problem: Number of units"
      LCUNIT4    ="FHS.286_02.000: 
Duration of asthma/breathing problem: Time unit"
      LCDURA4    ="FHS.286_02.000.R01: 
Duration of asthma/breathing problem (in years)"
      LCDURB4    ="FHS.286_02.000.R02: 
Duration of asthma/breathing problem recode 2"
      LCCHRC4    ="FHS.286_02.000.R03: Asthma/breathing problem condition status
"
      LCTIME5    ="FHS.287_01.000: Duration of birth defect: Number of units"
      LCUNIT5    ="FHS.287_02.000: Duration of birth defect: Time unit"
      LCDURA5    ="FHS.287_02.000.R01: Duration of birth defect (in years)"
      LCDURB5    ="FHS.287_02.000.R02: Duration of birth defect recode 2"
      LCCHRC5    ="FHS.287_02.000.R03: Birth defect condition status"
      LCTIME6    ="FHS.288_01.000: Duration of injury: Number of units"
      LCUNIT6    ="FHS.288_02.000: Duration of injury: Time unit"
      LCDURA6    ="FHS.288_02.000.R01: Duration of injury (in years)"
      LCDURB6    ="FHS.288_02.000.R02: Duration of injury recode 2"
      LCCHRC6    ="FHS.288_02.000.R03: Injury condition status"
      LCTIME7    ="FHS.290_01.000: 
Duration of mental retardation: Number of units"
      LCUNIT7    ="FHS.290_02.000: Duration of mental retardation: Time unit"
      LCDURA7    ="FHS.290_02.000.R01: Duration of mental retardation (in years)
"
      LCDURB7    ="FHS.290_02.000.R02: Duration of mental retardation recode 2"
      LCCHRC7    ="FHS.290_02.000.R03: Mental retardation condition status"
      LCTIME8    ="FHS.292_01.000: 
Duration of other developmental problem: Number of units"
      LCUNIT8    ="FHS.292_02.000: 
Duration of other developmental problem: Time unit"
      LCDURA8    ="FHS.292_02.000.R01: 
Duration of other developmental problem (in years)"
      LCDURB8    ="FHS.292_02.000.R02: 
Duration of other developmental problem recode 2"
      LCCHRC8    ="FHS.292_02.000.R03: 
Other developmental problem condition status"
      LCTIME9    ="FHS.294_01.000: 
Duration of other mental/emot/behav problem: Number of units"
      LCUNIT9    ="FHS.294_02.000: 
Duration of otr ment/emot/behav problem: Number of units"
      LCDURA9    ="FHS.294_02.000.R01: 
Duration of other mental/emot/behav problem (in years)"
      LCDURB9    ="FHS.294_02.000.R02: 
Duration of other mental/emotional/behavioral prob recode 2"
      LCCHRC9    ="FHS.294_02.000.R03: 
Other mental/emotional/behavioral problem condition status"
      LCTIME10   ="FHS.296_01.000: 
Duration of bone/joint/muscle problem: Number of units"
      LCUNIT10   ="FHS.296_02.000: 
Duration of bone/joint/muscle problem: Time unit"
      LCDURA10   ="FHS.296_02.000.R01: 
Duration of bone/joint/muscle problem (in years)"
      LCDURB10   ="FHS.296_02.000.R02: 
Duration of bone/joint/muscle problem recode 2"
      LCCHRC10   ="FHS.296_02.000.R03: 
Bone/joint/muscle problem condition status"
      LCTIME11   ="FHS.298_01.000: 
Duration of epilepsy/seizures: Number of units"
      LCUNIT11   ="FHS.298_02.000: Duration of epilepsy/seizures: Time unit"
      LCDURA11   ="FHS.298_02.000.R01: Duration of epilepsy/seizures (in years)"
      LCDURB11   ="FHS.298_02.000.R02: Duration of epilepsy/seizures recode 2"
      LCCHRC11   ="FHS.298_02.000.R03: Epilepsy/seizures condition status"
      LCTIME12   ="FHS.300_01.000: 
Duration of learning disability: Number of units"
      LCUNIT12   ="FHS.300_02.000: Duration of learning disability: Time unit"
      LCDURA12   ="FHS.300_02.000.R01: 
Duration of learning disability (in years)"
      LCDURB12   ="FHS.300_02.000.R02: Duration of learning disability recode 2"
      LCCHRC12   ="FHS.300_02.000.R03: Learning disability condition status"
      LCTIME13   ="FHS.302_01.000: Duration of ADD/ADHD: Number of units"
      LCUNIT13   ="FHS.302_02.000: Duration of ADD/ADHD: Time unit"
      LCDURA13   ="FHS.302_02.000.R01: Duration of ADD/ADHD (in years)"
      LCDURB13   ="FHS.302_02.000.R02: Duration of ADD/ADHD recode 2"
      LCCHRC13   ="FHS.302_02.000.R03: ADD/ADHD condition status"
      LCTIME90   ="FHS.304_01.000: 
Duration of other impairment problem (1): Number of units"
      LCUNIT90   ="FHS.304_02.000: 
Duration of other impairment/problem (1): Time unit"
      LCDURA90   ="FHS.304_02.000.R01: 
Duration of other impairment/problem (1) (in years)"
      LCDURB90   ="FHS.304_02.000.R02: 
Duration of other impairment/problem (1) recode 2"
      LCCHRC90   ="FHS.304_02.000.R03: 
Other impairment/problem (1) condition status"
      LCTIME91   ="FHS.306_01.000: 
Duration of other impairment/problem (2): Number of units"
      LCUNIT91   ="FHS.306_02.000: 
Duration of other impairment/problem (2): Time unit"
      LCDURA91   ="FHS.306_02.000.R01: 
Duration of other impairment/problem (2) (in years)"
      LCDURB91   ="FHS.306_02.000.R02: 
Duration of other impairment/problem (2) recode 2"
      LCCHRC91   ="FHS.306_02.000.R03: 
Other impairment/problem (2) condition status"
      LAHCA1     ="FHS.350_01.000: Vision problem causes limitation"
      LAHCA2     ="FHS.350_02.000: Hearing problem causes limitation"
      LAHCA3     ="FHS.350_03.000: Arthritis/rheumatism causes limitation"
      LAHCA4     ="FHS.350_04.000: Back/neck prob causes limitation"
      LAHCA5     ="FHS.350_05.000: fracture/bone/joint inj causes limitation"
      LAHCA6     ="FHS.350_06.000: Other injury causes limitation"
      LAHCA7     ="FHS.350_07.000: Heart problem causes limitation"
      LAHCA8     ="FHS.350_08.000: Stroke causes limitation"
      LAHCA9     ="FHS.350_09.000: Hypertension causes limitation"
      LAHCA10    ="FHS.350_10.000: Diabetes causes limitation"
      LAHCA11    ="FHS.350_11.000: Lung/breath problem causes limitation"
      LAHCA12    ="FHS.350_12.000: Cancer causes limitation"
      LAHCA13    ="FHS.350_13.000: Birth defect causes limitation"
      LAHCA14    ="FHS.350_14.000: Mental retardation causes limitation"
      LAHCA15    ="FHS.350_15.000: Otr dev problem causes limitation"
      LAHCA16    ="FHS.350_16.000: Senility causes limitation"
      LAHCA17    ="FHS.350_17.000: Dep/anx/emot problem causes limitation"
      LAHCA18    ="FHS.350_18.000: Weight problem causes limitation"
      LAHCA19_   ="FHS.350_18.000.R01: Missing or amputated limb/finger/digit"
      LAHCA20_   ="FHS.350_18.000.R02: Musculoskeletal/connective tissue problem
"
      LAHCA21_   ="FHS.350_18.000.R03: Circulation problem"
      LAHCA22_   ="FHS.350_18.000.R04: Endocrine/nutritional/metabolic problem"
      LAHCA23_   ="FHS.350_18.000.R05: Nervous system/sensory organ condition"
      LAHCA24_   ="FHS.350_18.000.R06: Digestive system problem"
      LAHCA25_   ="FHS.350_18.000.R07: Genitourinary system problem"
      LAHCA26_   ="FHS.350_18.000.R08: Skin/subcutaneous system problem"
      LAHCA27_   ="FHS.350_18.000.R09: Blood or blood-forming organ problem"
      LAHCA28_   ="FHS.350_18.000.R10: Benign tumor/cyst"
      LAHCA29_   ="FHS.350_18.000.R11: Alcohol/drug/substance abuse problem"
      LAHCA30_   ="FHS.350_18.000.R12: 
Otr mental problem/ADD/bipolar/schizophrenia"
      LAHCA31_   ="FHS.350_18.000.R13: Surgical after-effects/medical treatment"
      LAHCA32_   ='FHS.350_18.000.R14: "Old age"/elderly/aging-related problem'
      LAHCA33_   ="FHS.350_18.000.R15: Fatigue/tiredness/weakness"
      LAHCA34_   ="FHS.350_18.000.R16: Pregnancy-related problem"
      LAHCA90    ="FHS.350_90.000.R17: Other impair/problem(1) causes limitation
"
      LAHCA91    ="FHS.350_91.000.R18: Other impair/problem(2) causes limitation
"
      LATIME1    ="FHS.360_01.000: Duration of vision problem: Number of units"
      LAUNIT1    ="FHS.360_02.000: Duration of vision problem: Time unit"
      LADURA1    ="FHS.360_02.000.R01: Duration of vision problem (in years)"
      LADURB1    ="FHS.360_02.000.R02: Duration of vision problem recode 2"
      LACHRC1    ="FHS.360_02.000.R03: Vision problem condition status"
      LATIME2    ="FHS.362_01.000: Duration of hearing problem: Number of units"
      LAUNIT2    ="FHS.362_02.000: Duration of hearing problem: Time unit"
      LADURA2    ="FHS.362_02.000.R01: Duration of hearing problem (in years)"
      LADURB2    ="FHS.362_02.000.R02: Duration of hearing problem recode 2"
      LACHRC2    ="FHS.362_02.000.R03: Hearing problem condition status"
      LATIME3    ="FHS.364_01.000: 
Duration of arthritis/rheumatism: Number of units"
      LAUNIT3    ="FHS.364_02.000: Duration of arthritis/rheumatism: Time unit"
      LADURA3    ="FHS.364_02.000.R01: 
Duration of arthritis/rheumatism (in years)"
      LADURB3    ="FHS.364_02.000.R02: Duration of arthritis/rheumatism recode 2
"
      LACHRC3    ="FHS.364_02.000.R03: Arthritis/rheumatism condition status"
      LATIME4    ="FHS.366_01.000: 
Duration of back/neck problem: Number of units"
      LAUNIT4    ="FHS.366_02.000: Duration of back/neck problem: Time unit"
      LADURA4    ="FHS.366_02.000.R01: Duration of back/neck problem (in years)"
      LADURB4    ="FHS.366_02.000.R02: Duration of back/neck problem recode 2"
      LACHRC4    ="FHS.366_02.000.R03: Back/neck problem condition status"
      LATIME5    ="FHS.368_01.000: 
Duration of fracture/bone/joint injury: Number of units"
      LAUNIT5    ="FHS.368_02.000: 
Duration of fracture/bone/joint injury: Time unit"
      LADURA5    ="FHS.368_02.000.R01: 
Duration of fracture/bone/joint injury (in years)"
      LADURB5    ="FHS.368_02.000.R02: 
Duration of fracture/bone/joint injury recode 2"
      LACHRC5    ="FHS.368_02.000.R03: 
Fracture/bone/joint injury condition status"
      LATIME6    ="FHS.370_01.000: Duration of other injury: Number of units"
      LAUNIT6    ="FHS.370_02.000: Duration of other injury: Time unit"
      LADURA6    ="FHS.370_02.000.R01: Duration of other injury (in years)"
      LADURB6    ="FHS.370_02.000.R02: Duration of other injury recode 2"
      LACHRC6    ="FHS.370_02.000.R03: Other injury condition status"
      LATIME7    ="FHS.372_01.000: Duration of heart problem: Number of units"
      LAUNIT7    ="FHS.372_02.000: Duration of heart problem: Time unit"
      LADURA7    ="FHS.372_02.000.R01: Duration of heart problem (in years)"
      LADURB7    ="FHS.372_02.000.R02: Duration of heart problem recode 2"
      LACHRC7    ="FHS.372_02.000.R03: Heart problem condition status"
      LATIME8    ="FHS.374_01.000: Duration of stroke: Number of units"
      LAUNIT8    ="FHS.374_02.000: Duration of stroke: Time unit"
      LADURA8    ="FHS.374_02.000.R01: Duration of stroke (in years)"
      LADURB8    ="FHS.374_02.000.R02: Duration of stroke recode 2"
      LACHRC8    ="FHS.374_02.000.R03: Stroke condition status"
      LATIME9    ="FHS.376_01.000: Duration of hypertension: Number of units"
      LAUNIT9    ="FHS.376_02.000: Duration of hypertension: Time unit"
      LADURA9    ="FHS.376_02.000.R01: Duration of hypertension (in years)"
      LADURB9    ="FHS.376_02.000.R02: Duration of hypertension recode 2"
      LACHRC9    ="FHS.376_02.000.R03: Hypertension condition status"
      LATIME10   ="FHS.378_01.000: Duration of diabetes: Number of units"
      LAUNIT10   ="FHS.378_02.000: Duration of diabetes: Time unit"
      LADURA10   ="FHS.378_02.000.R01: Duration of diabetes (in years)"
      LADURB10   ="FHS.378_02.000.R02: Duration of diabetes recode 2"
      LACHRC10   ="FHS.378_02.000.R03: Diabetes condition status"
      LATIME11   ="FHS.380_01.000: 
Duration of lung/breathing problem: Number of units"
      LAUNIT11   ="FHS.380_02.000: Duration of lung/breath problem: Time unit"
      LADURA11   ="FHS.380_02.000.R01: 
Duration of lung/breathing problem (in years)"
      LADURB11   ="FHS.380_02.000.R02: 
Duration of lung/breathing problem recode 2"
      LACHRC11   ="FHS.380_02.000.R03: Lung/breathing problem condition status"
      LATIME12   ="FHS.382_01.000: Duration of cancer: Number of units"
      LAUNIT12   ="FHS.382_02.000: Duration of cancer: Time unit"
      LADURA12   ="FHS.382_02.000.R01: Duration of cancer (in years)"
      LADURB12   ="FHS.382_02.000.R02: Duration of cancer recode 2"
      LACHRC12   ="FHS.382_02.000.R03: Cancer condition status"
      LATIME13   ="FHS.383_01.000: Duration of birth defect: Number of units"
      LAUNIT13   ="FHS.383_02.000: Duration of birth defect: Time unit"
      LADURA13   ="FHS.383_02.000.R01: Duration of birth defect (in years)"
      LADURB13   ="FHS.383_02.000.R02: Duration of birth defect recode 2"
      LACHRC13   ="FHS.383_02.000.R03: Birth defect condition status"
      LATIME14   ="FHS.384_01.000: Duration of ment retardation: Number of units
"
      LAUNIT14   ="FHS.384_02.000: Duration of ment retardation: Time unit"
      LADURA14   ="FHS.384_02.000.R01: Duration of mental retardation (in years)
"
      LADURB14   ="FHS.384_02.000.R02: Duration of mental retardation recode 2"
      LACHRC14   ="FHS.384_02.000.R03: Mental retardation condition status"
      LATIME15   ="FHS.386_01.000: 
Duration of other developmental problem: Number of units"
      LAUNIT15   ="FHS.386_02.000: Duration of otr dev problem: Time unit"
      LADURA15   ="FHS.386_02.000.R01: 
Duration of other developmental problem (in years)"
      LADURB15   ="FHS.386_02.000.R02: 
Duration of other developmental problem recode 2"
      LACHRC15   ="FHS.386_02.000.R03: 
Other developmental problem condition status"
      LATIME16   ="FHS.388_01.000: Duration of senility: Number of units"
      LAUNIT16   ="FHS.388_02.000: Duration of senility: Time unit"
      LADURA16   ="FHS.388_02.000.R01: Duration of senility (in years)"
      LADURB16   ="FHS.388_02.000.R02: Duration of senility recode 2"
      LACHRC16   ="FHS.388_02.000.R03: Senility condition status"
      LATIME17   ="FHS.390_01.000: 
Duration of dep/anx/emot problem: Number of units"
      LAUNIT17   ="FHS.390_02.000: Duration of dep/anx/emot problem: Time unit"
      LADURA17   ="FHS.390_02.000.R01: 
Duration of depression/anxiety/emotional problem (in years)"
      LADURB17   ="FHS.390_02.000.R02: 
Duration of depression/anxiety/emotional problem recode 2"
      LACHRC17   ="FHS.390_02.000.R03: 
Depression/anxiety/emotional problem condition status"
      LATIME18   ="FHS.392_01.000: Duration of weight problem: Number of units"
      LAUNIT18   ="FHS.392_02.000: Duration of weight problem: Time unit"
      LADURA18   ="FHS.392_02.000.R01: Duration of weight problem (in years)"
      LADURB18   ="FHS.392_02.000.R02: Duration of weight problem recode 2"
      LACHRC18   ="FHS.392_02.000.R03: Weight problem condition status"
      LATIME19   ="FHS.394_01.000: 
Duration of missing limb/amputation: Number of units"
      LAUNIT19   ="FHS.394_02.000: 
Duration of missing limb/amputation: Time unit"
      LADURA19   ="FHS.394_02.000.R01: 
Duration of missing limb/amputation (in years)"
      LADURB19   ="FHS.394_02.000.R02: 
Duration of missing limb/amputation recode 2"
      LACHRC19   ="FHS.394_02.000.R03: Missing limb/amputation condition status"
      LATIME20   ="FHS.396_01.000: 
Duration of musculoskeletal problem: Number of units"
      LAUNIT20   ="FHS.396_02.000: 
Duration of musculoskeletal problem: Time unit"
      LADURA20   ="FHS.396_02.000.R01: 
Duration of musculoskeletal problem (in years)"
      LADURB20   ="FHS.396_02.000.R02: 
Duration of musculoskeletal problem recode 2"
      LACHRC20   ="FHS.396_02.000.R03: Musculoskeletal problem condition status"
      LATIME21   ="FHS.398_01.000: 
Duration of circulatory problem: Number of units"
      LAUNIT21   ="FHS.398_02.000: Duration of circulatory problem: Time unit"
      LADURA21   ="FHS.398_02.000.R01: 
Duration of circulatory problem (in years)"
      LADURB21   ="FHS.398_02.000.R02: Duration of circulatory problem recode 2"
      LACHRC21   ="FHS.398_02.000.R03: Circulatory problem condition status"
      LATIME22   ="FHS.400_01.000: 
Duration of endocrine problem: Number of units"
      LAUNIT22   ="FHS.400_02.000: Duration of endocrine problem: Time unit"
      LADURA22   ="FHS.400_02.000.R01: Duration of endocrine problem (in years)"
      LADURB22   ="FHS.400_02.000.R02: Duration of endocrine problem recode 2"
      LACHRC22   ="FHS.400_02.000.R03: Endocrine problem condition status"
      LATIME23   ="FHS.402_01.000: 
Duration of nervous system condition: Number of units"
      LAUNIT23   ="FHS.402_02.000: 
Duration of nervous system condition: Time unit"
      LADURA23   ="FHS.402_02.000.R01: 
Duration of nervous system condition (in years)"
      LADURB23   ="FHS.402_02.000.R02: 
Duration of nervous system condition recode 2"
      LACHRC23   ="FHS.402_02.000.R03: Nervous system condition status"
      LATIME24   ="FHS.404_01.000: 
Duration of digestive problems: Number of units"
      LAUNIT24   ="FHS.404_02.000: 
Duration of digestive problems: Number of units"
      LADURA24   ="FHS.404_02.000.R01: Duration of digestive problem (in years)"
      LADURB24   ="FHS.404_02.000.R02: Duration of digestive problem recode 2"
      LACHRC24   ="FHS.404_02.000.R03: Digestive problem condition status"
      LATIME25   ="FHS.406_01.000: 
Duration of genitourinary problem: Number of units"
      LAUNIT25   ="FHS.406_02.000: Duration of genitourinary problem: Time unit"
      LADURA25   ="FHS.406_02.000.R01: 
Duration of genitourinary problem (in years)"
      LADURB25   ="FHS.406_02.000.R02: 
Duration of genitourinary problem recode 2"
      LACHRC25   ="FHS.406_02.000.R03: Genitourinary problem condition status"
      LATIME26   ="FHS.408_01.000: Duration of skin problems: Number of units"
      LAUNIT26   ="FHS.408_02.000: Duration of skin problems: Time unit"
      LADURA26   ="FHS.408_02.000.R01: Duration of skin problem (in years)"
      LADURB26   ="FHS.408_02.000.R02: Duration of skin problem recode 2"
      LACHRC26   ="FHS.408_02.000.R03: Skin problems condition status"
      LATIME27   ="FHS.410_01.000: Duration of blood problem: Number of units"
      LAUNIT27   ="FHS.410_02.000: Duration of blood problem: Time unit"
      LADURA27   ="FHS.410_02.000.R01: Duration of blood problem (in years)"
      LADURB27   ="FHS.410_02.000.R02: Duration of blood problem recode 2"
      LACHRC27   ="FHS.410_02.000.R03: Blood problem condition status"
      LATIME28   ="FHS.412_01.000: Duration of benign tumor: Number of units"
      LAUNIT28   ="FHS.412_02.000: Duration of benign tumor: Time unit"
      LADURA28   ="FHS.412_02.000.R01: Duration of benign tumor (in years)"
      LADURB28   ="FHS.412_02.000.R02: Duration of benign tumor recode 2"
      LACHRC28   ="FHS.412_02.000.R03: Benign tumor condition status"
      LATIME29   ="FHS.414_01.000: 
Duration of alcohol or drug problem: Number of units"
      LAUNIT29   ="FHS.414_02.000: 
Duration of alcohol or drug problem: Time unit"
      LADURA29   ="FHS.414_02.000.R01: 
Duration of alcohol or drug problem (in years)"
      LADURB29   ="FHS.414_02.000.R02: 
Duration of alcohol or drug problem recode 2"
      LACHRC29   ="FHS.414_02.000.R03: Alcohol or drug problem condition status"
      LATIME30   ="FHS.416_01.000: 
Duration of other mental problem: Number of units"
      LAUNIT30   ="FHS.416_02.000: Duration of other mental problem: Time unit"
      LADURA30   ="FHS.416_02.000.R01: 
Duration of other mental problem (in years)"
      LADURB30   ="FHS.416_02.000.R02: Duration of other mental problem recode 2
"
      LACHRC30   ="FHS.416_02.000.R03: Other mental problem condition status"
      LATIME31   ="FHS.418_01.000: 
Duration of surgical after-effects: Number of units"
      LAUNIT31   ="FHS.418_02.000: Duration of surgical after-effects: Time unit
"
      LADURA31   ="FHS.418_02.000.R01: 
Duration of surgical after-effects (in years)"
      LADURB31   ="FHS.418_02.000.R02: 
Duration of surgical after-effects recode 2"
      LACHRC31   ="FHS.418_02.000.R03: Surgical after-effects condition status"
      LATIME32   ='FHS.420_01.000: Duration of "old age": Number of units'
      LAUNIT32   ='FHS.420_02.000: Duration of "old age": Number of units'
      LADURA32   ='FHS.420_02.000.R01: Duration of "old age" (in years)'
      LADURB32   ='FHS.420_02.000.R02: Duration of "old age" recode 2'
      LACHRC32   ='FHS.420_02.000.R03: "Old age" condition status'
      LATIME33   ="FHS.422_01.000: Duration of fatigue problem: Number of units"
      LAUNIT33   ="FHS.422_02.000: Duration of fatigue problem: Time unit"
      LADURA33   ="FHS.422_02.000.R01: Duration of fatigue problem (in years)"
      LADURB33   ="FHS.422_02.000.R02: Duration of fatigue problem recode 2"
      LACHRC33   ="FHS.422_02.000.R03: Fatigue problem condition status"
      LATIME34   ="FHS.424_01.000: 
Duration of pregnancy-related problem: Number of units"
      LAUNIT34   ="FHS.424_02.000: 
Duration of pregnancy-related problem: Time unit"
      LADURA34   ="FHS.424_02.000.R01: 
Duration of pregnancy-related problem (in years)"
      LADURB34   ="FHS.424_02.000.R02: 
Duration of pregnancy-related problem recode 2"
      LACHRC34   ="FHS.424_02.000.R03: Pregnancy-related condition status"
      LATIME90   ="FHS.450_01.000: 
Duration of other N.E.C. problem (1): Number of units"
      LAUNIT90   ="FHS.450_02.000: 
Duration of other N.E.C. problem (1): Time unit"
      LADURA90   ="FHS.450_02.000.R01: 
Duration of other N.E.C. problem (1) (in years)"
      LADURB90   ="FHS.450_02.000.R02: 
Duration of other N.E.C. problem (1) recode 2"
      LACHRC90   ="FHS.450_02.000.R03: Other N.E.C. problem (1) condition status
"
      LATIME91   ="FHS.452_01.000: 
Duration of other N.E.C. problem (2): Number of units"
      LAUNIT91   ="FHS.452_02.000: 
Duration of other N.E.C. problem (2): Time unit"
      LADURA91   ="FHS.452_02.000.R01: 
Duration of other N.E.C. problem (2) (in years)"
      LADURB91   ="FHS.452_02.000.R02: 
Duration of other N.E.C. problem (2) recode2"
      LACHRC91   ="FHS.452_02.000.R03: Other N.E.C. problem (2) condition status
"
      LCONDRT    ="FHS.452_02.000.R04: 
Chronic condition recode for person with LA"
      LACHRONR   ="FHS.452_02.000.R05: Lim of activ recode by chron cond status"
      PHSTAT     ="FHS.500_00.000: Reported health status"

      /* FAU LABELS */

      PDMED12M   ="FAU.020_00.000: Was medical care delayed for - - (cost), 12m"
      PNMED12M   ="FAU.040_00.000: 
Did - - need and NOT get medical care (cost), 12m"
      PHOSPYR    ="FAU.060_00.000: Was - - in a hospital OVERNIGHT, 12m"
      HOSPNO     ="FAU.070_00.000: Number of times in hospital overnight, 12m"
      HPNITE     ="FAU.110_00.000: Number of nights in hospital, 12m"
      PHCHM2W    ="FAU.130_00.000: 
Did - - receive HOME care by health professional, 2 wk"
      PHCHMN2W   ="FAU.140_00.000: 
Number of HOME visits by health professional, 2wk"
      PHCPH2WR   ="FAU.160_00.000: Did--get advice/test results by phone, 2wk"
      PHCPHN2W   ="FAU.170_00.000: 
Number of PHONE calls to health professional, 2wk"
      PHCDV2W    ="FAU.190_00.000: 
Did - - see health professional in office, etc, 2wk"
      PHCDVN2W   ="FAU.200_00.000: 
Number of times VISITED health professional, 2wk"
      P10DVYR    ="FAU.220_00.000: Did - - receive care 10+ times, 12m"

      /* FHI LABELS */

      NOTCOV     ="FHI.075_00.000: Cov stat as used in Health United States"
      MEDICARE   ="FHI.075_00.000: Medicare coverage recode"
      MCPART     ="FHI.090_00.000: Type of Medicare coverage"
      MCCHOICE   ="FHI.095_00.000: Enrolled in Medicare Advantage Plan"
      MCHMO      ="FHI.100_00.000: Is - - signed up with an HMO"
      MCNAMEN    ="FHI.110_00.000: Medicare HMO name"
      MCREF      ="FHI.114_00.000: Need a referral for special care"
      MCPAYPRE   ="FHI.116_00.000: More comprehensive benefit plan"
      MCRXCARD   ="FHI.118_00.000: Medicare prescription drug card"
      MEDICAID   ="FHI.118_00.000: Medicaid coverage recode"
      MACHMD     ="FHI.120_00.000: Any doc, chooses from a list, doc assigned"
      MAPCMD     ="FHI.140_00.000: Primary care physician for routine care"
      MAREF      ="FHI.150_00.000: Need a referral for special care"
      SINGLE     ="FHI.150_00.000: Single service plan recode"
      SSTYPEA    ="FHI.156_01.000: Accidents"
      SSTYPEB    ="FHI.156_02.000: AIDS care"
      SSTYPEC    ="FHI.156_03.000: Cancer treatment"
      SSTYPED    ="FHI.156_04.000: Catastrophic care"
      SSTYPEE    ="FHI.156_05.000: Dental care"
      SSTYPEF    ="FHI.156_06.000: Disability insurance"
      SSTYPEG    ="FHI.156_07.000: Hospice care"
      SSTYPEH    ="FHI.156_08.000: Hospitalization only"
      SSTYPEI    ="FHI.156_09.000: Long-term care"
      SSTYPEJ    ="FHI.156_10.000: Prescriptions"
      SSTYPEK    ="FHI.156_11.000: Vision care"
      SSTYPEL    ="FHI.156_12.000: Other"
      PRIVATE    ="FHI.157_00.000: Private health insurance recode"
      HITYPE1    ="FHI.160_00.000: Name of plan (Plan 1)"
      WHONAM1    ="FHI.200_01.000: Plan in whose name (Plan 1)"
      PLNWRKN1   ="FHI.210_01.000: How plan was originally obtained (plan 1)"
      PLNPAY11   ="FHI.220_11.000: Paid for by self or family (Plan 1)"
      PLNPAY21   ="FHI.220_12.000: Paid for by employer or union (Plan 1)"
      PLNPAY31   ="FHI.220_13.000: 
Paid for by someone outside the household (Plan 1)"
      PLNPAY41   ="FHI.220_14.000: Paid for by Medicare (Plan 1)"
      PLNPAY51   ="FHI.220_15.000: Paid for by Medicaid (Plan 1)"
      PLNPAY61   ="FHI.220_16.000: Paid for by SCHIP (Plan 1)"
      PLNPAY71   ="FHI.220_17.000: Paid for by government program (Plan 1)"
      HICOSTR1   ="FHI.230_12.000: Out-of-pocket premium cost (Plan 1)"
      PLNMGD1    ="FHI.240_01.000: Type of private plan (Plan 1)"
      MGCHMD1    ="FHI.242_01.000: Doctor choice (Plan 1)"
      MGPRMD1    ="FHI.244_01.000: Preferred list (Plan 1)"
      MGPYMD1    ="FHI.246_01.000: Out of plan use (Plan 1)"
      MGPREF1    ="FHI.248_01.000: Private referral (Plan 1)"
      PRRXCOV1   ="FHI.249_01.000: Prescription drug benefit (Plan 1)"
      HITYPE2    ="FHI.172_00.000: Name of plan (Plan 2)"
      WHONAM2    ="FHI.200_02.000: Plan in whose name (Plan 2)"
      PLNWRKN2   ="FHI.210_02.000: How plan was originally obtained (Plan 2)"
      PLNPAY12   ="FHI.220_21.000: Paid for by self or family (Plan 2)"
      PLNPAY22   ="FHI.220_22.000: Paid for by employer or union (Plan 2)"
      PLNPAY32   ="FHI.220_23.000: 
Paid for by someone outside the household (Plan 2)"
      PLNPAY42   ="FHI.220_24.000: Paid for by Medicare (Plan 2)"
      PLNPAY52   ="FHI.220_25.000: Paid for by Medicaid (Plan 2)"
      PLNPAY62   ="FHI.220_26.000: Paid for by SCHIP (Plan 2)"
      PLNPAY72   ="FHI.220_27.000: Paid for by government program (Plan 2)"
      HICOSTR2   ="FHI.230_22.000: Out-of-pocket premium cost (Plan 2)"
      PLNMGD2    ="FHI.240_02.000: Type of private plan (plan 2)"
      MGCHMD2    ="FHI.242_02.000: Doctor choice (Plan 2)"
      MGPRMD2    ="FHI.244_02.000: Preferred list (Plan 2)"
      MGPYMD2    ="FHI.246_02.000: Out of plan use (Plan 2)"
      MGPREF2    ="FHI.248_02.000: Private referral (Plan 2)"
      PRRXCOV2   ="FHI.249_02.000: Prescription drug benefit (Plan 2)"
      PRPLPLUS   ="FHI.249_04.000: Person has more than two private plans"
      SCHIP      ="FHI.250_00.000: SCHIP coverage recode"
      STDOC1     ="FHI.251_00.000: 
Any doc, chooses from a list, doc assigned (SCHIP)"
      STPCMD1    ="FHI.252_00.000: 
Primary care physician for routine care (SCHIP)"
      STREF1     ="FHI.253_00.000: Need a referral for special care (SCHIP)"
      OTHERPUB   ="FHI.253_00.000: State-sponsored health plan recode"
      STDOC2     ="FHI.258_00.000: 
Any doc, chooses from a list, doc assigned (OTHERPUB)"
      STPCMD2    ="FHI.259_00.000: 
Primary care physician for routine care (OTHERPUB)"
      STREF2     ="FHI.260_00.000: Need a referral for special care (OTHERPUB)"
      OTHERGOV   ="FHI.260_00.000: Other government program recode"
      STDOC3     ="FHI.265_00.000: 
Any doc, chooses from a list, doc assigned (OTHERGOV)"
      STPCMD3    ="FHI.266_00.000: 
Primary care physician for routine care (OTHERGOV)"
      STREF3     ="FHI.267_00.000: Need a referral for special care (OTHERGOV)"
      MILITARY   ="FHI.267_00.000: Military health care coverage recode"
      MILSPC1    ="FHI.270_01.000: TRICARE coverage"
      MILSPC2    ="FHI.270_02.000: VA coverage"
      MILSPC3    ="FHI.270_03.000: CHAMP-VA coverage"
      MILSPC4    ="FHI.270_04.000: Other military coverage"
      MILMAN     ="FHI.275_00.000: Type of TRICARE coverage"
      IHS        ="FHI.276_00.000: Indian Health Service recode"
      HILAST     ="FHI.280_00.000: How long since last had hlth coverage"
      HISTOP1    ="FHI.290_01.000: Lost job or changed employers"
      HISTOP2    ="FHI.290_02.000: Divorced/sep/death of spouse or parent"
      HISTOP3    ="FHI.290_03.000: Ineligible because of age/left school"
      HISTOP4    ="FHI.290_04.000: Employer does not offer/not eligible for cov"
      HISTOP5    ="FHI.290_05.000: Cost is too high"
      HISTOP6    ="FHI.290_06.000: Insurance company refused coverage"
      HISTOP7    ="FHI.290_07.000: Medicaid/medi plan stopped after pregnancy"
      HISTOP8    ="FHI.290_08.000: Lost Medicaid/new job/increase in income"
      HISTOP9    ="FHI.290_09.000: Lost Medicaid (other)"
      HISTOP10   ="FHI.290_10.000: Other"
      HISTOP11   ="FHI.290_10.000: Never had health insurance"
      HISTOP12   ="FHI.290_10.000: Moved from another county/state/country"
      HISTOP13   ="FHI.290_10.000: Self-employed"
      HISTOP14   ="FHI.290_10.000: No need for it/chooses not to have"
      HISTOP15   ="FHI.290_10.000: Got married"
      HINOTYR    ="FHI.300_00.000: No hlth coverage during past 12 months"
      HINOTMYR   ="FHI.310_00.000: Months without coverage in past 12 months"
      HCSPFYR    ="FHI.320_00.000: Amount family spent for medical care"
      HIKINDA    ="FHI.070_01.000: Private health insurance"
      HIKINDB    ="FHI.070_02.000: Medicare"
      HIKINDC    ="FHI.070_03.000: Medi-Gap"
      HIKINDD    ="FHI.070_04.000: Medicaid"
      HIKINDE    ="FHI.070_05.000: SCHIP"
      HIKINDF    ="FHI.070_06.000: Military health care"
      HIKINDG    ="FHI.070_07.000: Indian Health Service"
      HIKINDH    ="FHI.070_08.000: State-sponsored health plan"
      HIKINDI    ="FHI.070_09.000: Other government plan"
      HIKINDJ    ="FHI.070_10.000: Single service plan"
      HIKINDK    ="FHI.070_11.000: No coverage of any type"
      MCAREPRB   ="FHI.072_00.000: Medicare coverage probe"
      MCAIDPRB   ="FHI.073_00.000: Medicaid coverage probe"
      SINCOV     ="FHI.074_00.000: Single service plan probe"

      /* FSD LABELS */

      PLBORN     ="FSD.001_00.000: Born in the United States"
      REGIONBR   ="FSD.003_01.000.R01: Geographic region of birth recode"
      GEOBRTH    ="FSD.003_01.000.R02: Geographic place of birth recode"
      YRSINUS    ="FSD.005_00.000.R01: Years that - - has been in the U.S."
      CITIZENP   ="FSD.006_00.000.R01: U.S. citizenship status"
      HEADST     ="FSD.007_00.000: Now attending Head Start"
      HEADSTV1   ="FSD.008_00.000: Ever attended Head Start"
      EDUC1      ="FSD.010_00.000: Highest level of school completed"
      PMILTRY    ="FSD.042_00.000: Did - - receive honorable discharge"
      DOINGLWP   ="FSD.050_00.000: What was - - doing last week"
      WHYNOWKP   ="FSD.060_00.000: Main reason for not working last week"
      WRKHRS2    ="FSD.070_00.000.R01: Hours worked last week"
      WRKFTALL   ="FSD.080_00.000: Usually work full time"
      WRKLYR1    ="FSD.100_00.000: Work for pay last year"
      WRKMYR     ="FSD.110_00.000: Months worked last year"
      ERNYR_P    ="FSD.120_00.000.R01: Total earnings last year"
      HIEMPOF    ="FSD.130_00.000: Health insurance offered at workplace"

      /* FIN LABELS */

      PSAL       ="FIN.040_00.000: Receive income from wages/salary (last CY)"
      PSEINC     ="FIN.060_00.000: Receive income from self-employment (last CY)
"
      PSSRR      ="FIN.080_00.000: Receive income from SS or RR (last CY)"
      PSSRRDB    ="FIN.084_00.000: Received SS or RR as a disability benefit"
      PSSRRD     ="FIN.086_00.000: Received benefit due to disability"
      PPENS      ="FIN.100_00.000: 
Receive income from other pensions (disability)"
      POPENS     ="FIN.104_00.000: Receive income from any other pension"
      PSSI       ="FIN.120_00.000: Received income from SSI"
      PSSID      ="FIN.122_00.000: Received SSI due to disability"
      PTANF      ="FIN.160_00.000: Received income from welfare/TANF"
      POWBEN     ="FIN.166_00.000: Received other government assistance"
      PINTRSTR   ="FIN.180_00.000: Receive interest income"
      PDIVD      ="FIN.200_00.000: Receive dividends from stocks, funds, etc."
      PCHLDSP    ="FIN.220_00.000: Receive income from child support"
      PINCOT     ="FIN.240_00.000: Received income from any other source"
      PSSAPL     ="FIN.310_00.000: Ever applied for SSI"
      PSDAPL     ="FIN.340_00.000: Ever applied for SSDI"
      TANFMYR    ="FIN.350_00.000: Months received welfare/TANF (last CY)"
      PFSTP      ="FIN.370_00.000: 
Person authorized to receive food stamps (last CY)"
      FSTPMYR    ="FIN.380_00.000: Months received food stamps (last CY)"
      ELIGPWIC   ="FIN.384_00.000.R01: Anyone age-eligible for the WIC program?"
      PWIC       ="FIN.385_00.000: Received WIC benefits"
      WIC_FLAG   ="FIN.385_00.000.R01: WIC recipient age-eligible"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;

   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE     PEP001X.   SRVY_YR     PEP002X.   HHX         $GROUPC.
      WTIA        GROUPN.    WTFA        GROUPN.

      /* UCF FORMAT ASSOCIATIONS */

      STRATUM     PEP008X.   PSU         PEP009X.

      /* HHC FORMAT ASSOCIATIONS */

      SEX         PEP010X.   ORIGIN_I    PEP011X.   ORIGIMPT    PEP012X.
      HISPIMPT    PEP013X.   HISPAN_I    PEP014X.   RACERPI2    PEP015X.
      RACEIMP2    PEP016X.   MRACRPI2    PEP017X.   MRACBPI2    PEP018X.
      RACRECI2    PEP019X.   HISCODI2    PEP020X.   ERIMPFLG    PEP021X.
      NOWAF       PEP022X.   RRP         PEP023X.   HHREFLG     $PEP024X.
      DOB_M       $PEP025X.  DOB_Y_P     $PEP026X.  AGE_P       PEP027X.

      /* FID FORMAT ASSOCIATIONS */

      FRRP        PEP028X.   FMRPFLG     $PEP029X.  FMREFLG     $PEP030X.
      R_MARITL    PEP031X.   COHAB1      PEP032X.   COHAB2      PEP033X.
      CDCMSTAT    PEP034X.   SIB_DEG     PEP035X.   FMOTHER     PEP036X.
      MOM_DEG     PEP037X.   FFATHER     PEP038X.   DAD_DEG     PEP037X.
      PARENTS     PEP040X.   MOM_ED      PEP041X.   DAD_ED      PEP041X.
      ASTATFLG    PEP043X.   CSTATFLG    PEP044X.

      /* FHS FORMAT ASSOCIATIONS */

      PLAPLYLM    PEP032X.   PLAPLYUN    PEP032X.   PSPEDEIS    PEP032X.
      PSPEDEM     PEP032X.   PLAADL      PEP032X.   LABATH      PEP032X.
      LADRESS     PEP032X.   LAEAT       PEP032X.   LABED       PEP032X.
      LATOILT     PEP032X.   LAHOME      PEP032X.   PLAIADL     PEP032X.
      PLAWKNOW    PEP032X.   PLAWKLIM    PEP058X.   PLAWALK     PEP032X.
      PLAREMEM    PEP032X.   PLIMANY     PEP061X.   LA1AR       PEP062X.
      LAHCC1      PEP063X.   LAHCC2      PEP063X.   LAHCC3      PEP063X.
      LAHCC4      PEP063X.   LAHCC5      PEP063X.   LAHCC6      PEP063X.
      LAHCC7      PEP063X.   LAHCC8      PEP063X.   LAHCC9      PEP063X.
      LAHCC10     PEP063X.   LAHCC11     PEP063X.   LAHCC12     PEP063X.
      LAHCC13     PEP063X.   LAHCC90     PEP063X.   LAHCC91     PEP063X.
      LCTIME1     PEP078X.   LCUNIT1     PEP079X.   LCDURA1     PEP080X.
      LCDURB1     PEP081X.   LCCHRC1     PEP082X.   LCTIME2     PEP078X.
      LCUNIT2     PEP079X.   LCDURA2     PEP080X.   LCDURB2     PEP081X.
      LCCHRC2     PEP082X.   LCTIME3     PEP078X.   LCUNIT3     PEP079X.
      LCDURA3     PEP080X.   LCDURB3     PEP081X.   LCCHRC3     PEP082X.
      LCTIME4     PEP078X.   LCUNIT4     PEP079X.   LCDURA4     PEP080X.
      LCDURB4     PEP081X.   LCCHRC4     PEP082X.   LCTIME5     PEP078X.
      LCUNIT5     PEP079X.   LCDURA5     PEP080X.   LCDURB5     PEP081X.
      LCCHRC5     PEP082X.   LCTIME6     PEP078X.   LCUNIT6     PEP079X.
      LCDURA6     PEP080X.   LCDURB6     PEP081X.   LCCHRC6     PEP082X.
      LCTIME7     PEP078X.   LCUNIT7     PEP079X.   LCDURA7     PEP080X.
      LCDURB7     PEP081X.   LCCHRC7     PEP082X.   LCTIME8     PEP078X.
      LCUNIT8     PEP079X.   LCDURA8     PEP080X.   LCDURB8     PEP081X.
      LCCHRC8     PEP082X.   LCTIME9     PEP078X.   LCUNIT9     PEP079X.
      LCDURA9     PEP080X.   LCDURB9     PEP081X.   LCCHRC9     PEP082X.
      LCTIME10    PEP078X.   LCUNIT10    PEP079X.   LCDURA10    PEP080X.
      LCDURB10    PEP081X.   LCCHRC10    PEP082X.   LCTIME11    PEP078X.
      LCUNIT11    PEP079X.   LCDURA11    PEP080X.   LCDURB11    PEP081X.
      LCCHRC11    PEP082X.   LCTIME12    PEP078X.   LCUNIT12    PEP079X.
      LCDURA12    PEP080X.   LCDURB12    PEP081X.   LCCHRC12    PEP082X.
      LCTIME13    PEP078X.   LCUNIT13    PEP079X.   LCDURA13    PEP080X.
      LCDURB13    PEP081X.   LCCHRC13    PEP082X.   LCTIME90    PEP078X.
      LCUNIT90    PEP079X.   LCDURA90    PEP080X.   LCDURB90    PEP081X.
      LCCHRC90    PEP082X.   LCTIME91    PEP078X.   LCUNIT91    PEP079X.
      LCDURA91    PEP080X.   LCDURB91    PEP081X.   LCCHRC91    PEP082X.
      LAHCA1      PEP063X.   LAHCA2      PEP063X.   LAHCA3      PEP063X.
      LAHCA4      PEP063X.   LAHCA5      PEP063X.   LAHCA6      PEP063X.
      LAHCA7      PEP063X.   LAHCA8      PEP063X.   LAHCA9      PEP063X.
      LAHCA10     PEP063X.   LAHCA11     PEP063X.   LAHCA12     PEP063X.
      LAHCA13     PEP063X.   LAHCA14     PEP063X.   LAHCA15     PEP063X.
      LAHCA16     PEP063X.   LAHCA17     PEP063X.   LAHCA18     PEP063X.
      LAHCA19_    PEP063X.   LAHCA20_    PEP063X.   LAHCA21_    PEP063X.
      LAHCA22_    PEP063X.   LAHCA23_    PEP063X.   LAHCA24_    PEP063X.
      LAHCA25_    PEP063X.   LAHCA26_    PEP063X.   LAHCA27_    PEP063X.
      LAHCA28_    PEP063X.   LAHCA29_    PEP063X.   LAHCA30_    PEP063X.
      LAHCA31_    PEP063X.   LAHCA32_    PEP063X.   LAHCA33_    PEP063X.
      LAHCA34_    PEP063X.   LAHCA90     PEP063X.   LAHCA91     PEP063X.
      LATIME1     PEP078X.   LAUNIT1     PEP079X.   LADURA1     PEP191X.
      LADURB1     PEP192X.   LACHRC1     PEP082X.   LATIME2     PEP078X.
      LAUNIT2     PEP079X.   LADURA2     PEP191X.   LADURB2     PEP192X.
      LACHRC2     PEP082X.   LATIME3     PEP078X.   LAUNIT3     PEP079X.
      LADURA3     PEP191X.   LADURB3     PEP192X.   LACHRC3     PEP082X.
      LATIME4     PEP078X.   LAUNIT4     PEP079X.   LADURA4     PEP191X.
      LADURB4     PEP192X.   LACHRC4     PEP082X.   LATIME5     PEP078X.
      LAUNIT5     PEP079X.   LADURA5     PEP191X.   LADURB5     PEP192X.
      LACHRC5     PEP082X.   LATIME6     PEP078X.   LAUNIT6     PEP079X.
      LADURA6     PEP191X.   LADURB6     PEP192X.   LACHRC6     PEP082X.
      LATIME7     PEP078X.   LAUNIT7     PEP079X.   LADURA7     PEP191X.
      LADURB7     PEP192X.   LACHRC7     PEP082X.   LATIME8     PEP078X.
      LAUNIT8     PEP079X.   LADURA8     PEP191X.   LADURB8     PEP192X.
      LACHRC8     PEP082X.   LATIME9     PEP078X.   LAUNIT9     PEP079X.
      LADURA9     PEP191X.   LADURB9     PEP192X.   LACHRC9     PEP082X.
      LATIME10    PEP078X.   LAUNIT10    PEP079X.   LADURA10    PEP191X.
      LADURB10    PEP192X.   LACHRC10    PEP082X.   LATIME11    PEP078X.
      LAUNIT11    PEP079X.   LADURA11    PEP191X.   LADURB11    PEP192X.
      LACHRC11    PEP082X.   LATIME12    PEP078X.   LAUNIT12    PEP079X.
      LADURA12    PEP191X.   LADURB12    PEP192X.   LACHRC12    PEP082X.
      LATIME13    PEP078X.   LAUNIT13    PEP079X.   LADURA13    PEP191X.
      LADURB13    PEP192X.   LACHRC13    PEP082X.   LATIME14    PEP078X.
      LAUNIT14    PEP079X.   LADURA14    PEP191X.   LADURB14    PEP192X.
      LACHRC14    PEP082X.   LATIME15    PEP078X.   LAUNIT15    PEP079X.
      LADURA15    PEP191X.   LADURB15    PEP192X.   LACHRC15    PEP082X.
      LATIME16    PEP078X.   LAUNIT16    PEP079X.   LADURA16    PEP191X.
      LADURB16    PEP192X.   LACHRC16    PEP082X.   LATIME17    PEP078X.
      LAUNIT17    PEP079X.   LADURA17    PEP191X.   LADURB17    PEP192X.
      LACHRC17    PEP082X.   LATIME18    PEP078X.   LAUNIT18    PEP079X.
      LADURA18    PEP191X.   LADURB18    PEP192X.   LACHRC18    PEP082X.
      LATIME19    PEP078X.   LAUNIT19    PEP079X.   LADURA19    PEP191X.
      LADURB19    PEP192X.   LACHRC19    PEP082X.   LATIME20    PEP078X.
      LAUNIT20    PEP079X.   LADURA20    PEP191X.   LADURB20    PEP192X.
      LACHRC20    PEP082X.   LATIME21    PEP078X.   LAUNIT21    PEP079X.
      LADURA21    PEP191X.   LADURB21    PEP192X.   LACHRC21    PEP082X.
      LATIME22    PEP078X.   LAUNIT22    PEP079X.   LADURA22    PEP191X.
      LADURB22    PEP192X.   LACHRC22    PEP082X.   LATIME23    PEP078X.
      LAUNIT23    PEP079X.   LADURA23    PEP191X.   LADURB23    PEP192X.
      LACHRC23    PEP082X.   LATIME24    PEP078X.   LAUNIT24    PEP079X.
      LADURA24    PEP191X.   LADURB24    PEP192X.   LACHRC24    PEP082X.
      LATIME25    PEP078X.   LAUNIT25    PEP079X.   LADURA25    PEP191X.
      LADURB25    PEP192X.   LACHRC25    PEP082X.   LATIME26    PEP078X.
      LAUNIT26    PEP079X.   LADURA26    PEP191X.   LADURB26    PEP192X.
      LACHRC26    PEP082X.   LATIME27    PEP078X.   LAUNIT27    PEP079X.
      LADURA27    PEP191X.   LADURB27    PEP192X.   LACHRC27    PEP082X.
      LATIME28    PEP078X.   LAUNIT28    PEP079X.   LADURA28    PEP191X.
      LADURB28    PEP192X.   LACHRC28    PEP082X.   LATIME29    PEP078X.
      LAUNIT29    PEP079X.   LADURA29    PEP191X.   LADURB29    PEP192X.
      LACHRC29    PEP082X.   LATIME30    PEP078X.   LAUNIT30    PEP079X.
      LADURA30    PEP191X.   LADURB30    PEP192X.   LACHRC30    PEP082X.
      LATIME31    PEP078X.   LAUNIT31    PEP079X.   LADURA31    PEP191X.
      LADURB31    PEP192X.   LACHRC31    PEP082X.   LATIME32    PEP078X.
      LAUNIT32    PEP079X.   LADURA32    PEP191X.   LADURB32    PEP192X.
      LACHRC32    PEP082X.   LATIME33    PEP078X.   LAUNIT33    PEP079X.
      LADURA33    PEP191X.   LADURB33    PEP192X.   LACHRC33    PEP082X.
      LATIME34    PEP078X.   LAUNIT34    PEP079X.   LADURA34    PEP191X.
      LADURB34    PEP192X.   LACHRC34    PEP082X.   LATIME90    PEP078X.
      LAUNIT90    PEP079X.   LADURA90    PEP191X.   LADURB90    PEP192X.
      LACHRC90    PEP082X.   LATIME91    PEP078X.   LAUNIT91    PEP079X.
      LADURA91    PEP191X.   LADURB91    PEP192X.   LACHRC91    PEP082X.
      LCONDRT     PEP369X.   LACHRONR    PEP370X.   PHSTAT      PEP371X.

      /* FAU FORMAT ASSOCIATIONS */

      PDMED12M    PEP032X.   PNMED12M    PEP032X.   PHOSPYR     PEP032X.
      HOSPNO      PEP375X.   HPNITE      PEP376X.   PHCHM2W     PEP032X.
      PHCHMN2W    PEP378X.   PHCPH2WR    PEP032X.   PHCPHN2W    PEP380X.
      PHCDV2W     PEP032X.   PHCDVN2W    PEP382X.   P10DVYR     PEP032X.

      /* FHI FORMAT ASSOCIATIONS */

      NOTCOV      PEP384X.   MEDICARE    PEP385X.   MCPART      PEP386X.
      MCCHOICE    PEP032X.   MCHMO       PEP032X.   MCNAMEN     PEP389X.
      MCREF       PEP032X.   MCPAYPRE    PEP032X.   MCRXCARD    PEP032X.
      MEDICAID    PEP385X.   MACHMD      PEP394X.   MAPCMD      PEP032X.
      MAREF       PEP032X.   SINGLE      PEP397X.   SSTYPEA     PEP063X.
      SSTYPEB     PEP063X.   SSTYPEC     PEP063X.   SSTYPED     PEP063X.
      SSTYPEE     PEP063X.   SSTYPEF     PEP063X.   SSTYPEG     PEP063X.
      SSTYPEH     PEP063X.   SSTYPEI     PEP063X.   SSTYPEJ     PEP063X.
      SSTYPEK     PEP063X.   SSTYPEL     PEP063X.   PRIVATE     PEP385X.
      HITYPE1     PEP411X.   WHONAM1     PEP412X.   PLNWRKN1    PEP413X.
      PLNPAY11    PEP063X.   PLNPAY21    PEP063X.   PLNPAY31    PEP063X.
      PLNPAY41    PEP063X.   PLNPAY51    PEP063X.   PLNPAY61    PEP063X.
      PLNPAY71    PEP063X.   HICOSTR1    PEP421X.   PLNMGD1     PEP422X.
      MGCHMD1     PEP423X.   MGPRMD1     PEP032X.   MGPYMD1     PEP032X.
      MGPREF1     PEP032X.   PRRXCOV1    PEP032X.   HITYPE2     PEP411X.
      WHONAM2     PEP412X.   PLNWRKN2    PEP413X.   PLNPAY12    PEP063X.
      PLNPAY22    PEP063X.   PLNPAY32    PEP063X.   PLNPAY42    PEP063X.
      PLNPAY52    PEP063X.   PLNPAY62    PEP063X.   PLNPAY72    PEP063X.
      HICOSTR2    PEP421X.   PLNMGD2     PEP422X.   MGCHMD2     PEP423X.
      MGPRMD2     PEP032X.   MGPYMD2     PEP032X.   MGPREF2     PEP032X.
      PRRXCOV2    PEP032X.   PRPLPLUS    PEP032X.   SCHIP       PEP385X.
      STDOC1      PEP394X.   STPCMD1     PEP032X.   STREF1      PEP032X.
      OTHERPUB    PEP385X.   STDOC2      PEP394X.   STPCMD2     PEP032X.
      STREF2      PEP032X.   OTHERGOV    PEP385X.   STDOC3      PEP394X.
      STPCMD3     PEP032X.   STREF3      PEP032X.   MILITARY    PEP385X.
      MILSPC1     PEP063X.   MILSPC2     PEP063X.   MILSPC3     PEP063X.
      MILSPC4     PEP063X.   MILMAN      PEP463X.   IHS         PEP032X.
      HILAST      PEP465X.   HISTOP1     PEP063X.   HISTOP2     PEP063X.
      HISTOP3     PEP063X.   HISTOP4     PEP063X.   HISTOP5     PEP063X.
      HISTOP6     PEP063X.   HISTOP7     PEP063X.   HISTOP8     PEP063X.
      HISTOP9     PEP063X.   HISTOP10    PEP063X.   HISTOP11    PEP063X.
      HISTOP12    PEP063X.   HISTOP13    PEP063X.   HISTOP14    PEP063X.
      HISTOP15    PEP063X.   HINOTYR     PEP032X.   HINOTMYR    PEP482X.
      HCSPFYR     PEP483X.   HIKINDA     PEP063X.   HIKINDB     PEP063X.
      HIKINDC     PEP063X.   HIKINDD     PEP063X.   HIKINDE     PEP063X.
      HIKINDF     PEP063X.   HIKINDG     PEP063X.   HIKINDH     PEP063X.
      HIKINDI     PEP063X.   HIKINDJ     PEP063X.   HIKINDK     PEP063X.
      MCAREPRB    PEP032X.   MCAIDPRB    PEP032X.   SINCOV      PEP032X.

      /* FSD FORMAT ASSOCIATIONS */

      PLBORN      PEP032X.   REGIONBR    PEP499X.   GEOBRTH     PEP500X.
      YRSINUS     PEP501X.   CITIZENP    PEP502X.   HEADST      PEP032X.
      HEADSTV1    PEP032X.   EDUC1       PEP505X.   PMILTRY     PEP032X.
      DOINGLWP    PEP507X.   WHYNOWKP    PEP508X.   WRKHRS2     PEP509X.
      WRKFTALL    PEP032X.   WRKLYR1     PEP032X.   WRKMYR      PEP512X.
      ERNYR_P     PEP513X.   HIEMPOF     PEP032X.

      /* FIN FORMAT ASSOCIATIONS */

      PSAL        PEP032X.   PSEINC      PEP032X.   PSSRR       PEP032X.
      PSSRRDB     PEP032X.   PSSRRD      PEP032X.   PPENS       PEP032X.
      POPENS      PEP032X.   PSSI        PEP032X.   PSSID       PEP032X.
      PTANF       PEP032X.   POWBEN      PEP032X.   PINTRSTR    PEP032X.
      PDIVD       PEP032X.   PCHLDSP     PEP032X.   PINCOT      PEP032X.
      PSSAPL      PEP032X.   PSDAPL      PEP032X.   TANFMYR     PEP482X.
      PFSTP       PEP032X.   FSTPMYR     PEP482X.   ELIGPWIC    PEP535X.
      PWIC        PEP032X.   WIC_FLAG    PEP537X.;
RUN;

PROC CONTENTS DATA=NHIS.PERSONSX;
   TITLE1 'CONTENTS OF THE 2004 NHIS PERSONSX FILE';

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2004 NHIS PERSONSX FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA;

PROC FREQ DATA=NHIS.PERSONSX NOTITLE;
   TABLES RECTYPE/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2004 NHIS Person FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;
