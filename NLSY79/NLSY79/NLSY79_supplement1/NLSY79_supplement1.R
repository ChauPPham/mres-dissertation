
# Set working directory
# setwd()


new_data <- read.table('NLSY79_supplement1.dat', sep=' ')
names(new_data) <- c('R0000100',
'R0000500',
'R0000600',
'R0001900',
'R0173600',
'R0214700',
'R0214800',
'R0215700',
'R0217500',
'R0217502',
'R0405210',
'R0405600',
'R0407200',
'R0618600',
'R0646300',
'R0647103',
'R0780300',
'R0896710',
'R0896900',
'R0898400',
'R1021900',
'R1144410',
'R1144900',
'R1145300',
'R1391000',
'R1395700',
'R1404100',
'R1404700',
'R1405300',
'R1519610',
'R1520100',
'R1520500',
'R1774600',
'R1890210',
'R1890800',
'R1891200',
'R2257410',
'R2257900',
'R2258300',
'R2444610',
'R2445300',
'R2445700',
'R2716600',
'R2721100',
'R2721200',
'R2870110',
'R2870900',
'R2871500',
'R2968200',
'R3073910',
'R3074600',
'R3075200',
'R3400600',
'R3401300',
'R3401900',
'R3656000',
'R3656700',
'R3657300',
'R3915300',
'R3915400',
'R3915800',
'R4006500',
'R4007200',
'R4007800',
'R4417600',
'R4418300',
'R4418900',
'R4979200',
'R5053400',
'R5053500',
'R5053900',
'R5080600',
'R5081300',
'R5081900',
'R5165900',
'R5166600',
'R5167200',
'R6430700',
'R6430800',
'R6431200',
'R6478600',
'R6479200',
'R6480000',
'R7006400',
'R7006900',
'R7007700',
'R7606400',
'R7703600',
'R7704200',
'R7705000',
'R8496000',
'R8496600',
'R8497400',
'R9909800',
'T0911100',
'T0987600',
'T0988400',
'T0989200',
'T2075400',
'T2209900',
'T2210400',
'T2211000',
'T3044000',
'T3107700',
'T3108300',
'T3108900',
'T3976200',
'T4112200',
'T4112800',
'T4113400',
'T4914500',
'T5022500',
'T5023200',
'T5024800',
'T5770700',
'T5771100',
'T5772800',
'T8218600',
'T8219200',
'T8220000')


# Handle missing values

