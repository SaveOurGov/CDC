              1976 NATIONAL HEALTH INTERVIEW SURVEY    06/15/2006
                     PUBLIC USE DATA RELEASE

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
WARNING - DATA USE RESTRICTIONS!  Read Carefully before Using

The Public Health Service Act (Section 308 (d)) provides that the
data collected by the National Center for Health Statistics
(NCHS), Centers for Disease Control and Prevention (CDC), may be
used only for the purpose of health statistical reporting and
analysis.

Any effort to determine the identity of any reported case is
prohibited by this law.

NCHS does all it can to assure that the identity of data subjects
cannot be disclosed.  All direct identifiers, as well as any
characteristics that might lead to identification, are omitted
from the data files.  Any intentional identification or
disclosure of a person or establishment violates the assurances
of confidentiality given to the providers of the information.
Therefore, users will:

   1. Use the data in these data files for statistical
      reporting and analysis only.

   2. Make no use of the identity of any person or
      establishment discovered inadvertently and advise the
      Director, NCHS, of any such discovery (301-458-4000).

   3. Not link these data files with individually            
      identifiable data from other NCHS or non-NCHS data     
      files.

By using these data, you signify your agreement to comply with   
the above-stated statutorily based requirements.                 

INTRODUCTION

The National Health Interview Survey (NHIS) is conducted annually
by the National Center for Health Statistics, Centers for Disease
Control and Prevention (CDC).  The NHIS administers face-to-face 
interviews in a nationally representative sample of households.  
Each week a probability sample of the civilian non-
institutionalized population of the United States is interviewed          
by personnel of the U.S. Bureau of the Census.  Information is 
obtained about the health and other characteristics of each 
member of the household.                 

The NHIS includes a basic questionnaire that remains the same each 
year plus one or more additional questionnaires that change 
periodically.  More information on the survey in general and the 
1976 version, in particular, is found in the Current Estimates 
Series report:

   http://www.cdc.gov/nchs/data/series/sr_10/sr10_119.pdf

NOTES TO USERS

Users are advised to subscribe to the NHIS Listserv to receive 
notice of any corrections/updates.  For information about 
joining the Listserv, see the CONTACT INFORMATION section at the 
bottom of this document.              

1976 NHIS FILES AND DOCUMENTATION

The 1976 NHIS files and related documentation have been 
previously distributed via various formats -- magnetic tape, 
ASCII CDs, etc.  

The files listed below comprise the 1976 National Health         
Interview Survey (NHIS) public use data release as found on
the Internet.

A copy of this file (README.TXT) is located in ASCII format at 
the following ftp location:

ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/Dataset_Documentation/NHIS/1976/

1976 NHIS DATA FILES

Five 1976 NHIS files are referred to as "core" files because
they were administered each year (through 1996) without major
modification.  The five core files are Household, Person, 
Condition, Doctor Visit, and Hospital.

The 1976 NHIS data have been divided into nine data files, 
consisting of the five core files and four supplemental files.  
For ease of transmission, each of the 1976 NHIS data files has 
been converted into a self-extracting compressed format.  To 
load and expand a compressed file into an ASCII file, perform the         
following steps:

Download a compressed file onto your hard drive into an
appropriate directory (folder).  For example:  Copy the data file
HOUSEHLD.EXE into a directory called NHIS1976.  To do this,
create a directory on your C: drive called NHIS1976.  Then, using 
your browser, go to the FTP site containing the 1976 NHIS data
files (see address at end of this section).  Right click on the 
HOUSEHLD.EXE file.  Depending on your browser, select 
Save Link As... or Save Target As...
Type c:\nhis1976\HOUSEHLD.EXE in the box labeled File Name
and hit Enter.  To then extract HOUSEHLD.EXE into the ASCII file
HOUSEHLD.DAT, go to the directory NHIS1976 and do the following:

- From DOS     - in the c:\nhis1976 directory, type HOUSEHLD 
                 and hit Enter

- From Windows - Double-click on HOUSEHLD.EXE
                 or
                 Click the Start Button, Click Run, enter
                 c:\nhis1976\HOUSEHLD.EXE and hit Enter.                   

The ASCII file HOUSEHLD.DAT will be generated which can then be  
used for processing by PC statistical software packages which    
utilize ASCII formatted input, or transferred to another computer
for processing.

NOTE: The 1976 NHIS files are large in size.  Please use caution 
and check your disk drive capacity before extracting.            

1976 NHIS DATA FILES
                                  RECORD
NHIS FILE TYPE       FILE NAME    LENGTH  # RECS
-------------------  ------------ ------  -------                                             
HOUSEHOLD            HOUSEHLD.DAT   480    41,559
PERSON               PERSONSX.DAT   480   113,178
CONDITION            CONDITON.DAT   480    58,346
HOSPITAL             HOSPITAL.DAT   480    15,239
DOCTOR VISIT         DRVISITX.DAT   480    21,550
DIABETES             DIABETES.DAT   581   113,178
FAMILY MED EXPENS    FAMEDEXP.DAT   667    28,006
HEALTH HABITS        HLTHHABS.DAT   514    23,088
HEALTH INSURANC      HEALTHIN.DAT   503   113,178
                                            
