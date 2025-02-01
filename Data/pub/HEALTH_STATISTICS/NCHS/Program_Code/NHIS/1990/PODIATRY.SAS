DM 'CLE LOG; CLE OUT';
**************************************************************************
    November 4, 2005
 
THIS IS AN EXAMPLE OF A SAS PROGRAM THAT CREATES A SAS
FILE FROM THE NHIS 1990 PODIATRY.DAT ASCII FILE.
 
NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
      PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
      GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
      DOCUMENTATION.
 
THIS IS STORED IN PODIATRY.SAS
*************************************************************************;
* USER NOTE: PLACE NEXT TWO STATEMENTS IN SUBSEQUENT PROGRAMS;
 
LIBNAME NHIS    'C:\NHIS1990';
LIBNAME LIBRARY 'C:\NHIS1990';
 
FILENAME ASCIIDAT 'C:\NHIS1990\PODIATRY.DAT';
 
* DEFINE VARIABLE VALUES FOR REPORT;
 
PROC FORMAT LIBRARY=LIBRARY;
  VALUE  PDY001X
   65               = "Podiatry Record"
   ;
  VALUE  PDY002X
   90               = "1990"
   ;
  VALUE  PDY003X
   1                = "Quarter 1"
   2                = "Quarter 2"
   3                = "Quarter 3"
   4                = "Quarter 4"
   ;
  VALUE $PDY004X
   ;
  VALUE  PDY005X
   01  = "Week 01"   21  = "Week 01"   41  = "Week 01"   61  = "Week 01"   81  = "Week 01"
   02  = "Week 02"   22  = "Week 02"   42  = "Week 02"   62  = "Week 02"   82  = "Week 02"
   03  = "Week 03"   23  = "Week 03"   43  = "Week 03"   63  = "Week 03"   83  = "Week 03"
   04  = "Week 04"   24  = "Week 04"   44  = "Week 04"   64  = "Week 04"   84  = "Week 04"
   05  = "Week 05"   25  = "Week 05"   45  = "Week 05"   65  = "Week 05"   85  = "Week 05"
   06  = "Week 06"   26  = "Week 06"   46  = "Week 06"   66  = "Week 06"   86  = "Week 06"
   07  = "Week 07"   27  = "Week 07"   47  = "Week 07"   67  = "Week 07"   87  = "Week 07"
   08  = "Week 08"   28  = "Week 08"   48  = "Week 08"   68  = "Week 08"   88  = "Week 08"
   09  = "Week 09"   29  = "Week 09"   49  = "Week 09"   69  = "Week 09"   89  = "Week 09"
   10  = "Week 10"   30  = "Week 10"   50  = "Week 10"   70  = "Week 10"   90  = "Week 10"
   11  = "Week 11"   31  = "Week 11"   51  = "Week 11"   71  = "Week 11"   91  = "Week 11"
   12  = "Week 12"   32  = "Week 12"   52  = "Week 12"   72  = "Week 12"   92  = "Week 12"
   13  = "Week 13"   33  = "Week 13"   53  = "Week 13"   73  = "Week 13"   93  = "Week 13"
   ;
  VALUE $PDY006X
   ;
  VALUE $PDY007X
   ;
  VALUE $PDY008X
   ;
  VALUE  PDY009X
   01               = "Week 01"
   02               = "Week 02"
   03               = "Week 03"
   04               = "Week 04"
   05               = "Week 05"
   06               = "Week 06"
   07               = "Week 07"
   08               = "Week 08"
   09               = "Week 09"
   10               = "Week 10"
   11               = "Week 11"
   12               = "Week 12"
   13               = "Week 13"
   ;
  VALUE  PDY010X
   0                = "Interview not late"
   1                = "One week late"
   2                = "Two weeks late"
   3                = "Unknown"
   ;
  VALUE  PDY011X
   00               = "Housing unit; kind unknown"
   01               = "House, apartment, flat"
   02               = "HU in nontransient hotel, motel, etc"
   03               = "HU-permanent in transient hotel, motel, etc"
   04               = "HU in rooming house"
   05               = "Mobile home or trailer with no permanent room added"
   06               = "Mobile home or trailer with one or more permanent rooms added"
   07               = "HU not specified above"
   08               = "Quarters not HU in rooming or boarding house"
   09               = "Unit not permanent in transient hotel, motel, etc"
   10               = "Unoccupied site for mobile home, trailer, or tent"
   11               = "Student quarters in college dormitory"
   12               = "Other unit not specified above"
   13               = "Other unit; kind unknown"
   ;
  VALUE  PDY012X
   1                = "Yes, phone number given"
   2                = "Yes, no phone number given"
   3                = "No"
   4                = "Unknown"
   ;
  VALUE  PDY013X
   1                = "Male"
   2                = "Female"
   ;
  VALUE  PDY014X
   00               = "Under 1 year"
   01-98            = "Number of years"
   99               = "99+ years of age"
   ;
  VALUE  PDY015X
   1                = "Under 5 years"
   2                = " 5-17 years"
   3                = "18-24 years"
   4                = "25-44 years"
   5                = "45-64 years"
   6                = "65-69 years"
   7                = "70-74 years"
   8                = "75 years and over"
   ;
  VALUE  PDY016X
   1                = "Under 6 years"
   2                = " 6-16 years"
   3                = "17-24 years"
   4                = "25-34 years"
   5                = "35-44 years"
   6                = "45-54 years"
   7                = "55-64 years"
   8                = "65-74 years"
   9                = "75 years and over"
   ;
  VALUE  PDY017X
   00-35            = "Months"
   36               = "Over 3 years"
   ;
  VALUE $PDY018X
   "01"        = "January"    "07"       = "July"
   "02"        = "February"   "08"       = "August"
   "03"        = "March"      "09"       = "September"
   "04"        = "April"      "10"       = "October"
   "05"        = "May"        "11"       = "November"
   "06"        = "June"       "12"       = "December"
   "99"        = "DK or refused"
   ;
  VALUE $PDY019X
   "1800"-"1899"    = "1800-1899"
   "1900"-"1991"    = "1900-1991"
   "9999"           = "DK or refused"
   ;
  VALUE  PDY020X
   1                = "Aleut, Eskimo, or American Indian"
   2                = "Asian/Pacific Islander"
   3                = "Black"
   4                = "White"
   5                = "Other"
   6                = "Multiple race"
   7                = "Unknown"
   ;
  VALUE  PDY021X
   1                = "White"
   2                = "Black"
   3                = "Other"
   ;
  VALUE  PDY022X
   1                = "White"
   2                = "Non-white"
   ;
  VALUE  PDY023X
   1                = "Black"
   2                = "Non-black"
   ;
  VALUE  PDY024X
   00               = "Multiple Hispanic"
   01               = "Puerto Rican"
   02               = "Cuban"
   03               = "Mexican-Mexicano"
   04               = "Mexican-American"
   05               = "Chicano"
   06               = "Other Latin American"
   07               = "Other Spanish"
   08               = "Spanish, DK type"
   09               = "Unknown if Spanish origin"
   10               = "Not Spanish origin"
   ;
  VALUE  PDY025X
   0                = "Under 14 years"
   1                = "Married - spouse in household"
   2                = "Married - spouse not in household"
   3                = "Widowed"
   4                = "Divorced"
   5                = "Separated"
   6                = "Never married"
   7                = "Unknown"
   ;
  VALUE  PDY026X
   1                = "Non-veteran"
   2                = "WW I"
   3                = "WW II"
   4                = "Korean War"
   5                = "Vietnam veteran"
   6                = "Post-Vietnam"
   7                = "Other service"
   8                = "Served in Armed Forces, unknown if war veteran"
   9                = "Unknown if served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  PDY027X
   0                = "Non-veteran"
   1                = "All service in Guard/Reserve"
   2                = "Some service in Guard/Reserve"
   3                = "Unknown if all service in Guard/Reserve"
   4                = "No active service in Guard/Reserve"
   5                = "Unknown if ever active member in Guard/Reserve or served in Armed Forces"
   .                = "Under 18 years of age"
   ;
  VALUE  PDY028X
   00               = "Never attended; kindergarten only"
   01-12            = "Grades 1-12"
   13               = "1 year"
   14               = "2 years"
   15               = "3 years"
   16               = "4 years"
   17               = "5 years"
   18               = "6 years or more"
   19               = "Unknown"
   .                = "Under 5 years of age"
   ;
  VALUE  PDY029X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   .                = "Under 5 years of age"
   ;
  VALUE  PDY030X
   00               = "Never attended; kindergarten only"
   01-12            = "Grades 1-12"
   13               = "1 year"
   14               = "2 years"
   15               = "3 years"
   16               = "4 years"
   17               = "5 years"
   18               = "6 years or more"
   19               = "Unknown"
   ;
  VALUE  PDY031X
   0                = "None; kindergarten only"
   1                = "1-8 years (elementary)"
   2                = "9-11 years (high school)"
   3                = "12 years (high school graduate)"
   4                = "1-3 years (college)"
   5                = "4 years (college graduate)"
   6                = "5+ years (post-college)"
   7                = "Unknown"
   ;
  VALUE  PDY032X
   1                = "Less than $20,000"
   2                = "$20,000 or more"
   3                = "Unknown"
   ;
  VALUE  PDY033X
   00               = "Less than  $1,000"
   01               = "$ 1,000 - $ 1,999"
   02               = "  2,000 -   2,999"
   03               = "  3,000 -   3,999"
   04               = "  4,000 -   4,999"
   05               = "  5,000 -   5,999"
   06               = "  6,000 -   6,999"
   07               = "  7,000 -   7,999"
   08               = "  8,000 -   8,999"
   09               = "  9,000 -   9,999"
   10               = " 10,000 -  10,999"
   11               = " 11,000 -  11,999"
   12               = " 12,000 -  12,999"
   13               = " 13,000 -  13,999"
   14               = " 14,000 -  14,999"
   15               = " 15,000 -  15,999"
   16               = " 16,000 -  16,999"
   17               = " 17,000 -  17,999"
   18               = " 18,000 -  18,999"
   19               = " 19,000 -  19,999"
   20               = " 20,000 -  24,999"
   21               = " 25,000 -  29,999"
   22               = " 30,000 -  34,999"
   23               = " 35,000 -  39,999"
   24               = " 40,000 -  44,999"
   25               = " 45,000 -  49,999"
   26               = "$50,000 and over"
   27               = "Unknown"
   ;
  VALUE  PDY034X
   0                = "Under $5,000"
   1                = "$ 5,000 - $ 6,999"
   2                = "  7,000 -   9,999"
   3                = " 10,000 -  14,999"
   4                = " 15,000 -  19,999"
   5                = " 20,000 -  24,999"
   6                = " 25,000 -  34,999"
   7                = " 35,000 -  49,999"
   8                = "$50,000 or more"
   9                = "Unknown"
   ;
  VALUE  PDY035X
   1                = "At or above poverty threshold"
   2                = "Below poverty threshold"
   3                = "Unknown"
   ;
  VALUE $PDY036X
   "&"              = "Primary individual"
   "-"              = "Secondary individual"
   "0"              = "Primary family"
   "1"-"9"          = "Secondary family"
   ;
  VALUE $PDY037X
   "&"              = "Reference person, living alone"
   "0"              = "Reference person, 2+ persons in household"
   "1"              = "Spouse, other spouse NOT in Armed Forces and living at home"
   "2"              = "Spouse, other spouse IN Armed Forces and living at home"
   "3"              = "Child of reference person or spouse"
   "4"              = "Grandchild of reference person or spouse"
   "5"              = "Parent of reference person or spouse"
   "6"              = "Other relative"
   "7"              = "Child of ineligible reference person"
   "9"              = "DK or refused"
   ;
  VALUE  PDY038X
   1                = "Living alone"
   2                = "Living only with non-relative"
   3                = "Living with spouse"
   4                = "Living with relative - other"
   ;
  VALUE  PDY039X
   ;
  VALUE  PDY040X
   1-8              = "Number of members"
   9                = "9+ members"
   ;
  VALUE  PDY041X
   1                = "Both parents, no other relative"
   2                = "Mother only"
   3                = "Father only"
   4                = "Both parents and other 21+ year old adult relative"
   5                = "Mother and other 21+ year old adult relative"
   6                = "Father and other 21+ year old adult relative"
   7                = "No parent, but one 21+ year old adult relative"
   8                = "No parent, but two or more 21+ year old adult relatives"
   9                = "Unknown"
   0                = "Other"
   .                = "Not applicable (25+ years old or ever married)"
   ;
  VALUE  PDY042X
   1                = "Working"
   2                = "Keeping house"
   3                = "Going to school"
   4                = "Something else"
   5                = "Unknown"
   .                = "Not applicable (Under 18 years)"
   ;
  VALUE  PDY043X
   1                = "Excellent"
   2                = "Very Good"
   3                = "Good"
   4                = "Fair"
   5                = "Poor"
   6                = "Unknown"
   ;
  VALUE  PDY044X
   1                = "Unable to perform major activity"
   2                = "Limited in kind/amount major activity"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   ;
  VALUE  PDY045X
   1                = "Unable to work"
   2                = "Limited in kind/amount of work"
   3                = "Limited in other activities"
   4                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 18 years, 70+ years)"
   ;
  VALUE  PDY046X
   1                = "Unable to attend school"
   2                = "Attends special school/classes"
   3                = "Needs special school/classes"
   4                = "Limited in school attendance"
   5                = "Limited in other activities"
   6                = "Not limited (includes unknowns)"
   .                = "Not applicable (under 5 years or 18+ years)"
   ;
  VALUE  PDY047X
   1                = "Unable to perform personal care needs"
   2                = "Limited in performing other routine needs"
   3                = "Not limited in performing personal or routine needs"
   4                = "Unknown"
   .                = "Not applicable (under 5 years; 5-59 years not limited; 70+ years old)"
   ;
  VALUE  PDY048X
   1                = "Worked in past 2 weeks"
   2                = "Did not work, has job; not on lay-off and not looking for work"
   3                = "Did not work, has job; looking for work"
   4                = "Did not work, has job; on lay- off"
   5                = "Did not work, has job; on lay- off and looking for work"
   6                = "Did not work, has job; unknown if looking or on lay-off"
   7                = "Did not work, has no job; looking for work or on lay-off"
   8                = "Not in Labor Force (18+ years)"
   .                = "Not applicable (Under 18 years old)"
   ;
  VALUE  PDY049X
   0                = "Not in labor force"
   1                = "Private company"
   2                = "Federal Government employee"
   3                = "State Government employee"
   4                = "Local Government employee"
   5                = "Incorporated business"
   6                = "Self-employed"
   7                = "Without pay"
   8                = "Never worked"
   9                = "Unknown"
   .                = "Under 18"
   ;
  VALUE  PDY050X
   010-996          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PDY051X
   ;
  VALUE  PDY052X
   ;
  VALUE  PDY053X
   003-999          = "Code number"
   .                = "Not applicable"
   ;
  VALUE  PDY054X
   ;
  VALUE  PDY055X
   ;
  VALUE  PDY056X
   0                = "Under 17"
   1                = "Self-entirely"
   2                = "Self-partly"
   3                = "Proxy"
   4                = "Unknown"
   ;
  VALUE  PDY057X
   1                = "Condition List 1, Skin and musculoskeletal"
   2                = "Condition List 2, Impairments"
   3                = "Condition List 3, Digestive"
   4                = "Condition List 4, Miscellaneous"
   5                = "Condition List 5, Circulatory"
   6                = "Condition List 6, Respiratory"
   7                = "Unknown"
   ;
  VALUE  PDY058X
   99               = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  PDY059X
   050-500          = "Number of pounds"
   501              = "Unknown"
   .                = "Under 18 years of age"
   ;
  VALUE  PDY060X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PDY061X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PDY062X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PDY063X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PDY064X
   00               = "None"
   01-14            = "Days"
   ;
  VALUE  PDY065X
   000              = "None"
   001-365          = "1-365 days"
   366              = "Unknown"
   ;
  VALUE  PDY066X
   0                = "None"
   1                = "1-7 days"
   2                = "8-30 days"
   3                = "31-180 days"
   4                = "181-365 days"
   5                = "Unknown"
   ;
  VALUE  PDY067X
   000              = "None"
   001-996          = "Visits"
   997              = "997+ visits"
   998              = "Unknown"
   ;
  VALUE  PDY068X
   0                = "Never"
   1                = "Less than 1 year"
   2                = "1 to less than 2 years"
   3                = "2 to less than 5 years"
   4                = "5 years or more"
   5                = "Unknown"
   ;
  VALUE  PDY069X
   ;
  VALUE  PDY070X
   ;
  VALUE  PDY071X
   ;
  VALUE  PDY072X
   ;
  VALUE  PDY073X
   ;
  VALUE  PDY074X
   ;
  VALUE  PDY075X
   ;
  VALUE  PDY076X
   ;
  VALUE  PDY077X
   ;
  VALUE  PDY078X
   ;
  VALUE  PDY079X
   ;
  VALUE  PDY080X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 yrs"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (Foreign born or less than 18 years of age)"
   ;
  VALUE  PDY081X
   1                = "Less than 1 year"
   2                = "1 year, less than 5 years"
   3                = "5 years, less than 10 yrs"
   4                = "10 years, less than 15 years"
   5                = "15 years or more"
   9                = "Unknown"
   .                = "Not applicable (U.S. born or less than 18 years of age)"
   ;
  VALUE  PDY082X
   ;
  VALUE  PDY083X
   0                = "Permit"
   1                = "Area, oversampled for blacks"
   2                = "Area, not oversampled for blacks"
   ;
  VALUE  PDY084X
   ;
  VALUE  PDY085X
   1                = "Northeast"
   2                = "Midwest"
   3                = "South"
   4                = "West"
   ;
  VALUE  PDY086X
   1                = "1,000,000 or more"
   2                = "250,000 - 999,999"
   3                = "100,000 - 249,999"
   4                = "Under 100,000"
   .                = "Non-MSA"
   ;
  VALUE  PDY087X
   1                = "MSA - Self-representing"
   3                = "MSA - Nonself-representing"
   4                = "Non-MSA - Self-representing"
   6                = "Non-MSA - Nonself-representing"
   ;
  VALUE  PDY088X
   1                = "MSA - Central City"
   2                = "MSA - Not Central City"
   3                = "Non-MSA - Nonfarm"
   4                = "Non-MSA - Farm"
   ;
  VALUE  PDY089X
   ;
  VALUE  PDY090X
   ;
  VALUE  PDY091X
   ;
  VALUE  PDY092X
   ;
  VALUE  PDY093X
   ;
  VALUE  PDY094X
   ;
  VALUE  PDY095X
   ;
  VALUE  PDY096X
   ;
  VALUE  PDY097X
   ;
  VALUE  PDY098X
   ;
  VALUE  PDY099X
   ;
  VALUE  PDY100X
   ;
  VALUE  PDY101X
   ;
  VALUE  PDY102X
   ;
  VALUE  PDY103X
   ;
  VALUE  PDY104X
   ;
  VALUE  PDY105X
   ;
  VALUE  PDY106X
   1                = "'Toenail problem' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY107X
   1                = "'Foot infection' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY108X
   1                = "'Corns/calluses' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY109X
   1                = "'Flat feet/fallen arches' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY110X
   1                = "'Clubfoot' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY111X
   1                = "'Toe/joint deformity' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY112X
   1                = "'Bunions' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY113X
   1                = "'Injury' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY114X
   1                = "'Arthritis' box marked"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY115X
   1                = "Bone spur"
   2                = "Nerve damage to foot"
   3                = "Congenital foot defects excluding clubfoot"
   8                = "Other"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY116X
   1                = "Bone spur"
   2                = "Nerve damage to foot"
   3                = "Congenital foot defects excluding clubfoot"
   8                = "Other"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY117X
   1                = "One or more entries in 1A-J"
   8                = "Other"
   .                = ""
   ;
  VALUE  PDY118X
   01               = "Foot problem A"
   02               = "Foot problem B"
   03               = "Foot problem C"
   04               = "Foot problem D"
   05               = "Foot problem E"
   06               = "Foot problem F"
   07               = "Foot problem G"
   08               = "Foot problem H"
   09               = "Foot problem I"
   11               = "Bone spur J"
   12               = "Nerve damage J"
   13               = "Congenital defect other than Clubfoot J"
   88               = "Other J"
   99               = "DK or Refused"
   .                = ""
   ;
  VALUE  PDY119X
   1                = "Still has problem"
   2                = "Gone away"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY120X
   555              = "Lifetime/all life"
   ;
  VALUE  PDY121X
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY122X
   1                = "Days"
   2                = "Weeks"
   3                = "Months"
   4                = "Years"
   5                = "Lifetime/all life"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY123X
   01               = "Foot problem A"
   02               = "Foot problem B"
   03               = "Foot problem C"
   04               = "Foot problem D"
   05               = "Foot problem E"
   06               = "Foot problem F"
   07               = "Foot problem G"
   08               = "Foot problem H"
   09               = "Foot problem I"
   11               = "Bone spur J"
   12               = "Nerve damage J"
   13               = "Congenital defect other than Clubfoot J"
   88               = "Other J"
   99               = "DK or Refused"
   .                = ""
   ;
  VALUE  PDY124X
   1                = "Still has problem"
   2                = "Gone away"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY125X
   555              = "Lifetime/all life"
   ;
  VALUE  PDY126X
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY127X
   1                = "Days"
   2                = "Weeks"
   3                = "Months"
   4                = "Years"
   5                = "Lifetime/all life"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY128X
   01               = "Foot problem A"
   02               = "Foot problem B"
   03               = "Foot problem C"
   04               = "Foot problem D"
   05               = "Foot problem E"
   06               = "Foot problem F"
   07               = "Foot problem G"
   08               = "Foot problem H"
   09               = "Foot problem I"
   11               = "Bone spur J"
   12               = "Nerve damage J"
   13               = "Congenital defect other than Clubfoot J"
   88               = "Other J"
   99               = "DK or Refused"
   .                = ""
   ;
  VALUE  PDY129X
   1                = "Still has problem"
   2                = "Gone away"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY130X
   555              = "Lifetime/all life"
   ;
  VALUE  PDY131X
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY132X
   1                = "Days"
   2                = "Weeks"
   3                = "Months"
   4                = "Years"
   5                = "Lifetime/all life"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY133X
   01               = "Foot problem A"
   02               = "Foot problem B"
   03               = "Foot problem C"
   04               = "Foot problem D"
   05               = "Foot problem E"
   06               = "Foot problem F"
   07               = "Foot problem G"
   08               = "Foot problem H"
   09               = "Foot problem I"
   11               = "Bone spur J"
   12               = "Nerve damage J"
   13               = "Congenital defect other than Clubfoot J"
   88               = "Other J"
   99               = "DK or Refused"
   .                = ""
   ;
  VALUE  PDY134X
   1                = "Still has problem"
   2                = "Gone away"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY135X
   555              = "Lifetime/all life"
   ;
  VALUE  PDY136X
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY137X
   1                = "Days"
   2                = "Weeks"
   3                = "Months"
   4                = "Years"
   5                = "Lifetime/all life"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY138X
   1                = "Any box '1' in Q2"
   2                = "All boxes '2' in Q2"
   8                = "Other"
   .                = ""
   ;
  VALUE  PDY139X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY140X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY141X
   1                = "Problem(s) not severe"
   .                = ""
   ;
  VALUE  PDY142X
   1                = "No regular doctor"
   .                = ""
   ;
  VALUE  PDY143X
   1                = "Too much bother"
   .                = ""
   ;
  VALUE  PDY144X
   1                = "No transportation"
   .                = ""
   ;
  VALUE  PDY145X
   1                = "No time"
   .                = ""
   ;
  VALUE  PDY146X
   1                = "Office/hours not convenient"
   .                = ""
   ;
  VALUE  PDY147X
   1                = "Cost too much"
   .                = ""
   ;
  VALUE  PDY148X
   1                = "No health insurance/not covered"
   .                = ""
   ;
  VALUE  PDY149X
   1                = "Don't need care/ problem(s) cured"
   .                = ""
   ;
  VALUE  PDY150X
   1                = "Treated myself"
   2                = "Nothing helps the problem"
   3                = "Didn't believe doctor could help"
   8                = "Other reason"
   .                = ""
   ;
  VALUE  PDY151X
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY152X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY153X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY154X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY155X
   01-98            = "1-98 times"
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY156X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY157X
   01-98            = "1-98 times"
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY158X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY159X
   01-98            = "1-98 times"
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY160X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY161X
   01-98            = "1-98 times"
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY162X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY163X
   01-98            = "1-98 times"
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY164X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY165X
   01-98            = "1-98 times"
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY166X
   01-98            = "1-98 times"
   99               = "DK or refused"
   .                = ""
   ;
  VALUE  PDY167X
   1                = "Doctor's office (group practice, doctor's clinic, or HMO)"
   .                = ""
   ;
  VALUE  PDY168X
   1                = "Hospital outpatient clinic"
   .                = ""
   ;
  VALUE  PDY169X
   1                = "Person's home"
   .                = ""
   ;
  VALUE  PDY170X
   1                = "Hospital emergency room"
   .                = ""
   ;
  VALUE  PDY171X
   1                = "Company or industry clinic"
   .                = ""
   ;
  VALUE  PDY172X
   1                = "Another type of clinic"
   .                = ""
   ;
  VALUE  PDY173X
   1                = "Health center"
   .                = ""
   ;
  VALUE  PDY174X
   1                = "Other"
   .                = ""
   ;
  VALUE  PDY175X
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY176X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY177X
   1                = "Yes"
   2                = "No"
   9                = "DK or refused"
   .                = ""
   ;
  VALUE  PDY178X
   1                = "Bone spur mentioned"
   .                = ""
   ;
  VALUE  PDY179X
   1                = "Nerve damage to foot mentioned"
   .                = ""
   ;
  VALUE  PDY180X
   1                = "Congenital foot defects, excluding club foot, mentioned"
   .                = ""
   ;
  VALUE  PDY181X
   1                = "Other foot problem mentioned"
   .                = ""
   ;
  VALUE  PDY182X
   00               = "Foot problems (includes DK if has foot problem)"
   01-13            = "Foot problem"
   ;
  VALUE  PDY183X
   0                = "No problems (includes DK if has foot problem)"
   1-4              = "1-4 Foot problems"
   ;
  VALUE  PDY184X
   1                = "Treated myself"
   .                = ""
   ;
  VALUE  PDY185X
   1                = "Nothing helps the problem"
   .                = ""
   ;
  VALUE  PDY186X
   1                = "Didn't believe the doctor could help"
   .                = ""
   ;
  VALUE  PDY187X
   1                = "Other reason"
   .                = ""
   ;
  VALUE  PDY188X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY189X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY190X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY191X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY192X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY193X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY194X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY195X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY196X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY197X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY198X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY199X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY200X
   1                = "Still has problem"
   2                = "Had problem in last 12 months but problem has gone away"
   3                = "Had problem in last 12 months; don't know if still has problem"
   .                = "Did not have problem in last 12 months or don't know if had problem in last 12 months"
   ;
  VALUE  PDY201X
   000              = "Less than one month"
   001-996          = "001-996 months"
   997              = "997 months or more"
   998              = "Lifetime"
   999              = "Unknown duration"
   .                = "No current foot problem - Includes DK if current problem"
   ;
  VALUE  PDY202X
   000              = "Less than one month"
   001-996          = "001-996 months"
   997              = "997 months or more"
   998              = "Lifetime"
   999              = "Unknown duration"
   .                = "No current foot problem - Includes DK if current problem"
   ;
  VALUE  PDY203X
   000              = "Less than one month"
   001-996          = "001-996 months"
   997              = "997 months or more"
   998              = "Lifetime"
   999              = "Unknown duration"
   .                = "No current foot problem - Includes DK if current problem"
   ;
  VALUE  PDY204X
   000              = "Less than one month"
   001-996          = "001-996 months"
   997              = "997 months or more"
   998              = "Lifetime"
   999              = "Unknown duration"
   .                = "No current foot problem - Includes DK if current problem"
   ;
 
