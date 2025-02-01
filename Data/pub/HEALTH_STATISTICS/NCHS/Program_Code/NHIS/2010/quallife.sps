*********************************************************************
* APRIL 19, 2011  2:48 PM
*
* THIS IS AN EXAMPLE OF AN SPSS SCRIPT THAT CREATES
* A TEMPORARY SPSS FILE FROM THE
* 2010 NHIS PUBLIC USE quallife.DAT ASCII FILE
*
* THIS IS STORED IN quallife.SPS
*********************************************************************

FILE HANDLE TEMP
   /NAME='C:\NHIS2010\quallife.dat'
   /RECFORM=VARIABLE
   /LRECL=232

DATA LIST FILE=TEMP FIXED RECORDS=1 TABLE /
   RECTYPE     1 -   2       SRVY_YR     3 -   6
   HHX         7 -  12 (A)   INTV_QRT   13 -  13
   ASSIGNWK   14 -  15       FMX        16 -  17 (A)
   FPX        18 -  19 (A)   WTFA_QOL   20 -  25
   STRAT_P    26 -  28       PSU_P      29 -  30
   VIS_SS     31 -  31       VIS_1      32 -  32
   VIS_2      33 -  33       VIS_3      34 -  34
   VIS_4      35 -  35       HEAR_SS    36 -  36
   HEAR_1     37 -  37       HEAR_2     38 -  38
   HEAR_3     39 -  39       HEAR_4     40 -  40
   MOB_SS     41 -  41       MOB_1      42 -  42
   MOB_2      43 -  43       MOB_3A     44 -  44
   MOB_3B     45 -  45       MOB_3C     46 -  46
   MOB_3D     47 -  47       MOB_3E     48 -  48
   MOB_3F     49 -  49       MOB_3G     50 -  50
   MOBSPEC    51 - 100 (A)   MOB_4     101 - 101
   MOB_5     102 - 102       MOB_6     103 - 103
   MOB_7     104 - 104       MOB_8     105 - 105
   MOB_9     106 - 106       COM_SS    107 - 107
   COM_1     108 - 108       P_COM_1A  109 - 109
   P_COM_1B  110 - 110       P_COM_1C  111 - 111
   P_COM_1D  112 - 112       COM_2     113 - 113
   COG_SS    114 - 114       COG_1     115 - 115
   COG_2     116 - 116       COG_3     117 - 117
   P_COG_3A  118 - 118       P_COG_3B  119 - 119
   P_COG_3C  120 - 120       P_COG_3D  121 - 121
   P_COG_3E  122 - 122       P_COG_3F  123 - 123
   P_COG_3G  124 - 124       COG_4     125 - 125
   COG_5     126 - 126       UB_SS     127 - 127
   UB_1      128 - 128       UB_2      129 - 129
   LEARN_1   130 - 130       LEARN_2   131 - 131
   ANX_1     132 - 132       ANX_2     133 - 133
   ANX_3     134 - 134       ANX_4     135 - 135
   P_ANX_4A  136 - 136       P_ANX_4B  137 - 137
   P_ANX_4C  138 - 138       P_ANX_4D  139 - 139
   P_ANX_4E  140 - 140       P_ANX_4F  141 - 141
   P_ANX_4G  142 - 142       DEP_1     143 - 143
   DEP_2     144 - 144       DEP_3     145 - 145
   DEP_4     146 - 146       P_DEP_4A  147 - 147
   P_DEP_4B  148 - 148       P_DEP_4C  149 - 149
   P_DEP_4D  150 - 150       P_DEP_4E  151 - 151
   P_DEP_4F  152 - 152       PAIN_1    153 - 153
   PAIN_2    154 - 154       PAIN_3    155 - 155
   PAIN_4    156 - 156       PAIN_5    157 - 157
   P_PAIN5A  158 - 158       P_PAIN5B  159 - 159
   P_PAIN5C  160 - 160       P_PAIN5D  161 - 161
   P_PAIN5E  162 - 162       P_PAIN5F  163 - 163
   P_PAIN5G  164 - 164       TIRED_1   165 - 165
   TIRED_2   166 - 166       TIRED_3   167 - 167
   TIRED_4   168 - 168       PTIRED4A  169 - 169
   PTIRED4B  170 - 170       PTIRED4C  171 - 171
   PTIRED4D  172 - 172       PTIRED4E  173 - 222 (A)
   QOL_1     223 - 223       QOL_2B    224 - 224
   QOL_2C    225 - 225       QOL_2D    226 - 226
   QOL_2E    227 - 227       QOL_2F    228 - 228
   QOL_2G    229 - 229       QOL_2H    230 - 230
   QOL_2I    231 - 231       RCS_QOL   232 - 232