Note: The above data files are the unzipped files in ASCII format.

The 1976 NHIS data files are located at:

ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/Datasets/NHIS/1976

1976 NHIS FILE LAYOUTS (CODEBOOKS)

There is a file layout (also called codebook or data dictionary) 
for with each data file. The file layouts are in PDF format and 
can be viewed with Adobe Acrobat software.  The Adobe Acrobat 
Reader software can be downloaded from the Adobe Acrobat Web 
site at:                   

http://www.adobe.com/products/acrobat/readstep2.html

                                                            File
 File Name       Description of Component                  Format                          
DIABETES.PDF  Diabetes file layout                         Adobe PDF
FAMEDEXP.PDF  Family Medical Expenses file layout          Adobe PDF
HEALTHIN.PDF  Health Insurance file layout                 Adobe PDF
HLTHHABS.PDF  Health Habits file layout                    Adobe PDF
NHISCORE.PDF* Core files layout                            Adobe PDF

*NHISCORE.PDF contains the file layouts for the following 
five core files:  Household, Person, Condition, Doctor Visit, and 
Hospital.

The 1976 NHIS data file layout documentation files are located   
at:

ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/Dataset_Documentation/NHIS/1976

1976 NHIS SAS INPUT STATEMENTS

Sample SAS programs containing input statements have been 
provided for each data file.  By using the ASCII data files (.DAT 
files) as input to these programs, SAS data files can be created.  
The SAS input statement programs are stored in ASCII format.
 
                                                            File
 File Name     Description of Component                    Format 

CONDITON.SAS   Condition file SAS program                   ASCII
DIABETES.SAS   Diabetes file SAS program                    ASCII
DRVISITX.SAS   Doctor Visit file SAS program                ASCII
FAMEDEXP.SAS   Family Medical Expenses file SAS program     ASCII
HEALTHIN.SAS   Health Insurance file layout                 ASCII
HLTHHABS.SAS   Health Habits file layout                    ASCII
HOSPITAL.SAS   Hospital file SAS program                    ASCII
HOUSEHLD.SAS   Household file SAS program                   ASCII
PERSONSX.SAS   Person file SAS program                      ASCII

The 1976 NHIS sample SAS input statement programs are located at:

ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/1976

1976 NHIS SURVEY QUESTIONNAIRES AND FLASHCARDS

The 1976 NHIS questionnaires and flashcards can be found as an 
appendix to the 1976 Current Estimates publication which is on 
the internet at:

   http://www.cdc.gov/nchs/data/series/sr_10/sr10_119.pdf

MISCELLANEOUS            

All information collected in the survey is from reports by 
responsible family members residing in the household.  When 
possible, all adult family members participate in the interview.  
However, proxy responses are accepted for family members who 
are not at home and are required for all children and for family 
members who are physically or mentally incapable of responding 
for themselves.  Although a considerable effort is made to ensure 
accurate reporting, the information from both proxy respondents 
and self-respondents may be inaccurate because the respondent is 
unaware of relevant information, has forgotten it, does not wish to 
reveal it to an interviewer, or does not understand the intended 
meaning of a question.

Data from the special health topics (supplements) and core in 1976
were collected for 52 weeks.

The sample for the NHIS is redesigned every decade using 
population data from the most recent decennial census.  The 
design used in 1976 was used in 1975-1984.

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
CONTACT INFORMATION

Updates about new data releases, publications, or errors will be 
sent to members of the NHIS Listserv.  To join, visit the CDC 
website at:

http://www.cdc.gov/nchs/about/major/nhis/nhislist.htm

For additional information on the NHIS, visit the website at:

   http://www.cdc.gov/nchs/nhis.htm

If you have questions or comments on any aspect of the NHIS,
please contact us:

   E-mail   : nhislist@cdc.gov
   Call     : 301-458-4901
   FAX      : 301-458-4035
   Mail     : DHHS:PHS:CDC:NCHS:DHIS
              3311 Toledo RD Room 2217
              Hyattsville MD  20782
   Home Page: http://www.cdc.gov/nchs/nhis.htm

For additional information on NCHS data products, contact the:

   Data Dissemination Branch, NCHS
   3311 Toledo Road
   Hyattsville, MD 20782
   Tel: 1-301-458-4636 or 1-866-441-NCHS
   E-mail: nchsquery@cdc.gov
   Internet: http://www.cdc.gov/nchs/

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
STATEMENT OF AUTHENTICITY

This material has been cleared for public distribution by
CDC/ATSDR and will be authentic if obtained directly from
ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/.  CDC/ATSDR takes
all effort to assure the authenticity of electronically
distributed documents.  However, in all instances where the
electronic and official agency record differ, the authenticity of
the official agency record is controlling.
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