DATA NHIS.PODIATRY;
* CREATE A SAS DATA SET STORED IN DIR 'C:\NHIS1990';
   INFILE ASCIIDAT MISSOVER TRUNCOVER LRECL=454;
 
* DEFINE LENGTH OF NUMERIC VARIABLES;
 
LENGTH
   RECTYPE   3  YEAR      3  QUARTER   3  WEEKCEN   3  WEEKPROC  3
   LTINTER   3  LIVQTR    3  PHONE     3  SEX       3  AGE       3
   AGER1     3  AGER2     3  AGER3     3  RACE      3  RACER1    3
   RACER2    3  RACER3    3  HISPANIC  3  MARSTAT   3  VETERAN   3
   RESERVE   3  EDUC      3  EDUCR     3  EDUCAD    3  EDUCADR   3
   INCFAM20  3  INCFAM    3  INCFAMR   3  POVERTY   3  FAMRELR   3
   FAMSIZE   3  FAMSIZER  3  PARENT    3  MAJACT    3  HEALTH    3
   LATOTAL   3  LAWORK    3  LASCHOOL  3  LACARE    3  EMPLOY    3
   WKCLASS   3  INDUS     3  INDUSR1   3  INDUSR2   3  OCCUP     3
   OCCUPR1   3  OCCUPR2   3  RESPOND   3  CONDLIST  3  HEIGHT    3
   WEIGHT    3  RADAY     3  BDDAY     3  WLDAY     3  SLDAY     3
   OTHDAY    3  BDDAY12   3  BDDAY12R  3  DV12      3  DVINT     3
   NCOND     3  NACUTE    3  NDV2      3  HEP12     3  HDA12     3
   HEP12X    3  HDA12X    3  DISDA6    3  DIS6X     3  DISDA6X   3
   DISDA12X  3  YRPRERES  3  YRSINUS   3  WTBADJ    8  SUBTYPE   3
   STRATUM   3  REGION    3  MSASIZE   3  PSUTYPE   3  MSA       3
   PSUPSEUD  3  CCFACT    8  WTFQ      6  WTFS      6  WTFA      6
   WT65      6  RADAYWP   6  BDDAYWP   6  WLDAYWP   6  SLDAYWP   6
   DV12WPQ   6  DV12WPS   6  DV12WPA   6  HDA12WPQ  6  HDA12WPS  6
   HDA12WPA  6  HEP12WP   6  NAILPROB  3  FTINF     3  CORNCALL  3
   FLATFT    3  CLUB      3  DEFTOE    3  BUNIONS   3  INJURY    3
   ARTHRIT   3  OTRPROB1  3  OTRPROB2  3  CHK1NED   3  PROB1     3
   PROB1ST   3  PROB1LOT  3  PROB1TN   3  PROB1TU   3  PROB2     3
   PROB2ST   3  PROB2LOT  3  PROB2TN   3  PROB2TU   3  PROB3     3
   PROB3ST   3  PROB3LOT  3  PROB3TN   3  PROB3TU   3  PROB4     3
   PROB4ST   3  PROB4LOT  3  PROB4TN   3  PROB4TU   3  CHK2      3
   CONCARE   3  CARE12    3  NTSEVERE  3  NODR      3  BOTHER    3
   NOTRANS   3  NOTIME    3  HOURS     3  COST      3  NOHINS    3
   NOPROB    3  OTHER     3  DKREF     3  INSWPAY   3  IFINS     3
   POD       3  PODV      3  ORTHOSUR  3  ORTHOV    3  OSTEO     3
   OSTEOV    3  PHTHER    3  PHTHERV   3  OTRDR     3  OTRDRV    3
   OTRPROF   3  OTRPROFV  3  PROF2V    3  DROFFICE  3  HOSOUTPA  3
   PHOME     3  EMERGRM   3  COCLINIC  3  OTRCLIN   3  HLTHCEN   3
   OTRPL     3  DKORREF   3  HASHINS   3  STGO      3  SPUR      3
   NERVEDAM  3  DEFXCLUB  3  OTRPRMN   3  NPROB12   3  NPROBINT  3
   SELFTRT   3  NOTHELP   3  DBELDHEL  3  OREAS     3  TOENAIL   3
   INFEC     3  CC        3  FFFA      3  CLUBFT    3  TOEJDEF   3
   BUN       3  INJ       3  ARTH      3  BSPUR     3  NDAM      3
   CONGEN    3  OTRPRPRV  3  DUR1      3  DUR2      3  DUR3      3
   DUR4      3
   ;