.

   VARIABLE LABELS
   RECTYPE   "File type identifier"
   SRVY_YR   "Year of National Health Interview Survey"
   HHX       "HH identifier"
   INTV_QRT  "Interview Quarter"
   ASSIGNWK  "Assignment Week"
   FMX       "Family Serial Number"
   FPX       "Person Number (Within family)"
   WTFA_QOL  "Weight - Final Quality of Life file"
   STRAT_P   "Pseudo-stratum for public use file variance estimation"
   PSU_P     "Pseudo-PSU for public use file variance estimation"
   VIS_SS    "Amount of difficulty seeing"
   VIS_1     "Wear glasses to see far away"
   VIS_2     "Amount of difficulty clearly seeing someone’s face across a room"
   VIS_3     "Wear glasses for reading/seeing up close"
   VIS_4     "Amount of difficulty seeing picture on coin"
   HEAR_SS   "Amount of difficulty hearing"
   HEAR_1    "Use a hearing aid"
   HEAR_2    "How often use hearing aid"
   HEAR_3    "Amount of difficulty hearing conversation with one person in quiet room"
   HEAR_4    "Amount of difficulty hearing conversation with one person in noisier room"
   MOB_SS    "Amount of difficulty walking or climbing steps"
   MOB_1     "Amount of difficulty moving around inside home"
   MOB_2     "Use equipment or receive help walking/climbing steps/moving around"
   MOB_3A    "Use cane/walking stick"
   MOB_3B    "Use a walker"
   MOB_3C    "Use crutches"
   MOB_3D    "Use a wheelchair"
   MOB_3E    "Use prosthesis"
   MOB_3F    "Use someone's assistance"
   MOB_3G    "Use other type of equipment or help"
   MOBSPEC   "Specify other type of equipment or help"
   MOB_4     "Amount of difficulty walking 100 yards on level ground"
   MOB_5     "Amount of difficulty walking a third of a mile on level ground"
   MOB_6     "Amount of difficulty walking up or down 12 steps"
   MOB_7     "Amount of difficulty walking 100 yards on level ground using aid"
   MOB_8     "Amount of difficulty walking a third of a mile on level ground using aid"
   MOB_9     "Amount of difficulty walking up or down 12 steps using aid"
   COM_SS    "Amount of difficulty communicating using usual language"
   COM_1     "Amount of difficulty people have understanding when you speak"
   P_COM_1A  "Talk too fast/feel shy/have trouble expressing yourself"
   P_COM_1B  "Physical problem with mouth/tongue"
   P_COM_1C  "Need to understand other languages/different ways of speaking"
   P_COM_1D  "Have trouble hearing"
   COM_2     "Use sign language"
   COG_SS    "Amount of difficulty remembering or concentrating"
   COG_1     "Difficulty remembering, concentrating, or both"
   COG_2     "How often have difficulty remembering"
   COG_3     "How much you have difficulty remembering"
   P_COG_3A  "Forget things because busy/too much to remember"
   P_COG_3B  "Difficulty is getting worse"
   P_COG_3C  "Difficulty has put me/my family in danger"
   P_COG_3D  "Only forget little/inconsequential things"
   P_COG_3E  "Must write down important things so I don't forget"
   P_COG_3F  "Family members/friends are worried about my difficulty remembering"
   P_COG_3G  "Difficulty is normal for my age"
   COG_4     "Amount of difficulty concentrating for 10 minutes"
   COG_5     "When difficulty concentrating is somewhere in between, is it closer to a little, closer to a lot, or exactly in the middle"
   UB_SS     "Amount of difficulty with self care"
   UB_1      "Amount of difficulty raising 2 liter bottle of water/soda from waist to eye level"
   UB_2      "Amount of difficulty using hands/fingers"
   LEARN_1   "Amount of difficulty learning rules for new game"
   LEARN_2   "Amount of difficulty understanding/following instructions"
   ANX_1     "How often feel worried/nervous/anxious"
   ANX_2     "Take medication for worried/nervous/anxious feelings"
   ANX_3     "Level of feelings last time felt worried/nervous/anxious"
   ANX_4     "Level of feelings somewhere in between, is it closer to a little, closer to a lot, or exactly in the middle"
   P_ANX_4A  "Feelings caused by type/amount of work I do"
   P_ANX_4B  "Feelings can be so intense that chest hurts/have trouble breathing"
   P_ANX_4C  "Are positive feelings that help me to accomplish goals/be productive"
   P_ANX_4D  "Feelings sometimes interfere with my life/wish I did not have them"
   P_ANX_4E  "If I had more money or a better job, I would not have these feelings"
   P_ANX_4F  "Everybody has these feelings/are part of life/normal"
   P_ANX_4G  "Have been told by a medical professional I have anxiety"
   DEP_1     "How often feel depressed"
   DEP_2     "Take medication for depression"
   DEP_3     "How depressed you felt last time you were depressed"
   DEP_4     "Level of depression somewhere in between, is it closer to a little, closer to a lot, or exactly in the middle"
   P_DEP_4A  "Feelings caused by death of loved one"
   P_DEP_4B  "Sometimes feelings can be so intense I cannot get out of bed"
   P_DEP_4C  "Feelings sometime interfere with my life/wish I did not have them"
   P_DEP_4D  "If I had more money or a better job, I would not have these feelings"
   P_DEP_4E  "Everybody has these feelings/they are part of life/normal"
   P_DEP_4F  "Been told by medical professional I have depression"
   PAIN_1    "Have frequent pain"
   PAIN_2    "Frequency of pain in past 3 months"
   PAIN_3    "Length of time pain lasted last time you had it"
   PAIN_4    "How much pain you had last time had pain"
   PAIN_5    "Amount of pain somewhere in between, is it closer to a little, closer to a lot, or exactly in the middle"
   P_PAIN5A  "Pain is constantly present"
   P_PAIN5B  "Sometimes I'm in a lot of pain and sometimes it's not so bad"
   P_PAIN5C  "Sometimes pain is unbearable/excruciating"
   P_PAIN5D  "When I get my mind on other things, I am not aware of the pain"
   P_PAIN5E  "Medication can take my pain away completely"
   P_PAIN5F  "My pain is because of work"
   P_PAIN5G  "My pain is because of exercise"
   TIRED_1   "How often felt very tired/exhausted in past 3 months"
   TIRED_2   "How long it lasted the last time you felt very tired/exhausted"
   TIRED_3   "Level of tiredness last time felt very tired/exhausted"
   TIRED_4   "Level of tiredness somewhere in between, is it closer to a little, closer to a lot, or exactly in the middle"
   PTIRED4A  "Too much work or exercise"
   PTIRED4B  "Not getting enough sleep"
   PTIRED4C  "A physical or health-related problem"
   PTIRED4D  "Tiredness result of something else"
   PTIRED4E  "Other reason for tiredness"
   QOL_1     "Amount limited in carrying out daily activities"
   QOL_2B    "Working outside the home to earn an income"
   QOL_2C    "Going to school or achieving your education goals"
   QOL_2D    "Participating in leisure or social activities"
   QOL_2E    "Getting out with friends or family"
   QOL_2F    "Doing household chores"
   QOL_2G    "Using transportation to get to places you want to go"
   QOL_2H    "Participating in religious activities"
   QOL_2I    "Participating in community gatherings"
   RCS_QOL   "Record completion status"