new_data[new_data == -1] = NA  # Refused
new_data[new_data == -2] = NA  # Dont know
new_data[new_data == -3] = NA  # Invalid missing
new_data[new_data == -4] = NA  # Valid missing
new_data[new_data == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0001900 <- factor(data$R0001900,
levels=c(11.0,12.0,13.0,14.0,15.0,19.0,21.0,22.0,23.0,24.0,25.0,31.0,32.0,33.0,34.0,35.0,41.0,42.0,43.0,44.0,45.0,51.0,52.0,53.0,54.0,55.0,80.0,90.0,91.0,93.0),
labels=c("FATHER-MOTHER",
"FATHER-STEPMOTHER",
"FATHER-OTHER WOMAN RELATIVE",
"FATHER-OTHER WOMAN",
"FATHER-NO WOMAN",
"FATHER-MISSING WOMAN",
"STEPFATHER-MOTHER",
"STEPFATHER-STEPMOTHER",
"STEPFATHER-WOMAN RELATIVE",
"STEPFATHER-OTHER WOMAN",
"STEPFATHER-NO WOMAN",
"MAN RELATIVE-MOTHER",
"MAN RELATIVE-STEPMOTHER",
"MAN RELATIVE-WOMAN RELATIVE",
"MAN RELATIVE-OTHER WOMAN",
"MAN RELATIVE-NO WOMAN",
"OTHER MAN-MOTHER",
"OTHER MAN-STEPMOTHER",
"OTHER MAN-WOMAN RELATIVE",
"OTHER MAN-OTHER WOMAN",
"OTHER MAN-NO WOMAN",
"NO MAN-MOTHER",
"NO MAN-STEPMOTHER",
"NO MAN-WOMAN RELATIVE",
"NO MAN-OTHER WOMAN",
"NO MAN-NO WOMAN",
"OTHER ARRANGEMENT",
"ON MY OWN",
"MISSING MAN-MOTHER",
"MISSING MAN-WOMAN RELATIVE"))
  data$R0173600 <- factor(data$R0173600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0),
labels=c("CROSS MALE WHITE",
"CROSS MALE WH. POOR",
"CROSS MALE BLACK",
"CROSS MALE HISPANIC",
"CROSS FEMALE WHITE",
"CROSS FEMALE WH POOR",
"CROSS FEMALE BLACK",
"CROSS FEMALE HISPANIC",
"SUP MALE WH POOR",
"SUP MALE BLACK",
"SUP MALE HISPANIC",
"SUP FEM WH POOR",
"SUP FEMALE BLACK",
"SUP FEMALE HISPANIC",
"MIL MALE WHITE",
"MIL MALE BLACK",
"MIL MALE HISPANIC",
"MIL FEMALE WHITE",
"MIL FEMALE BLACK",
"MIL FEMALE HISPANIC"))
  data$R0214700 <- factor(data$R0214700,
levels=c(1.0,2.0,3.0),
labels=c("HISPANIC",
"BLACK",
"NON-BLACK, NON-HISPANIC"))
  data$R0214800 <- factor(data$R0214800,
levels=c(1.0,2.0),
labels=c("MALE",
"FEMALE"))
  data$R0217500 <- factor(data$R0217500,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R0405600 <- factor(data$R0405600,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R0618600 <- factor(data$R0618600,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R0780300 <- factor(data$R0780300,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R0898400 <- factor(data$R0898400,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R1021900 <- factor(data$R1021900,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R1144900 <- factor(data$R1144900,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R1391000 <- factor(data$R1391000,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R1395700 <- factor(data$R1395700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NONE",
"1-2 OCCASIONS",
"3-5 OCCASIONS",
"6-9 OCCASIONS",
"10-19 OCCASIONS",
"20-39 OCCASIONS",
"40 OR MORE OCCASIONS"))
  data$R1404100 <- factor(data$R1404100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0),
labels=c("NEVER USED",
"1-9 OCCASIONS",
"10-39 OCCASIONS",
"40-99 OCCASIONS",
"100-999 OCCASIONS",
"1,000 OR MORE OCCASIONS"))
  data$R1404700 <- factor(data$R1404700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0),
labels=c("NEVER USED",
"1-9 OCCASIONS",
"10-39 OCCASIONS",
"40-99 OCCASIONS",
"100-999 OCCASIONS",
"1,000 OR MORE OCCASIONS"))
  data$R1405300 <- factor(data$R1405300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0),
labels=c("NEVER USED",
"1-9 OCCASIONS",
"10-39 OCCASIONS",
"40-99 OCCASIONS",
"100-999 OCCASIONS",
"1,000 OR MORE OCCASIONS"))
  data$R1520100 <- factor(data$R1520100,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R1774600 <- factor(data$R1774600,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R1890800 <- factor(data$R1890800,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R2257900 <- factor(data$R2257900,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R2445300 <- factor(data$R2445300,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R2716600 <- factor(data$R2716600,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R2721100 <- factor(data$R2721100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NONE",
"1-2 OCCASIONS",
"3-5 OCCASIONS",
"6-9 OCCASIONS",
"10-19 OCCASIONS",
"20-39 OCCASIONS",
"40 OR MORE OCCASIONS"))
  data$R2721200 <- factor(data$R2721200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0),
labels=c("NEVER",
"1 TO 2 OCCASIONS",
"3 TO 9 OCCASIONS",
"10 TO 39 OCCASIONS",
"40 TO 99 OCCASIONS",
"100 OR MORE OCCASIONS"))
  data$R2870900 <- factor(data$R2870900,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R2968200 <- factor(data$R2968200,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R3074600 <- factor(data$R3074600,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R3401300 <- factor(data$R3401300,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R3656700 <- factor(data$R3656700,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R3915300 <- factor(data$R3915300,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("LESS OFTEN THAN ONCE PER WEEK",
"1-2 DAYS PER WEEK",
"3-4 DAYS PER WEEK",
"5-6 DAYS PER WEEK",
"EVERY DAY"))
  data$R3915400 <- factor(data$R3915400,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"1 OR 2 TIMES",
"3 TO 5 TIMES",
"6 TO 10 TIMES",
"11 TO 49 TIMES",
"50 TO 99 TIMES",
"100 OR MORE TIMES"))
  data$R3915800 <- factor(data$R3915800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"1 OR 2 TIMES",
"3 TO 5 TIMES",
"6 TO 10 TIMES",
"11 TO 49 TIMES",
"50 TO 99 TIMES",
"100 OR MORE TIMES"))
  data$R4007200 <- factor(data$R4007200,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R4418300 <- factor(data$R4418300,
levels=c(1.0,2.0,3.0),
labels=c("NEVER MARRIED",
"MARRIED, SPOUSE PRESENT",
"OTHER"))
  data$R4979200 <- factor(data$R4979200,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$R5053400 <- factor(data$R5053400,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("LESS OFTEN THAN ONCE A WEEK",
"1-2 DAYS PER WEEK",
"3-4 DAYS PER WEEK",
"5-6 DAYS PER WEEK",
"EVERY DAY"))
  data$R5053500 <- factor(data$R5053500,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"1 OR 2 TIMES",
"3 TO 5 TIMES",
"6 TO 10 TIMES",
"11 TO 49 TIMES",
"50 TO 99 TIMES",
"100 OR MORE TIMES"))
  data$R5053900 <- factor(data$R5053900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"1 OR 2 TIMES",
"3 TO 5 TIMES",
"6 TO 10 TIMES",
"11 TO 49 TIMES",
"50 TO 99 TIMES",
"100 OR MORE TIMES"))
  data$R5081300 <- factor(data$R5081300,
levels=c(1.0,2.0,3.0),
labels=c("1: 1  NEVER MARRIED",
"2: 2  MARRIED, SPOUSE PRESENT",
"3: 3  OTHER"))
  data$R5166600 <- factor(data$R5166600,
levels=c(1.0,2.0,3.0),
labels=c("1: NEVER MARRIED",
"2: MARRIED, SPOUSE PRESENT",
"3: OTHER"))
  data$R6430700 <- factor(data$R6430700,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("LESS OFTEN THAN ONCE A WEEK",
"1-2 DAYS PER WEEK",
"3-4 DAYS PER WEEK",
"5-6 DAYS PER WEEK",
"EVERY DAY"))
  data$R6430800 <- factor(data$R6430800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"1 OR 2 TIMES",
"3 TO 5 TIMES",
"6 TO 10 TIMES",
"11 TO 49 TIMES",
"50 TO 99 TIMES",
"100 OR MORE TIMES"))
  data$R6431200 <- factor(data$R6431200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"1 OR 2 TIMES",
"3 TO 5 TIMES",
"6 TO 10 TIMES",
"11 TO 49 TIMES",
"50 TO 99 TIMES",
"100 OR MORE TIMES"))
  data$R6479200 <- factor(data$R6479200,
levels=c(1.0,2.0,3.0),
labels=c("1: 1  NEVER MARRIED",
"2: 2  MARRIED, SPOUSE PRESENT",
"3: 3  OTHER"))
  data$R7006900 <- factor(data$R7006900,
levels=c(1.0,2.0,3.0),
labels=c("1: 1  NEVER MARRIED",
"2: 2  MARRIED, SPOUSE PRESENT",
"3: 3  OTHER"))
  data$R7606400 <- factor(data$R7606400,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$R7704200 <- factor(data$R7704200,
levels=c(1.0,2.0,3.0),
labels=c("1: 1  NEVER MARRIED",
"2: 2  MARRIED, SPOUSE PRESENT",
"3: 3  OTHER"))
  data$R8496600 <- factor(data$R8496600,
levels=c(1.0,2.0,3.0),
labels=c("1: 1  NEVER MARRIED",
"2: 2  MARRIED, SPOUSE PRESENT",
"3: 3  OTHER"))
  data$R9909800 <- factor(data$R9909800,
levels=c(-999.0,-998.0,-997.0,0.0,1.0),
labels=c("-999: MISSING DATE",
"-998: NO CHILDREN",
"-997: NEVER MARRIED",
"0: 1ST MARRIAGE AFTER 1ST BIRTH",
"1: 1ST MARRIAGE BEFORE 1ST BIRTH"))
  data$T0911100 <- factor(data$T0911100,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$T0988400 <- factor(data$T0988400,
levels=c(1.0,2.0,3.0),
labels=c("1: 1  NEVER MARRIED",
"2: 2  MARRIED, SPOUSE PRESENT",
"3: 3  OTHER"))
  data$T2075400 <- factor(data$T2075400,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$T2210400 <- factor(data$T2210400,
levels=c(1.0,2.0,3.0),
labels=c("1: NEVER MARRIED",
"2: MARRIED, SPOUSE PRESENT",
"3: OTHER"))
  data$T3044000 <- factor(data$T3044000,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$T3108300 <- factor(data$T3108300,
levels=c(1.0,2.0,3.0),
labels=c("1: NEVER MARRIED",
"2: MARRIED, SPOUSE PRESENT",
"3: OTHER"))
  data$T3976200 <- factor(data$T3976200,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$T4112800 <- factor(data$T4112800,
levels=c(1.0,2.0,3.0),
labels=c("1: NEVER MARRIED",
"2: MARRIED, SPOUSE PRESENT",
"3: OTHER"))
  data$T4914500 <- factor(data$T4914500,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$T5023200 <- factor(data$T5023200,
levels=c(1.0,2.0,3.0),
labels=c("1: NEVER MARRIED",
"2: MARRIED, SPOUSE PRESENT",
"3: OTHER"))
  data$T5771100 <- factor(data$T5771100,
levels=c(1.0,2.0,3.0),
labels=c("1: NEVER MARRIED",
"2: MARRIED, SPOUSE PRESENT",
"3: OTHER"))
  data$T8219200 <- factor(data$T8219200,
levels=c(1.0,2.0,3.0),
labels=c("1: NEVER MARRIED",
"2: MARRIED, SPOUSE PRESENT",
"3: OTHER"))
return(data)
}


# If there are values not categorized they will be represented as NA

vallabels_continuous = function(data) {
data$R0000500[0.0 <= data$R0000500 & data$R0000500 <= 56.0] <- 0.0
data$R0000500[73.0 <= data$R0000500 & data$R0000500 <= 99999.0] <- 73.0
data$R0000500 <- factor(data$R0000500,
levels=c(0.0,57.0,58.0,59.0,60.0,61.0,62.0,63.0,64.0,65.0,66.0,67.0,68.0,69.0,70.0,71.0,72.0,73.0),
labels=c("0 TO 56: < 57",
"57",
"58",
"59",
"60",
"61",
"62",
"63",
"64",
"65",
"66",
"67",
"68",
"69",
"70",
"71",
"72",
"73 TO 99999: 73+"))
data$R0000600[0.0 <= data$R0000600 & data$R0000600 <= 13.0] <- 0.0
data$R0000600[30.0 <= data$R0000600 & data$R0000600 <= 99999.0] <- 30.0
data$R0000600 <- factor(data$R0000600,
levels=c(0.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,21.0,22.0,23.0,24.0,25.0,26.0,27.0,28.0,29.0,30.0),
labels=c("0 TO 13: < 14",
"14",
"15",
"16",
"17",
"18",
"19",
"20",
"21",
"22",
"23",
"24",
"25",
"26",
"27",
"28",
"29",
"30 TO 99999: 30+"))
data$R0215700[1.0 <= data$R0215700 & data$R0215700 <= 13.0] <- 1.0
data$R0215700[14.0 <= data$R0215700 & data$R0215700 <= 26.0] <- 14.0
data$R0215700[27.0 <= data$R0215700 & data$R0215700 <= 39.0] <- 27.0
data$R0215700[40.0 <= data$R0215700 & data$R0215700 <= 48.0] <- 40.0
data$R0215700[49.0 <= data$R0215700 & data$R0215700 <= 51.0] <- 49.0
data$R0215700[53.0 <= data$R0215700 & data$R0215700 <= 9999999.0] <- 53.0
data$R0215700 <- factor(data$R0215700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R0217502[17.0 <= data$R0217502 & data$R0217502 <= 99999.0] <- 17.0
data$R0217502 <- factor(data$R0217502,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R0405210[17.0 <= data$R0405210 & data$R0405210 <= 99999.0] <- 17.0
data$R0405210 <- factor(data$R0405210,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R0407200[1.0 <= data$R0407200 & data$R0407200 <= 13.0] <- 1.0
data$R0407200[14.0 <= data$R0407200 & data$R0407200 <= 26.0] <- 14.0
data$R0407200[27.0 <= data$R0407200 & data$R0407200 <= 39.0] <- 27.0
data$R0407200[40.0 <= data$R0407200 & data$R0407200 <= 48.0] <- 40.0
data$R0407200[49.0 <= data$R0407200 & data$R0407200 <= 51.0] <- 49.0
data$R0407200[53.0 <= data$R0407200 & data$R0407200 <= 9999999.0] <- 53.0
data$R0407200 <- factor(data$R0407200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R0646300[1.0 <= data$R0646300 & data$R0646300 <= 13.0] <- 1.0
data$R0646300[14.0 <= data$R0646300 & data$R0646300 <= 26.0] <- 14.0
data$R0646300[27.0 <= data$R0646300 & data$R0646300 <= 39.0] <- 27.0
data$R0646300[40.0 <= data$R0646300 & data$R0646300 <= 48.0] <- 40.0
data$R0646300[49.0 <= data$R0646300 & data$R0646300 <= 51.0] <- 49.0
data$R0646300[53.0 <= data$R0646300 & data$R0646300 <= 9999999.0] <- 53.0
data$R0646300 <- factor(data$R0646300,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R0647103[17.0 <= data$R0647103 & data$R0647103 <= 99999.0] <- 17.0
data$R0647103 <- factor(data$R0647103,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R0896710[17.0 <= data$R0896710 & data$R0896710 <= 99999.0] <- 17.0
data$R0896710 <- factor(data$R0896710,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R0896900[1.0 <= data$R0896900 & data$R0896900 <= 13.0] <- 1.0
data$R0896900[14.0 <= data$R0896900 & data$R0896900 <= 26.0] <- 14.0
data$R0896900[27.0 <= data$R0896900 & data$R0896900 <= 39.0] <- 27.0
data$R0896900[40.0 <= data$R0896900 & data$R0896900 <= 48.0] <- 40.0
data$R0896900[49.0 <= data$R0896900 & data$R0896900 <= 51.0] <- 49.0
data$R0896900[53.0 <= data$R0896900 & data$R0896900 <= 9999999.0] <- 53.0
data$R0896900 <- factor(data$R0896900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R1144410[17.0 <= data$R1144410 & data$R1144410 <= 99999.0] <- 17.0
data$R1144410 <- factor(data$R1144410,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R1145300[1.0 <= data$R1145300 & data$R1145300 <= 13.0] <- 1.0
data$R1145300[14.0 <= data$R1145300 & data$R1145300 <= 26.0] <- 14.0
data$R1145300[27.0 <= data$R1145300 & data$R1145300 <= 39.0] <- 27.0
data$R1145300[40.0 <= data$R1145300 & data$R1145300 <= 48.0] <- 40.0
data$R1145300[49.0 <= data$R1145300 & data$R1145300 <= 51.0] <- 49.0
data$R1145300[53.0 <= data$R1145300 & data$R1145300 <= 9999999.0] <- 53.0
data$R1145300 <- factor(data$R1145300,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R1519610[17.0 <= data$R1519610 & data$R1519610 <= 99999.0] <- 17.0
data$R1519610 <- factor(data$R1519610,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R1520500[1.0 <= data$R1520500 & data$R1520500 <= 13.0] <- 1.0
data$R1520500[14.0 <= data$R1520500 & data$R1520500 <= 26.0] <- 14.0
data$R1520500[27.0 <= data$R1520500 & data$R1520500 <= 39.0] <- 27.0
data$R1520500[40.0 <= data$R1520500 & data$R1520500 <= 48.0] <- 40.0
data$R1520500[49.0 <= data$R1520500 & data$R1520500 <= 51.0] <- 49.0
data$R1520500[53.0 <= data$R1520500 & data$R1520500 <= 9999999.0] <- 53.0
data$R1520500 <- factor(data$R1520500,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R1890210[17.0 <= data$R1890210 & data$R1890210 <= 99999.0] <- 17.0
data$R1890210 <- factor(data$R1890210,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R1891200[1.0 <= data$R1891200 & data$R1891200 <= 13.0] <- 1.0
data$R1891200[14.0 <= data$R1891200 & data$R1891200 <= 26.0] <- 14.0
data$R1891200[27.0 <= data$R1891200 & data$R1891200 <= 39.0] <- 27.0
data$R1891200[40.0 <= data$R1891200 & data$R1891200 <= 48.0] <- 40.0
data$R1891200[49.0 <= data$R1891200 & data$R1891200 <= 51.0] <- 49.0
data$R1891200[53.0 <= data$R1891200 & data$R1891200 <= 9999999.0] <- 53.0
data$R1891200 <- factor(data$R1891200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R2257410[17.0 <= data$R2257410 & data$R2257410 <= 99999.0] <- 17.0
data$R2257410 <- factor(data$R2257410,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R2258300[1.0 <= data$R2258300 & data$R2258300 <= 13.0] <- 1.0
data$R2258300[14.0 <= data$R2258300 & data$R2258300 <= 26.0] <- 14.0
data$R2258300[27.0 <= data$R2258300 & data$R2258300 <= 39.0] <- 27.0
data$R2258300[40.0 <= data$R2258300 & data$R2258300 <= 48.0] <- 40.0
data$R2258300[49.0 <= data$R2258300 & data$R2258300 <= 51.0] <- 49.0
data$R2258300[53.0 <= data$R2258300 & data$R2258300 <= 9999999.0] <- 53.0
data$R2258300 <- factor(data$R2258300,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R2444610[17.0 <= data$R2444610 & data$R2444610 <= 99999.0] <- 17.0
data$R2444610 <- factor(data$R2444610,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R2445700[1.0 <= data$R2445700 & data$R2445700 <= 13.0] <- 1.0
data$R2445700[14.0 <= data$R2445700 & data$R2445700 <= 26.0] <- 14.0
data$R2445700[27.0 <= data$R2445700 & data$R2445700 <= 39.0] <- 27.0
data$R2445700[40.0 <= data$R2445700 & data$R2445700 <= 48.0] <- 40.0
data$R2445700[49.0 <= data$R2445700 & data$R2445700 <= 51.0] <- 49.0
data$R2445700[53.0 <= data$R2445700 & data$R2445700 <= 9999999.0] <- 53.0
data$R2445700 <- factor(data$R2445700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R2870110[17.0 <= data$R2870110 & data$R2870110 <= 99999.0] <- 17.0
data$R2870110 <- factor(data$R2870110,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R2871500[1.0 <= data$R2871500 & data$R2871500 <= 13.0] <- 1.0
data$R2871500[14.0 <= data$R2871500 & data$R2871500 <= 26.0] <- 14.0
data$R2871500[27.0 <= data$R2871500 & data$R2871500 <= 39.0] <- 27.0
data$R2871500[40.0 <= data$R2871500 & data$R2871500 <= 48.0] <- 40.0
data$R2871500[49.0 <= data$R2871500 & data$R2871500 <= 51.0] <- 49.0
data$R2871500[53.0 <= data$R2871500 & data$R2871500 <= 9999999.0] <- 53.0
data$R2871500 <- factor(data$R2871500,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R3073910[17.0 <= data$R3073910 & data$R3073910 <= 99999.0] <- 17.0
data$R3073910 <- factor(data$R3073910,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R3075200[1.0 <= data$R3075200 & data$R3075200 <= 13.0] <- 1.0
data$R3075200[14.0 <= data$R3075200 & data$R3075200 <= 26.0] <- 14.0
data$R3075200[27.0 <= data$R3075200 & data$R3075200 <= 39.0] <- 27.0
data$R3075200[40.0 <= data$R3075200 & data$R3075200 <= 48.0] <- 40.0
data$R3075200[49.0 <= data$R3075200 & data$R3075200 <= 51.0] <- 49.0
data$R3075200[53.0 <= data$R3075200 & data$R3075200 <= 9999999.0] <- 53.0
data$R3075200 <- factor(data$R3075200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R3400600[17.0 <= data$R3400600 & data$R3400600 <= 99999.0] <- 17.0
data$R3400600 <- factor(data$R3400600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R3401900[1.0 <= data$R3401900 & data$R3401900 <= 13.0] <- 1.0
data$R3401900[14.0 <= data$R3401900 & data$R3401900 <= 26.0] <- 14.0
data$R3401900[27.0 <= data$R3401900 & data$R3401900 <= 39.0] <- 27.0
data$R3401900[40.0 <= data$R3401900 & data$R3401900 <= 48.0] <- 40.0
data$R3401900[49.0 <= data$R3401900 & data$R3401900 <= 51.0] <- 49.0
data$R3401900[53.0 <= data$R3401900 & data$R3401900 <= 9999999.0] <- 53.0
data$R3401900 <- factor(data$R3401900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R3656000[17.0 <= data$R3656000 & data$R3656000 <= 99999.0] <- 17.0
data$R3656000 <- factor(data$R3656000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R3657300[1.0 <= data$R3657300 & data$R3657300 <= 13.0] <- 1.0
data$R3657300[14.0 <= data$R3657300 & data$R3657300 <= 26.0] <- 14.0
data$R3657300[27.0 <= data$R3657300 & data$R3657300 <= 39.0] <- 27.0
data$R3657300[40.0 <= data$R3657300 & data$R3657300 <= 48.0] <- 40.0
data$R3657300[49.0 <= data$R3657300 & data$R3657300 <= 51.0] <- 49.0
data$R3657300[53.0 <= data$R3657300 & data$R3657300 <= 9999999.0] <- 53.0
data$R3657300 <- factor(data$R3657300,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R4006500[17.0 <= data$R4006500 & data$R4006500 <= 99999.0] <- 17.0
data$R4006500 <- factor(data$R4006500,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0),
labels=c("0: < 1",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17 TO 99999: 17+"))
data$R4007800[1.0 <= data$R4007800 & data$R4007800 <= 13.0] <- 1.0
data$R4007800[14.0 <= data$R4007800 & data$R4007800 <= 26.0] <- 14.0
data$R4007800[27.0 <= data$R4007800 & data$R4007800 <= 39.0] <- 27.0
data$R4007800[40.0 <= data$R4007800 & data$R4007800 <= 48.0] <- 40.0
data$R4007800[49.0 <= data$R4007800 & data$R4007800 <= 51.0] <- 49.0
data$R4007800[53.0 <= data$R4007800 & data$R4007800 <= 9999999.0] <- 53.0
data$R4007800 <- factor(data$R4007800,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R4417600[16.0 <= data$R4417600 & data$R4417600 <= 99999.0] <- 16.0
data$R4417600 <- factor(data$R4417600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16 TO 99999: 16+"))
data$R4418900[1.0 <= data$R4418900 & data$R4418900 <= 13.0] <- 1.0
data$R4418900[14.0 <= data$R4418900 & data$R4418900 <= 26.0] <- 14.0
data$R4418900[27.0 <= data$R4418900 & data$R4418900 <= 39.0] <- 27.0
data$R4418900[40.0 <= data$R4418900 & data$R4418900 <= 48.0] <- 40.0
data$R4418900[49.0 <= data$R4418900 & data$R4418900 <= 51.0] <- 49.0
data$R4418900[53.0 <= data$R4418900 & data$R4418900 <= 9999999.0] <- 53.0
data$R4418900 <- factor(data$R4418900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R5080600[10.0 <= data$R5080600 & data$R5080600 <= 999.0] <- 10.0
data$R5080600 <- factor(data$R5080600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R5081900[1.0 <= data$R5081900 & data$R5081900 <= 13.0] <- 1.0
data$R5081900[14.0 <= data$R5081900 & data$R5081900 <= 26.0] <- 14.0
data$R5081900[27.0 <= data$R5081900 & data$R5081900 <= 39.0] <- 27.0
data$R5081900[40.0 <= data$R5081900 & data$R5081900 <= 48.0] <- 40.0
data$R5081900[49.0 <= data$R5081900 & data$R5081900 <= 51.0] <- 49.0
data$R5081900[53.0 <= data$R5081900 & data$R5081900 <= 9.9999999E7] <- 53.0
data$R5081900 <- factor(data$R5081900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R5165900[10.0 <= data$R5165900 & data$R5165900 <= 999.0] <- 10.0
data$R5165900 <- factor(data$R5165900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R5167200[1.0 <= data$R5167200 & data$R5167200 <= 13.0] <- 1.0
data$R5167200[14.0 <= data$R5167200 & data$R5167200 <= 26.0] <- 14.0
data$R5167200[27.0 <= data$R5167200 & data$R5167200 <= 39.0] <- 27.0
data$R5167200[40.0 <= data$R5167200 & data$R5167200 <= 48.0] <- 40.0
data$R5167200[49.0 <= data$R5167200 & data$R5167200 <= 51.0] <- 49.0
data$R5167200[53.0 <= data$R5167200 & data$R5167200 <= 9.9999999E7] <- 53.0
data$R5167200 <- factor(data$R5167200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R6478600[10.0 <= data$R6478600 & data$R6478600 <= 999.0] <- 10.0
data$R6478600 <- factor(data$R6478600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R6480000[1.0 <= data$R6480000 & data$R6480000 <= 13.0] <- 1.0
data$R6480000[14.0 <= data$R6480000 & data$R6480000 <= 26.0] <- 14.0
data$R6480000[27.0 <= data$R6480000 & data$R6480000 <= 39.0] <- 27.0
data$R6480000[40.0 <= data$R6480000 & data$R6480000 <= 48.0] <- 40.0
data$R6480000[49.0 <= data$R6480000 & data$R6480000 <= 51.0] <- 49.0
data$R6480000[53.0 <= data$R6480000 & data$R6480000 <= 9.9999999E7] <- 53.0
data$R6480000 <- factor(data$R6480000,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R7006400[10.0 <= data$R7006400 & data$R7006400 <= 999.0] <- 10.0
data$R7006400 <- factor(data$R7006400,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R7007700[1.0 <= data$R7007700 & data$R7007700 <= 13.0] <- 1.0
data$R7007700[14.0 <= data$R7007700 & data$R7007700 <= 26.0] <- 14.0
data$R7007700[27.0 <= data$R7007700 & data$R7007700 <= 39.0] <- 27.0
data$R7007700[40.0 <= data$R7007700 & data$R7007700 <= 48.0] <- 40.0
data$R7007700[49.0 <= data$R7007700 & data$R7007700 <= 51.0] <- 49.0
data$R7007700[53.0 <= data$R7007700 & data$R7007700 <= 9.9999999E7] <- 53.0
data$R7007700 <- factor(data$R7007700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R7703600[10.0 <= data$R7703600 & data$R7703600 <= 999.0] <- 10.0
data$R7703600 <- factor(data$R7703600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R7705000[1.0 <= data$R7705000 & data$R7705000 <= 13.0] <- 1.0
data$R7705000[14.0 <= data$R7705000 & data$R7705000 <= 26.0] <- 14.0
data$R7705000[27.0 <= data$R7705000 & data$R7705000 <= 39.0] <- 27.0
data$R7705000[40.0 <= data$R7705000 & data$R7705000 <= 48.0] <- 40.0
data$R7705000[49.0 <= data$R7705000 & data$R7705000 <= 51.0] <- 49.0
data$R7705000[53.0 <= data$R7705000 & data$R7705000 <= 9.9999999E7] <- 53.0
data$R7705000 <- factor(data$R7705000,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R8496000[10.0 <= data$R8496000 & data$R8496000 <= 999.0] <- 10.0
data$R8496000 <- factor(data$R8496000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R8497400[1.0 <= data$R8497400 & data$R8497400 <= 13.0] <- 1.0
data$R8497400[14.0 <= data$R8497400 & data$R8497400 <= 26.0] <- 14.0
data$R8497400[27.0 <= data$R8497400 & data$R8497400 <= 39.0] <- 27.0
data$R8497400[40.0 <= data$R8497400 & data$R8497400 <= 48.0] <- 40.0
data$R8497400[49.0 <= data$R8497400 & data$R8497400 <= 51.0] <- 49.0
data$R8497400[53.0 <= data$R8497400 & data$R8497400 <= 9.9999999E7] <- 53.0
data$R8497400 <- factor(data$R8497400,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T0987600[10.0 <= data$T0987600 & data$T0987600 <= 999.0] <- 10.0
data$T0987600 <- factor(data$T0987600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$T0989200[1.0 <= data$T0989200 & data$T0989200 <= 13.0] <- 1.0
data$T0989200[14.0 <= data$T0989200 & data$T0989200 <= 26.0] <- 14.0
data$T0989200[27.0 <= data$T0989200 & data$T0989200 <= 39.0] <- 27.0
data$T0989200[40.0 <= data$T0989200 & data$T0989200 <= 48.0] <- 40.0
data$T0989200[49.0 <= data$T0989200 & data$T0989200 <= 51.0] <- 49.0
data$T0989200[53.0 <= data$T0989200 & data$T0989200 <= 9.9999999E7] <- 53.0
data$T0989200 <- factor(data$T0989200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T2209900[10.0 <= data$T2209900 & data$T2209900 <= 999.0] <- 10.0
data$T2209900 <- factor(data$T2209900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$T2211000[1.0 <= data$T2211000 & data$T2211000 <= 13.0] <- 1.0
data$T2211000[14.0 <= data$T2211000 & data$T2211000 <= 26.0] <- 14.0
data$T2211000[27.0 <= data$T2211000 & data$T2211000 <= 39.0] <- 27.0
data$T2211000[40.0 <= data$T2211000 & data$T2211000 <= 48.0] <- 40.0
data$T2211000[49.0 <= data$T2211000 & data$T2211000 <= 51.0] <- 49.0
data$T2211000[53.0 <= data$T2211000 & data$T2211000 <= 9.9999999E7] <- 53.0
data$T2211000 <- factor(data$T2211000,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T3107700[10.0 <= data$T3107700 & data$T3107700 <= 999.0] <- 10.0
data$T3107700 <- factor(data$T3107700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$T3108900[1.0 <= data$T3108900 & data$T3108900 <= 13.0] <- 1.0
data$T3108900[14.0 <= data$T3108900 & data$T3108900 <= 26.0] <- 14.0
data$T3108900[27.0 <= data$T3108900 & data$T3108900 <= 39.0] <- 27.0
data$T3108900[40.0 <= data$T3108900 & data$T3108900 <= 48.0] <- 40.0
data$T3108900[49.0 <= data$T3108900 & data$T3108900 <= 51.0] <- 49.0
data$T3108900[53.0 <= data$T3108900 & data$T3108900 <= 9.9999999E7] <- 53.0
data$T3108900 <- factor(data$T3108900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T4112200[10.0 <= data$T4112200 & data$T4112200 <= 999.0] <- 10.0
data$T4112200 <- factor(data$T4112200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$T4113400[1.0 <= data$T4113400 & data$T4113400 <= 13.0] <- 1.0
data$T4113400[14.0 <= data$T4113400 & data$T4113400 <= 26.0] <- 14.0
data$T4113400[27.0 <= data$T4113400 & data$T4113400 <= 39.0] <- 27.0
data$T4113400[40.0 <= data$T4113400 & data$T4113400 <= 48.0] <- 40.0
data$T4113400[49.0 <= data$T4113400 & data$T4113400 <= 51.0] <- 49.0
data$T4113400[53.0 <= data$T4113400 & data$T4113400 <= 9.9999999E7] <- 53.0
data$T4113400 <- factor(data$T4113400,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T5022500[10.0 <= data$T5022500 & data$T5022500 <= 999.0] <- 10.0
data$T5022500 <- factor(data$T5022500,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$T5024800[1.0 <= data$T5024800 & data$T5024800 <= 13.0] <- 1.0
data$T5024800[14.0 <= data$T5024800 & data$T5024800 <= 26.0] <- 14.0
data$T5024800[27.0 <= data$T5024800 & data$T5024800 <= 39.0] <- 27.0
data$T5024800[40.0 <= data$T5024800 & data$T5024800 <= 48.0] <- 40.0
data$T5024800[49.0 <= data$T5024800 & data$T5024800 <= 51.0] <- 49.0
data$T5024800[53.0 <= data$T5024800 & data$T5024800 <= 9.9999999E7] <- 53.0
data$T5024800 <- factor(data$T5024800,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T5770700[10.0 <= data$T5770700 & data$T5770700 <= 999.0] <- 10.0
data$T5770700 <- factor(data$T5770700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$T5772800[1.0 <= data$T5772800 & data$T5772800 <= 13.0] <- 1.0
data$T5772800[14.0 <= data$T5772800 & data$T5772800 <= 26.0] <- 14.0
data$T5772800[27.0 <= data$T5772800 & data$T5772800 <= 39.0] <- 27.0
data$T5772800[40.0 <= data$T5772800 & data$T5772800 <= 48.0] <- 40.0
data$T5772800[49.0 <= data$T5772800 & data$T5772800 <= 51.0] <- 49.0
data$T5772800[53.0 <= data$T5772800 & data$T5772800 <= 9.9999999E7] <- 53.0
data$T5772800 <- factor(data$T5772800,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T8218600[10.0 <= data$T8218600 & data$T8218600 <= 999.0] <- 10.0
data$T8218600 <- factor(data$T8218600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$T8220000[1.0 <= data$T8220000 & data$T8220000 <= 13.0] <- 1.0
data$T8220000[14.0 <= data$T8220000 & data$T8220000 <= 26.0] <- 14.0
data$T8220000[27.0 <= data$T8220000 & data$T8220000 <= 39.0] <- 27.0
data$T8220000[40.0 <= data$T8220000 & data$T8220000 <= 48.0] <- 40.0
data$T8220000[49.0 <= data$T8220000 & data$T8220000 <= 51.0] <- 49.0
data$T8220000[53.0 <= data$T8220000 & data$T8220000 <= 9.9999999E7] <- 53.0
data$T8220000 <- factor(data$T8220000,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
return(data)
}

varlabels <- c("ID# (1-12686) 79",
"DATE OF BIRTH - YR 79",
"AGE OF R 79",
"WITH WHOM DID R LIVE @ AGE 14 79",
"SAMPLE ID  79 INT",
"RACL/ETHNIC COHORT /SCRNR 79",
"SEX OF R 79",
"# WEEKS WRKD IN P-C YR 79",
"MARITAL STATUS (COLLAPSED) 79",
"FAMILY SIZE 79",
"FAMILY SIZE 80",
"MARITAL STATUS (COLLAPSED) 80",
"# WEEKS WRKD IN P-C YR 80",
"MARITAL STATUS (COLLAPSED) 81",
"# WEEKS WRKD IN P-C YR 81",
"FAMILY SIZE 81",
"ALCHL-HAD ANY ALCHL BVRGS LAST MO 82",
"FAMILY SIZE 82",
"# WEEKS WRKD IN P-C YR 82",
"MARITAL STATUS (COLLAPSED) 82",
"ALCHL-HAD ANY ALCHL BVRGS LAST MO 83",
"FAMILY SIZE 83",
"MARITAL STATUS (COLLAPSED) 83",
"# WEEKS WRKD IN P-C YR 83",
"ALCHL-HAD ANY ALCHL BVRGS LAST MO 84",
"DRUG #TMS USE MARJ/HASH PAST 30 DAYS 84",
"DRUG #TMS USE COCAINE 84",
"DRUG #TMS USE OTHER NARCOTICS 84",
"DRUG #TMS USE OTHER DRUGS 84",
"FAMILY SIZE 84",
"MARITAL STATUS (COLLAPSED) 84",
"# WEEKS WRKD IN P-C YR 84",
"ALCHL-HAD ANY ALCHL BVRGS LAST MO 85",
"FAMILY SIZE 85",
"MARITAL STATUS (COLLAPSED) 85",
"# WEEKS WRKD IN P-C YR 85",
"FAMILY SIZE 86",
"MARITAL STATUS (COLLAPSED) 86",
"# WEEKS WRKD IN P-C YR 86",
"FAMILY SIZE 87",
"MARITAL STATUS (COLLAPSED) 87",
"# WEEKS WRKD IN P-C YR 87",
"ALCHL-HAD ANY ALCHL BVRGS LAST MO 88",
"DRUG #TMS USE MARJ/HASH PAST 30 DAYS 88",
"DRUG #TMS USE OCCASIONS USED COCAINE 88",
"FAMILY SIZE 88",
"MARITAL STATUS (COLLAPSED) 88",
"# WEEKS WRKD IN P-C YR 88",
"ALCHL-HAD ANY ALCHL BVRGS LAST MO 89",
"FAMILY SIZE 89",
"MARITAL STATUS (COLLAPSED) 89",
"# WEEKS WRKD IN P-C YR 89",
"FAMILY SIZE 90",
"MARITAL STATUS (COLLAPSED) 90",
"# WEEKS WRKD IN P-C YR 90",
"FAMILY SIZE 91",
"MARITAL STATUS (COLLAPSED) 91",
"# WEEKS WRKD IN P-C YR 91",
"DRUG #TMS USE MARJ PAST 30 DAYS 92",
"DRUG #TMS USE OCCASIONS USED COCAINE 92",
"DRUG #TMS USE COCAINE PAST 30 DAYS 92",
"FAMILY SIZE 92",
"MARITAL STATUS (COLLAPSED) 92",
"# WEEKS WRKD IN P-C YR 92",
"FAMILY SIZE 93",
"MARITAL STATUS (COLLAPSED) 93",
"WKS WRKD IN PAST CAL YR 93",
"HAD ALCHOLC BEVERAGE IN LAST 30 94",
"NMBR TIMES POT PAST 30 DAYS 94",
"HOW MANY OCCASIONS USED COCAINE 94",
"HOW MANY OCCASIONS USED CRACK 94",
"FAMILY SIZE 94",
"MARITAL STATUS (COLLAPSED) 94",
"WKS WRKD IN PAST CAL YR 94",
"FAMILY SIZE 96",
"MARITAL STATUS (COLLAPSED) 96",
"WKS WRKD IN PAST CAL YR 96",
"NMBR TIMES POT PAST 30 DAYS 1998",
"HOW MANY OCCASIONS USED COCAINE 1998",
"HOW MANY OCCASIONS USED CRACK 1998",
"FAMILY SIZE 1998",
"MARITAL STATUS (COLLAPSED) 1998",
"WKS WRKD IN PAST CAL YR 1998",
"FAMILY SIZE 2000",
"MARITAL STATUS (COLLAPSED) 2000",
"WKS WRKD IN PAST CAL YR 2000",
"HAD ALCOHOLC BEVERAGE LAST 30 DAYS 2002",
"FAMILY SIZE 2002",
"MARITAL STATUS (COLLAPSED) 2002",
"WKS WRKD IN PAST CAL YR 2002",
"FAMILY SIZE 2004",
"MARITAL STATUS (COLLAPSED) 2004",
"WKS WRKD IN PAST CAL YR 2004",
"WAS 1ST MARRIAGE BEFORE 1ST BIRTH? XRND",
"R CONSUMED ALCOHOL IN LAST 30 DAYS? 2006",
"FAMILY SIZE 2006",
"MARITAL STATUS (COLLAPSED) 2006",
"WKS WRKD IN PAST CAL YR 2006",
"R CONSUMED ALCOHOL IN LAST 30 DAYS? 2008",
"FAMILY SIZE 2008",
"MARITAL STATUS (COLLAPSED) 2008",
"WKS WRKD IN PAST CAL YR 2008",
"R CONSUMED ALCOHOL IN LAST 30 DAYS? 2010",
"FAMILY SIZE 2010",
"MARITAL STATUS (COLLAPSED) 2010",
"WKS WRKD IN PAST CAL YR 2010",
"R CONSUMED ALCOHOL IN LAST 30 DAYS? 2012",
"FAMILY SIZE 2012",
"MARITAL STATUS (COLLAPSED) 2012",
"WKS WRKD IN PAST CAL YR 2012",
"R CONSUMED ALCOHOL IN LAST 30 DAYS? 2014",
"FAMILY SIZE 2014",
"MARITAL STATUS (COLLAPSED) 2014",
"WKS WRKD IN PAST CAL YR 2014",
"FAMILY SIZE 2016",
"MARITAL STATUS (COLLAPSED) 2016",
"WKS WRKD IN PAST CAL YR 2016",
"FAMILY SIZE 2018",
"MARITAL STATUS (COLLAPSED) 2018",
"WKS WRKD IN PAST CAL YR 2018"
)


# Use qnames rather than rnums

qnames = function(data) {
names(data) <- c("CASEID_1979",
"Q1-3_A~Y_1979",
"FAM-1B_1979",
"FAM-7_1979",
"SAMPLE_ID_1979",
"SAMPLE_RACE_78SCRN",
"SAMPLE_SEX_1979",
"WKSWK-PCY_1979",
"MARSTAT-COL_1979",
"FAMSIZE_1979",
"FAMSIZE_1980",
"MARSTAT-COL_1980",
"WKSWK-PCY_1980",
"MARSTAT-COL_1981",
"WKSWK-PCY_1981",
"FAMSIZE_1981",
"Q12-3_1982",
"FAMSIZE_1982",
"WKSWK-PCY_1982",
"MARSTAT-COL_1982",
"Q12-3_1983",
"FAMSIZE_1983",
"MARSTAT-COL_1983",
"WKSWK-PCY_1983",
"Q12-3_1984",
"DS-11_1984",
"DS-12_1984",
"DRUG-27_1984",
"DRUG-33_1984",
"FAMSIZE_1984",
"MARSTAT-COL_1984",
"WKSWK-PCY_1984",
"Q12-3_1985",
"FAMSIZE_1985",
"MARSTAT-COL_1985",
"WKSWK-PCY_1985",
"FAMSIZE_1986",
"MARSTAT-COL_1986",
"WKSWK-PCY_1986",
"FAMSIZE_1987",
"MARSTAT-COL_1987",
"WKSWK-PCY_1987",
"Q12-3_1988",
"DS-11_1988",
"DS-12_1988",
"FAMSIZE_1988",
"MARSTAT-COL_1988",
"WKSWK-PCY_1988",
"Q12-3_1989",
"FAMSIZE_1989",
"MARSTAT-COL_1989",
"WKSWK-PCY_1989",
"FAMSIZE_1990",
"MARSTAT-COL_1990",
"WKSWK-PCY_1990",
"FAMSIZE_1991",
"MARSTAT-COL_1991",
"WKSWK-PCY_1991",
"DS-11_1992",
"DS-12_1992",
"DS-16_1992",
"FAMSIZE_1992",
"MARSTAT-COL_1992",
"WKSWK-PCY_1992",
"FAMSIZE_1993",
"MARSTAT-COL_1993",
"WKSWK-PCY_1993",
"Q12-3_1994",
"DS-11_1994",
"DS-12_1994",
"DS-16_1994",
"FAMSIZE_1994",
"MARSTAT-COL_1994",
"WKSWK-PCY_1994",
"FAMSIZE_1996",
"MARSTAT-COL_1996",
"WKSWK-PCY_1996",
"DS-11_1998",
"DS-12_1998",
"DS-16_1998",
"FAMSIZE_1998",
"MARSTAT-COL_1998",
"WKSWK-PCY_1998",
"FAMSIZE_2000",
"MARSTAT-COL_2000",
"WKSWK-PCY_2000",
"Q12-3_2002",
"FAMSIZE_2002",
"MARSTAT-COL_2002",
"WKSWK-PCY_2002",
"FAMSIZE_2004",
"MARSTAT-COL_2004",
"WKSWK-PCY_2004",
"FL1M1B_XRND",
"Q12-3_2006",
"FAMSIZE_2006",
"MARSTAT-COL_2006",
"WKSWK-PCY_2006",
"Q12-3_2008",
"FAMSIZE_2008",
"MARSTAT-COL_2008",
"WKSWK-PCY_2008",
"Q12-3_2010",
"FAMSIZE_2010",
"MARSTAT-COL_2010",
"WKSWK-PCY_2010",
"Q12-3_2012",
"FAMSIZE_2012",
"MARSTAT-COL_2012",
"WKSWK-PCY_2012",
"Q12-3_2014",
"FAMSIZE_2014",
"MARSTAT-COL_2014",
"WKSWK-PCY_2014",
"FAMSIZE_2016",
"MARSTAT-COL_2016",
"WKSWK-PCY_2016",
"FAMSIZE_2018",
"MARSTAT-COL_2018",
"WKSWK-PCY_2018")
return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels.
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#categories <- vallabels_continuous(new_data)
#summary(categories)

#************************************************************************************************************