* INPUT ALL VARIABLES;
 
INPUT
   RECTYPE       1 - 2         YEAR          3 - 4
   QUARTER       5 - 5         PSUNUMR  $    6 - 8
   WEEKCEN       9 - 10        SEGNUM   $   11 - 12
   HHNUM    $   13 - 14        PNUM     $   15 - 16
   WEEKPROC     19 - 20        LTINTER      21 - 21
   LIVQTR       22 - 23        PHONE        24 - 24
   SEX          25 - 25        AGE          27 - 28
   AGER1        29 - 29        AGER2        30 - 30
   AGER3        31 - 32        BIRTHMO  $   34 - 35
   BIRTHYR  $   36 - 39        RACE         42 - 42
   RACER1       43 - 43        RACER2       44 - 44
   RACER3       45 - 45        HISPANIC     46 - 47
   MARSTAT      48 - 48        VETERAN      49 - 49
   RESERVE      50 - 50        EDUC         51 - 52
   EDUCR        53 - 53        EDUCAD       54 - 55
   EDUCADR      56 - 56        INCFAM20     57 - 57
   INCFAM       58 - 59        INCFAMR      60 - 60
   POVERTY      61 - 61        FAMNUM   $   62 - 62
   FAMREL   $   63 - 63        FAMRELR      64 - 64
   FAMSIZE      65 - 66        FAMSIZER     67 - 67
   PARENT       68 - 68        MAJACT       69 - 69
   HEALTH       70 - 70        LATOTAL      71 - 71
   LAWORK       72 - 72        LASCHOOL     73 - 73
   LACARE       74 - 74        EMPLOY       75 - 75
   WKCLASS      76 - 76        INDUS        77 - 79
   INDUSR1      80 - 81        INDUSR2      82 - 83
   OCCUP        84 - 86        OCCUPR1      87 - 88
   OCCUPR2      89 - 90        RESPOND      91 - 91
   CONDLIST     92 - 92        HEIGHT       93 - 94
   WEIGHT       95 - 97        RADAY        98 - 99
   BDDAY       100 - 101       WLDAY       102 - 103
   SLDAY       104 - 105       OTHDAY      106 - 107
   BDDAY12     108 - 110       BDDAY12R    111 - 111
   DV12        112 - 114       DVINT       115 - 115
   NCOND       116 - 117       NACUTE      118 - 119
   NDV2        120 - 121       HEP12       122 - 123
   HDA12       124 - 126       HEP12X      127 - 128
   HDA12X      129 - 131       DISDA6      132 - 133
   DIS6X       134 - 136       DISDA6X     137 - 138
   DISDA12X    139 - 141       YRPRERES    144 - 144
   YRSINUS     145 - 145       WTBADJ      172 - 177 .1
   SUBTYPE     178 - 178       STRATUM     179 - 181
   REGION      182 - 182       MSASIZE     183 - 183
   PSUTYPE     185 - 185       MSA         186 - 186
   PSUPSEUD    187 - 189       CCFACT      190 - 200 .9
   WTFQ        201 - 209       WTFS        210 - 218
   WTFA        219 - 227       WT65        228 - 236
   RADAYWP     237 - 245       BDDAYWP     246 - 254
   WLDAYWP     255 - 263       SLDAYWP     264 - 272
   DV12WPQ     273 - 281       DV12WPS     282 - 290
   DV12WPA     291 - 299       HDA12WPQ    300 - 308
   HDA12WPS    309 - 317       HDA12WPA    318 - 326
   HEP12WP     327 - 335       NAILPROB    336 - 336
   FTINF       337 - 337       CORNCALL    338 - 338
   FLATFT      339 - 339       CLUB        340 - 340
   DEFTOE      341 - 341       BUNIONS     342 - 342
   INJURY      343 - 343       ARTHRIT     344 - 344
   OTRPROB1    345 - 345       OTRPROB2    346 - 346
   CHK1NED     347 - 347       PROB1       348 - 349
   PROB1ST     350 - 350       PROB1LOT    351 - 353
   PROB1TN     351 - 352       PROB1TU     353 - 353
   PROB2       354 - 355       PROB2ST     356 - 356
   PROB2LOT    357 - 359       PROB2TN     357 - 358
   PROB2TU     359 - 359       PROB3       360 - 361
   PROB3ST     362 - 362       PROB3LOT    363 - 365
   PROB3TN     363 - 364       PROB3TU     365 - 365
   PROB4       366 - 367       PROB4ST     368 - 368
   PROB4LOT    369 - 371       PROB4TN     369 - 370
   PROB4TU     371 - 371       CHK2        372 - 372
   CONCARE     373 - 373       CARE12      374 - 374
   NTSEVERE    375 - 375       NODR        376 - 376
   BOTHER      377 - 377       NOTRANS     378 - 378
   NOTIME      379 - 379       HOURS       380 - 380
   COST        381 - 381       NOHINS      382 - 382
   NOPROB      383 - 383       OTHER       384 - 384
   DKREF       385 - 385       INSWPAY     386 - 386
   IFINS       387 - 387       POD         388 - 388
   PODV        389 - 390       ORTHOSUR    391 - 391
   ORTHOV      392 - 393       OSTEO       394 - 394
   OSTEOV      395 - 396       PHTHER      397 - 397
   PHTHERV     398 - 399       OTRDR       400 - 400
   OTRDRV      401 - 402       OTRPROF     403 - 403
   OTRPROFV    404 - 405       PROF2V      406 - 407
   DROFFICE    408 - 408       HOSOUTPA    409 - 409
   PHOME       410 - 410       EMERGRM     411 - 411
   COCLINIC    412 - 412       OTRCLIN     413 - 413
   HLTHCEN     414 - 414       OTRPL       415 - 415
   DKORREF     416 - 416       HASHINS     417 - 417
   STGO        418 - 418       SPUR        419 - 419
   NERVEDAM    420 - 420       DEFXCLUB    421 - 421
   OTRPRMN     422 - 422       NPROB12     423 - 424
   NPROBINT    425 - 425       SELFTRT     426 - 426
   NOTHELP     427 - 427       DBELDHEL    428 - 428
   OREAS       429 - 429       TOENAIL     430 - 430
   INFEC       431 - 431       CC          432 - 432
   FFFA        433 - 433       CLUBFT      434 - 434
   TOEJDEF     435 - 435       BUN         436 - 436
   INJ         437 - 437       ARTH        438 - 438
   BSPUR       439 - 439       NDAM        440 - 440
   CONGEN      441 - 441       OTRPRPRV    442 - 442
   DUR1        443 - 445       DUR2        446 - 448
   DUR3        449 - 451       DUR4        452 - 454
   ;