.

   VALUE LABELS
   RECTYPE
      10       "Household"
      20       "Person"
      25       "Income Imputation"
      30       "Sample Adult"
      31       "Sample Adult Cancer"
      38       "Quality of Life"
      40       "Sample Child"
      60       "Family"
      63       "Disability Questions Tests 2010"
      65       "Paradata"
      70       "Injury/Poisoning Episode"
      75       "Injury/Poisoning Verbatim"
 / INTV_QRT
      1        "Quarter 1"
      2        "Quarter 2"
      3        "Quarter 3"
      4        "Quarter 4"
 / ASSIGNWK
      01       "Week 1"
      02       "Week 2"
      03       "Week 3"
      04       "Week 4"
      05       "Week 5"
      06       "Week 6"
      07       "Week 7"
      08       "Week 8"
      09       "Week 9"
      10       "Week 10"
      11       "Week 11"
      12       "Week 12"
      13       "Week 13"
 / VIS_SS
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / VIS_1
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / VIS_2
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / VIS_3
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / VIS_4
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / HEAR_SS
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / HEAR_1
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / HEAR_2
      1        "All of the time"
      2        "Some of the time"
      3        "Rarely"
      4        "Never"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / HEAR_3
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / HEAR_4
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_SS
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_1
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_2
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_3A
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_3B
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_3C
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_3D
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_3E
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_3F
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_3G
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_4
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_5
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_6
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_7
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_8
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / MOB_9
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COM_SS
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COM_1
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COM_1A
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COM_1B
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COM_1C
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COM_1D
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COM_2
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COG_SS
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COG_1
      1        "Difficulty remembering only"
      2        "Difficulty concentrating only"
      3        "Difficulty with both remembering and concentrating"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COG_2
      1        "Sometimes"
      2        "Often"
      3        "All of the time"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COG_3
      1        "A few things"
      2        "A lot of things"
      3        "Almost everything"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COG_3A
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COG_3B
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COG_3C
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COG_3D
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COG_3E
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COG_3F
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_COG_3G
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COG_4
      1        "A little"
      2        "A lot"
      3        "Somewhere in between a little and a lot"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / COG_5
      1        "Closer to a little"
      2        "Closer to a lot"
      3        "Exactly in the middle"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / UB_SS
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / UB_1
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / UB_2
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / LEARN_1
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / LEARN_2
      1        "No difficulty"
      2        "Some difficulty"
      3        "A lot of difficulty"
      4        "Cannot do at all/Unable to do"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / ANX_1
      1        "Daily"
      2        "Weekly"
      3        "Monthly"
      4        "A few times a year"
      5        "Never"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / ANX_2
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / ANX_3
      1        "A little"
      2        "A lot"
      3        "Somewhere in between a little and a lot"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / ANX_4
      1        "Closer to a little"
      2        "Closer to a lot"
      3        "Exactly in the middle"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_ANX_4A
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_ANX_4B
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_ANX_4C
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_ANX_4D
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_ANX_4E
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_ANX_4F
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_ANX_4G
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / DEP_1
      1        "Daily"
      2        "Weekly"
      3        "Monthly"
      4        "A few times a year"
      5        "Never"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / DEP_2
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / DEP_3
      1        "A little"
      2        "A lot"
      3        "Somewhere in between a little and a lot"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / DEP_4
      1        "Closer to a little"
      2        "Closer to a lot"
      3        "Exactly in the middle"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_DEP_4A
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_DEP_4B
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_DEP_4C
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_DEP_4D
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_DEP_4E
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_DEP_4F
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PAIN_1
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PAIN_2
      1        "Never"
      2        "Some days"
      3        "Most days"
      4        "Every day"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PAIN_3
      1        "Some of the day"
      2        "Most of the day"
      3        "All of the day"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PAIN_4
      1        "A little"
      2        "A lot"
      3        "Somewhere in between a little and a lot"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PAIN_5
      1        "Closer to a little"
      2        "Closer to a lot"
      3        "Exactly in the middle"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_PAIN5A
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_PAIN5B
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_PAIN5C
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_PAIN5D
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_PAIN5E
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_PAIN5F
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / P_PAIN5G
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / TIRED_1
      1        "Never"
      2        "Some days"
      3        "Most days"
      4        "Every day"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / TIRED_2
      1        "Some of the day"
      2        "Most of the day"
      3        "All of the day"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / TIRED_3
      1        "A little"
      2        "A lot"
      3        "Somewhere in between a little and a lot"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / TIRED_4
      1        "Closer to a little"
      2        "Closer to a lot"
      3        "Exactly in the middle"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PTIRED4A
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PTIRED4B
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PTIRED4C
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / PTIRED4D
      1        "Yes"
      2        "No"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_1
      1        "Not at all"
      2        "A little"
      3        "A lot"
      4        "Completely"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2B
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2C
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2D
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2E
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2F
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2G
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2H
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / QOL_2I
      1        "Do the activity"
      2        "Don't do the activity"
      3        "Unable to do the activity"
      7        "Refused"
      8        "Not ascertained"
      9        "Don't know"
 / RCS_QOL
      1        "Not ascertained answers only"
      2        "Refused and don't know answers only"
      3        "Refused, DK, and not ascertained answers only"
      4        "At least one valid answer"

FREQUENCIES GENERAL = RECTYPE.
EXECUTE.
