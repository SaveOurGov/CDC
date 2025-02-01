                                  USING STATA
    
  There are two ways to read the 2018 NAMCS public-use data file into Stata:

  Option 1 - Use the zipped file NAMCS2018-stata.zip in the Stata folder on 
  the FTP server to open a complete Stata dataset of the 2018 NAMCS public use file.

  The steps for this option are as follows:

  1) Create a new folder on your local workstation, for example, C:\MyFiles\NAMCS2018

  2) Download to the new folder the file NAMCS2018-stata.zip from the FTP server: 
     ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/dataset_documentation/nhamcs/stata

  3) NAMCS2018-stata.zip is a compressed file which you must unzip prior to use. 
     In order to do this, double click on the file name in your directory screen; 
     an option to unzip the file should appear. A new folder, NAMCS2018-stata, will probably 
     be created, depending on the software your system uses. The unzipped file NAMCS2018.dta 
     will be within that folder. This is the Stata dataset. You can then 
     move the file to your preferred location.

     Alternately, you can right-click on the name of the compressed file from your directory screen. 
     On the pop-up menu, there should be an option to extract the file to a location of your choosing.

 4) To use the Stata dataset, this example is for a file saved to the folder C:\MyFiles\NAMCS2018.
    Open Stata and type the following in the command line to point to the location of your file:

     Cd “C:\MyFiles\NAMCS2018”
     Use NAMCS2018-stata.dta, replace

  Option 2 - Use the DO file (*.do) and dictionary file (*.dct) provided in 
  the “Stata Documentation” section of the Ambulatory Health Care Data website, 
  (under Public Use File Documentation) along with the flat data file (*.zip) 
  in the “Downloadable data files” section, to create a Stata dataset. The file that
  is created should be identical to the file described in Option 1 above. 

  The steps for this option are as follows:

  1) Create a new folder on your local workstation, for example, C:\MyFiles\NAMCS2018

  2) Download to the new folder the 2018 NAMCS dataset (namcs2018.zip) from the FTP server: 
     ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/datasets/namcs

  3) namcs2018.zip is a compressed file which must be unzipped prior to use.

     In order to do this, double click on the file name in your directory screen; 
     an option to unzip the file should appear. A new folder, NAMCS2018, will probably 
     be created, depending on the software your system uses. The unzipped file namcs2018 
     with no extension will be within that folder. This is the NAMCS ASCII 
     dataset. You can then move the file to your preferred location. 

     IMPORTANT: Stata requires a file extension to recognize this as a data file, 
     so simply rename it as namcs2018.raw.

  4) Download to the new folder the namcs2018.do and namdict2018.dct files from the FTP server:
     ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/dataset_documentation/namcs/stata

  4) Open Stata, then open "New Do-file Editor" from the taskbar and enter the following script, making
     sure to point to the folder on your local workstation where you have saved the Stata files:
  
     cd C:\MyFiles\NAMCS2018\
     do namcs2018

     Once this script is in the editor, you can Run Stata from the taskbar.
 
     A note on labels:

     It should be pointed out that Stata will not allow value labels for 
     character (string) format variables.  In the case of NAMCS and NHAMCS data, 
     there are a number of character or string variables, such as DIAG1 (physician's 
     first-listed diagnosis), etc.  For some character variables, we have been able 
     to redefine them as numeric without changing their basic structure and the 
     labels should work.  However, for the diagnosis variables (DIAG1, DIAG2, DIAG3, etc.) which 
     actually contain alpha characters in the string, this was not able to be done.  

     If data users experience difficulties or have suggestions for future releases of these 
     products, please contact the Ambulatory and Hospital Care Statistics Branch at 
     301-458-4600 or email at ambcare@cdc.gov.