* DEFINE VARIABLE LABELS;
 
LABEL
   RECTYPE  = "RECORD TYPE"
   YEAR     = "PROCESSING YEAR"
   QUARTER  = "PROCESSING QUARTER"
   PSUNUMR  = "RANDOM RECODE OF PSU NUMBER"
   WEEKCEN  = "WEEK - CENSUS CODE"
   SEGNUM   = "SEGMENT NUMBER"
   HHNUM    = "HOUSEHOLD NUMBER"
   PNUM     = "PERSON NUMBER"
   WEEKPROC = "PROCESSING WEEK CODE"
   LTINTER  = "LATE INTERVIEW (OR LAST ATTEMPT) FLAG"
   LIVQTR   = "TYPE OF LIVING QUARTERS"
   PHONE    = "HAS TELEPHONE"
   SEX      = "SEX"
   AGE      = "AGE"
   AGER1    = "AGE RECODE #1"
   AGER2    = "AGE RECODE #2"
   AGER3    = "AGE RECODE #3"
   BIRTHMO  = "MONTH OF BIRTH"
   BIRTHYR  = "YEAR OF BIRTH"
   RACE     = "MAIN RACIAL BACKGROUND"
   RACER1   = "RACE RECODE 1"
   RACER2   = "RACE RECODE 2"
   RACER3   = "RACE RECODE 3"
   HISPANIC = "HISPANIC ORIGIN"
   MARSTAT  = "MARITAL STATUS"
   VETERAN  = "VETERAN STATUS"
   RESERVE  = "ACTIVE GUARD/RESERVE STATUS FOR PERSONS ON ACTIVE DUTY IN ARMED FORCES"
   EDUC     = "EDUCATION OF INDIVIDUAL - COMPLETED YEARS"
   EDUCR    = "EDUCATION OF INDIVIDUAL RECODE"
   EDUCAD   = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - (DETAIL)"
   EDUCADR  = "HIGHEST EDUCATION OF RESPONSIBLE ADULT FAMILY MEMBER - RECODE"
   INCFAM20 = "FAMILY INCOME $20,000 OR MORE"
   INCFAM   = "FAMILY INCOME"
   INCFAMR  = "FAMILY INCOME RECODE"
   POVERTY  = "NHIS POVERTY INDEX"
   FAMNUM   = "TYPE OF FAMILY"
   FAMREL   = "RELATIONSHIP TO REFERENCE PERSON"
   FAMRELR  = "FAMILY RELATIONSHIP RECODE"
   FAMSIZE  = "SIZE OF FAMILY"
   FAMSIZER = "SIZE OF FAMILY RECODE"
   PARENT   = "PARENT/OTHER ADULT RELATIVE"
   MAJACT   = "MAJOR ACTIVITY"
   HEALTH   = "HEALTH STATUS"
   LATOTAL  = "ACTIVITY LIMITATION STATUS"
   LAWORK   = "ACTIVITY LIMITATION STATUS MEASURED BY 'ABILITY TO WORK'"
   LASCHOOL = "LIMITATION OF SCHOOL ACTIVITIES"
   LACARE   = "NEEDS HELP WITH PERSONAL CARE"
   EMPLOY   = "EMPLOYMENT STATUS IN PAST 2 WEEKS"
   WKCLASS  = "CLASS OF WORKER"
   INDUS    = "INDUSTRY DETAIL CODE"
   INDUSR1  = "INDUSTRY RECODE 1"
   INDUSR2  = "INDUSTRY RECODE 2"
   OCCUP    = "OCCUPATION DETAIL CODE"
   OCCUPR1  = "OCCUPATION RECODE 1"
   OCCUPR2  = "OCCUPATION RECODE 2"
   RESPOND  = "RESPONDENT FOR CORE"
   CONDLIST = "CONDITION LIST ASSIGNED AND ASKED"
   HEIGHT   = "HEIGHT WITHOUT SHOES"
   WEIGHT   = "WEIGHT WITHOUT SHOES"
   RADAY    = "TOTAL RESTRICTED ACTIVITY DAYS IN PAST TWO WEEKS"
   BDDAY    = "BED DAYS IN PAST TWO WEEKS"
   WLDAY    = "WORK-LOSS DAYS IN PAST TWO WEEKS"
   SLDAY    = "SCHOOL-LOSS DAYS IN PAST TWO WEEKS"
   OTHDAY   = "OTHER DAYS OF RESTRICTED ACTIVITY IN PAST TWO WEEKS"
   BDDAY12  = "BED DAYS IN PAST 12 MONTHS"
   BDDAY12R = "BED DAYS IN PAST 12 MONTHS - RECODE"
   DV12     = "DOCTOR VISITS IN PAST 12 MONTHS"
   DVINT    = "INTERVAL SINCE LAST DOCTOR VISIT"
   NCOND    = "NUMBER OF CONDITIONS"
   NACUTE   = "NUMBER OF ACUTE INCIDENCE CONDITIONS"
   NDV2     = "NUMBER OF TWO-WEEK DOCTOR VISITS"
   HEP12    = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN IN PAST 12 MONTHS"
   HDA12    = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS"
   HEP12X   = "NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS EXCLUDING DELIVERY"
   HDA12X   = "SHORT-STAY HOSPITAL EPISODE DAYS IN PAST 12 MONTHS EXCLUDING DELIVERY"
   DISDA6   = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS"
   DIS6X    = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS"
   DISDA6X  = "NUMBER OF SHORT-STAY HOSPITAL DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   DISDA12X = "NUMBER OF DAYS IN SHORT-STAY HOSPITAL IN PAST 12 MONTHS FOR DISCHARGES IN PAST 6 MONTHS EXCLUDING DELIVERY"
   YRPRERES = "YEARS LIVED IN STATE OF PRESENT RESIDENCE"
   YRSINUS  = "YEARS LIVED IN UNITED STATES"
   WTBADJ   = "QUARTER BASIC WEIGHT BEFORE AGE-SEX-RACE ADJUSTMENT"
   SUBTYPE  = "TYPE OF SUBSTRATUM"
   STRATUM  = "FULL SAMPLE STRATUM IDENTIFIER"
   REGION   = "REGION"
   MSASIZE  = "GEOGRAPHIC DISTRIBUTION"
   PSUTYPE  = "TYPE OF PSU"
   MSA      = "MSA - NON-MSA RESIDENCE"
   PSUPSEUD = "PSEUDO PSU CODES"
   CCFACT   = "CHRONIC CONDITION PREVALENCE AND INCIDENCE FACTOR"
   WTFQ     = "FINAL BASIC WEIGHT  QUARTER"
   WTFS     = "FINAL BASIC WEIGHT  SEMI-ANNUAL (WT/2)"
   WTFA     = "FINAL BASIC WEIGHT  ANNUAL (WT/4)"
   WT65     = "6 5 WEIGHT  QUARTER, SEMI-ANNUAL, AND ANNUAL"
   RADAYWP  = "ESTIMATED RESTRICTED ACTIVITY DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   BDDAYWP  = "ESTIMATED BED DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   WLDAYWP  = "ESTIMATED WORK-LOSS DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   SLDAYWP  = "ESTIMATED SCHOOL-LOSS DAYS PAST 2W  QUARTER, SEMI-ANNUAL AND ANNUAL"
   DV12WPQ  = "ESTIMATED DOCTOR VISITS PAST 12M  QUARTER"
   DV12WPS  = "ESTIMATED DOCTOR VISITS PAST 12M  SEMI-ANNUAL"
   DV12WPA  = "ESTIMATED DOCTOR VISITS PAST 12M  ANNUAL"
   HDA12WPQ = "ESTIMATED SHORT STAY HOSPITAL EPISODE DAYS PAST 12M  QUARTER"
   HDA12WPS = "ESTIMATED SHORT STAY HOSPITAL EPISODE DAYS PAST 12M  SEMI-ANNUAL"
   HDA12WPA = "ESTIMATED SHORT STAY HOSPITAL EPISODE DAYS PAST 12M  ANNUAL"
   HEP12WP  = "ANNUAL ESTIMATED NUMBER OF SHORT-STAY HOSPITAL EPISODES IN PAST 12 MONTHS"
   NAILPROB = "INGROWN TOENAILS OR OTHER TOENAIL PROBLEMS"
   FTINF    = "FOOT INFECTION, INCLUDING ATHLETE'S FOOT, OTHER FUNGAL INFECTIONS AND WARTS"
   CORNCALL = "CORNS OR CALLUSES"
   FLATFT   = "FLAT FEET OR FALLEN ARCHES"
   CLUB     = "CLUB FOOT"
   DEFTOE   = "DEFORMITIES OF THE TOE OR JOINT INCLUDING HAMMER TOE, CLAW TOE, AND MISSING TOES"
   BUNIONS  = "BUNIONS"
   INJURY   = "AN INJURY SUCH AS A SPRAIN, STRAIN, FRACTURE OR DISLOCATION OF THE FOOT"
   ARTHRIT  = "ARTHRITIS OF THE TOES"
   OTRPROB1 = "FIRST OTHER FOOT PROBLEM"
   OTRPROB2 = "SECOND OTHER FOOT PROBLEM"
   CHK1NED  = "CHECK ITEM 01 - NOT EDITED"
   PROB1    = "WHAT IS THE 1ST PROBLEM"
   PROB1ST  = "1ST PROBLEM STATUS"
   PROB1LOT = "1ST PROBLEM LENGTH OF TIME"
   PROB1TN  = "1ST PROBLEM TIME NUMBER"
   PROB1TU  = "1ST PROBLEM TIME UNIT"
   PROB2    = "WHAT IS THE 2ND PROBLEM"
   PROB2ST  = "2ND PROBLEM STATUS"
   PROB2LOT = "2ND PROBLEM LENGTH OF TIME"
   PROB2TN  = "2ND PROBLEM TIME NUMBER"
   PROB2TU  = "2ND PROBLEM TIME UNIT"
   PROB3    = "WHAT IS THE 3RD PROBLEM"
   PROB3ST  = "3RD PROBLEM STATUS"
   PROB3LOT = "3RD PROBLEM LENGTH OF TIME"
   PROB3TN  = "3RD PROBLEM TIME NUMBER"
   PROB3TU  = "2ND PROBLEM TIME UNIT"
   PROB4    = "WHAT IS THE 4TH PROBLEM"
   PROB4ST  = "4TH PROBLEM STATUS"
   PROB4LOT = "4TH PROBLEM LENGTH OF TIME"
   PROB4TN  = "4TH PROBLEM TIME NUMBER"
   PROB4TU  = "4TH PROBLEM TIME UNIT"
   CHK2     = "CHECK ITEM 02"
   CONCARE  = "FOOT PROBLEM(S) SEVERE ENOUGH TO CONSIDER GETTING CARE"
   CARE12   = "GOT CARE FOR FOOT PROBLEM(S) IN PAST 12 MONTHS"
   NTSEVERE = "WHY NO PROFESSIONAL TREATMENT"
   NODR     = "WHY NO PROFESSIONAL TREATMENT"
   BOTHER   = "WHY NO PROFESSIONAL TREATMENT"
   NOTRANS  = "WHY NO PROFESSIONAL TREATMENT"
   NOTIME   = "WHY NO PROFESSIONAL TREATMENT"
   HOURS    = "WHY NO PROFESSIONAL TREATMENT"
   COST     = "WHY NO TREATMENT - COST"
   NOHINS   = "WHY NO TREATMENT - NO INSURANCE"
   NOPROB   = "WHY NO TREATMENT - DON'T NEED CARE"
   OTHER    = "WHY NO TREATMENT - OTHER"
   DKREF    = "WHY NO TREATMENT - DIDN'T KNOW"
   INSWPAY  = "COVERED BY HEALTH INSURANCE THAT WOULD PAY FOR TREATMENT"
   IFINS    = "IF INSURANCE PAID, WOULD HAVE GOTTEN CARE"
   POD      = "HEALTH PROFESSIONALS SEEN PAST 12M - PODIATRIST"
   PODV     = "NUMBER OF TIMES PODIATRIST SEEN"
   ORTHOSUR = "HEALTH PROFESSIONALS SEEN PAST 12M - ORTHOPEDIC SPECIALIST OR SURGEON"
   ORTHOV   = "NUMBER OF TIMES ORTHOPEDIC SPECIALIST OR SURGEON SEEN"
   OSTEO    = "HEALTH PROFESSIONALS SEEN PAST 12M - OSTEOPATH"
   OSTEOV   = "NUMBER OF TIMES OSTEOPATH SEEN"
   PHTHER   = "HEALTH PROFESSIONALS SEEN PAST 12M - PHYSICAL THERAPIST"
   PHTHERV  = "NUMBER OF TIMES PHYSICAL THERAPIST SEEN"
   OTRDR    = "HEALTH PROFESSIONALS SEEN PAST 12M - OTHER MEDICAL DOCTOR"
   OTRDRV   = "NUMBER OF TIMES OTHER MEDICAL DOCTOR SEEN"
   OTRPROF  = "HEALTH PROFESSIONALS SEEN PAST 12M - OTHER HEALTH PROFESSIONAL"
   OTRPROFV = "NUMBER OF TIMES FIRST OTHER HEALTH PROFESSIONAL SEEN"
   PROF2V   = "NUMBER OF TIMES SECOND OTHER HEALTH PROFESSIONAL SEEN"
   DROFFICE = "WHERE DOCTOR SEEN - OFFICE OR CLINIC"
   HOSOUTPA = "WHERE DOCTOR SEEN - HOSPITAL OUTPATIENT"
   PHOME    = "WHERE DOCTOR SEEN - HOME"
   EMERGRM  = "WHERE DOCTOR SEEN - EMERGENCY ROOM"
   COCLINIC = "WHERE DOCTOR SEEN - COMPANY CLINIC"
   OTRCLIN  = "WHERE DOCTOR SEEN - OTHER CLINIC"
   HLTHCEN  = "WHERE DOCTOR SEEN - HEALTH CENTER"
   OTRPL    = "WHERE DOCTOR SEEN - OTHER"
   DKORREF  = "WHERE DOCTOR SEEN - DIDN'T KNOW"
   HASHINS  = "HEALTH INSURANCE HAS/WILL PAY FOR ANY PART OF CARE"
   STGO     = "WOULD STILL HAVE GONE FOR MEDICAL CARE IF INSURANCE HAD NOT PAID"
   SPUR     = "OTHER PROBLEMS - BONE SPUR"
   NERVEDAM = "OTHER PROBLEMS - NERVE DAMAGE"
   DEFXCLUB = "OTHER PROBLEMS - DEFECTS"
   OTRPRMN  = "OTHER PROBLEMS"
   NPROB12  = "NUMBER OF FOOT PROBLEMS IN LAST 12 MONTHS"
   NPROBINT = "NUMBER OF FOOT PROBLEMS AT INTERVIEW"
   SELFTRT  = "REASONS NO TREATMENT- TREATED SELF"
   NOTHELP  = "REASONS NO TREATMENT - NOTHING HELPS"
   DBELDHEL = "REASONS NO TREATMENT - DOCTOR NO HELP"
   OREAS    = "REASONS NO TREATMENT - OTHER"
   TOENAIL  = "TOENAIL PROBLEM"
   INFEC    = "FOOT INFECTION"
   CC       = "CORNS/CALLUSES"
   FFFA     = "FLAT FOOT/FALLEN ARCH"
   CLUBFT   = "CLUBFOOT"
   TOEJDEF  = "TOE/JOINT DEFORMITY"
   BUN      = "BUNIONS"
   INJ      = "INJURY"
   ARTH     = "ARTHRISTIS"
   BSPUR    = "BONE SPUR"
   NDAM     = "NERVE DAMAGE"
   CONGEN   = "CONGENITAL"
   OTRPRPRV = "OTHER"
   DUR1     = "DURATION OF PROBLEM 1"
   DUR2     = "DURATION OF PROBLEM 2"
   DUR3     = "DURATION OF PROBLEM 3"
   DUR4     = "DURATION OF PROBLEM 4"
   ;

* ASSOCIATE VARIABLES WITH FORMAT VALUES;
 
FORMAT
   RECTYPE   PDY001X.    YEAR      PDY002X.    QUARTER   PDY003X.
   PSUNUMR   $PDY004X.   WEEKCEN   PDY005X.    SEGNUM    $PDY006X.
   HHNUM     $PDY007X.   PNUM      $PDY008X.   WEEKPROC  PDY009X.
   LTINTER   PDY010X.    LIVQTR    PDY011X.    PHONE     PDY012X.
   SEX       PDY013X.    AGE       PDY014X.    AGER1     PDY015X.
   AGER2     PDY016X.    AGER3     PDY017X.    BIRTHMO   $PDY018X.
   BIRTHYR   $PDY019X.   RACE      PDY020X.    RACER1    PDY021X.
   RACER2    PDY022X.    RACER3    PDY023X.    HISPANIC  PDY024X.
   MARSTAT   PDY025X.    VETERAN   PDY026X.    RESERVE   PDY027X.
   EDUC      PDY028X.    EDUCR     PDY029X.    EDUCAD    PDY030X.
   EDUCADR   PDY031X.    INCFAM20  PDY032X.    INCFAM    PDY033X.
   INCFAMR   PDY034X.    POVERTY   PDY035X.    FAMNUM    $PDY036X.
   FAMREL    $PDY037X.   FAMRELR   PDY038X.    FAMSIZE   PDY039X.
   FAMSIZER  PDY040X.    PARENT    PDY041X.    MAJACT    PDY042X.
   HEALTH    PDY043X.    LATOTAL   PDY044X.    LAWORK    PDY045X.
   LASCHOOL  PDY046X.    LACARE    PDY047X.    EMPLOY    PDY048X.
   WKCLASS   PDY049X.    INDUS     PDY050X.    INDUSR1   PDY051X.
   INDUSR2   PDY052X.    OCCUP     PDY053X.    OCCUPR1   PDY054X.
   OCCUPR2   PDY055X.    RESPOND   PDY056X.    CONDLIST  PDY057X.
   HEIGHT    PDY058X.    WEIGHT    PDY059X.    RADAY     PDY060X.
   BDDAY     PDY061X.    WLDAY     PDY062X.    SLDAY     PDY063X.
   OTHDAY    PDY064X.    BDDAY12   PDY065X.    BDDAY12R  PDY066X.
   DV12      PDY067X.    DVINT     PDY068X.    NCOND     PDY069X.
   NACUTE    PDY070X.    NDV2      PDY071X.    HEP12     PDY072X.
   HDA12     PDY073X.    HEP12X    PDY074X.    HDA12X    PDY075X.
   DISDA6    PDY076X.    DIS6X     PDY077X.    DISDA6X   PDY078X.
   DISDA12X  PDY079X.    YRPRERES  PDY080X.    YRSINUS   PDY081X.
   WTBADJ    PDY082X.    SUBTYPE   PDY083X.    STRATUM   PDY084X.
   REGION    PDY085X.    MSASIZE   PDY086X.    PSUTYPE   PDY087X.
   MSA       PDY088X.    PSUPSEUD  PDY089X.    CCFACT    PDY090X.
   WTFQ      PDY091X.    WTFS      PDY092X.    WTFA      PDY093X.
   WT65      PDY094X.    RADAYWP   PDY095X.    BDDAYWP   PDY096X.
   WLDAYWP   PDY097X.    SLDAYWP   PDY098X.    DV12WPQ   PDY099X.
   DV12WPS   PDY100X.    DV12WPA   PDY101X.    HDA12WPQ  PDY102X.
   HDA12WPS  PDY103X.    HDA12WPA  PDY104X.    HEP12WP   PDY105X.
   NAILPROB  PDY106X.    FTINF     PDY107X.    CORNCALL  PDY108X.
   FLATFT    PDY109X.    CLUB      PDY110X.    DEFTOE    PDY111X.
   BUNIONS   PDY112X.    INJURY    PDY113X.    ARTHRIT   PDY114X.
   OTRPROB1  PDY115X.    OTRPROB2  PDY116X.    CHK1NED   PDY117X.
   PROB1     PDY118X.    PROB1ST   PDY119X.    PROB1LOT  PDY120X.
   PROB1TN   PDY121X.    PROB1TU   PDY122X.    PROB2     PDY123X.
   PROB2ST   PDY124X.    PROB2LOT  PDY125X.    PROB2TN   PDY126X.
   PROB2TU   PDY127X.    PROB3     PDY128X.    PROB3ST   PDY129X.
   PROB3LOT  PDY130X.    PROB3TN   PDY131X.    PROB3TU   PDY132X.
   PROB4     PDY133X.    PROB4ST   PDY134X.    PROB4LOT  PDY135X.
   PROB4TN   PDY136X.    PROB4TU   PDY137X.    CHK2      PDY138X.
   CONCARE   PDY139X.    CARE12    PDY140X.    NTSEVERE  PDY141X.
   NODR      PDY142X.    BOTHER    PDY143X.    NOTRANS   PDY144X.
   NOTIME    PDY145X.    HOURS     PDY146X.    COST      PDY147X.
   NOHINS    PDY148X.    NOPROB    PDY149X.    OTHER     PDY150X.
   DKREF     PDY151X.    INSWPAY   PDY152X.    IFINS     PDY153X.
   POD       PDY154X.    PODV      PDY155X.    ORTHOSUR  PDY156X.
   ORTHOV    PDY157X.    OSTEO     PDY158X.    OSTEOV    PDY159X.
   PHTHER    PDY160X.    PHTHERV   PDY161X.    OTRDR     PDY162X.
   OTRDRV    PDY163X.    OTRPROF   PDY164X.    OTRPROFV  PDY165X.
   PROF2V    PDY166X.    DROFFICE  PDY167X.    HOSOUTPA  PDY168X.
   PHOME     PDY169X.    EMERGRM   PDY170X.    COCLINIC  PDY171X.
   OTRCLIN   PDY172X.    HLTHCEN   PDY173X.    OTRPL     PDY174X.
   DKORREF   PDY175X.    HASHINS   PDY176X.    STGO      PDY177X.
   SPUR      PDY178X.    NERVEDAM  PDY179X.    DEFXCLUB  PDY180X.
   OTRPRMN   PDY181X.    NPROB12   PDY182X.    NPROBINT  PDY183X.
   SELFTRT   PDY184X.    NOTHELP   PDY185X.    DBELDHEL  PDY186X.
   OREAS     PDY187X.    TOENAIL   PDY188X.    INFEC     PDY189X.
   CC        PDY190X.    FFFA      PDY191X.    CLUBFT    PDY192X.
   TOEJDEF   PDY193X.    BUN       PDY194X.    INJ       PDY195X.
   ARTH      PDY196X.    BSPUR     PDY197X.    NDAM      PDY198X.
   CONGEN    PDY199X.    OTRPRPRV  PDY200X.    DUR1      PDY201X.
   DUR2      PDY202X.    DUR3      PDY203X.    DUR4      PDY204X.
   ;
 
PROC CONTENTS DATA=NHIS.PODIATRY;
 
PROC FREQ DATA=NHIS.PODIATRY;
TITLE1 'FREQUENCY REPORT FOR 1990 NHIS PODIATRY SUPPLEMENT PUBLIC USE FILE';
TITLE2 '(WEIGHTED)';
TABLES RECTYPE/LIST MISSING;
WEIGHT WTFA;
 
PROC FREQ DATA=NHIS.PODIATRY;
TITLE1 'FREQUENCY REPORT FOR 1990 NHIS PODIATRY SUPPLEMENT PUBLIC USE FILE';
TITLE2 '(UNWEIGHTED)';
TABLES RECTYPE/LIST MISSING;
 
* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
              STATEMENT: FORMAT _ALL_;
RUN;
