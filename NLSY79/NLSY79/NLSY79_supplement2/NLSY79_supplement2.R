
# Set working directory
# setwd()


new_data <- read.table('NLSY79_supplement2.dat', sep=' ')
names(new_data) <- c('R0000100',
'R0172500',
'R0173600',
'R0214700',
'R0214800',
'R0216400',
'R0226100',
'R0329200',
'R0405700',
'R0413700',
'R0530700',
'R0602810',
'R0659600',
'R0809900',
'R0897910',
'R0902900',
'R1045700',
'R1144800',
'R1202700',
'R1427500',
'R1520000',
'R1602000',
'R1794600',
'R1890700',
'R1902000',
'R2156200',
'R2257800',
'R2302000',
'R2365700',
'R2445200',
'R2503100',
'R2742500',
'R2870800',
'R2903100',
'R2986100',
'R3074500',
'R3104500',
'R3302500',
'R3401200',
'R3504500',
'R3573400',
'R3656600',
'R3704500',
'R3917600',
'R4007100',
'R4100200',
'R4123200',
'R4418200',
'R4500201',
'R4519200',
'R5081200',
'R5166500',
'R5200201',
'R5218200',
'R5817700',
'R6435301',
'R6479100',
'R6749700',
'R6963301',
'R7006800',
'R7396900',
'R7656301',
'R7704100',
'R7800501',
'R8090200',
'R8496500',
'T0000901',
'T0321700',
'T0988300',
'T1200701',
'T1471300',
'T2210300',
'T2260601',
'T2520200',
'T3108200',
'T3195601',
'T3506500',
'T4112700',
'T4181101',
'T4478200',
'T5023100',
'T5150001',
'T5424100',
'T5771000',
'T7720001',
'T7979900',
'T8219100',
'T8330001',
'T8584600',
'T8788300')


# Handle missing values

new_data[new_data == -1] = NA  # Refused
new_data[new_data == -2] = NA  # Dont know
new_data[new_data == -3] = NA  # Invalid missing
new_data[new_data == -4] = NA  # Valid missing
new_data[new_data == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
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
  data$R0216400 <- factor(data$R0216400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R0405700 <- factor(data$R0405700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R0602810 <- factor(data$R0602810,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R0897910 <- factor(data$R0897910,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R1144800 <- factor(data$R1144800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R1520000 <- factor(data$R1520000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R1890700 <- factor(data$R1890700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R2257800 <- factor(data$R2257800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R2445200 <- factor(data$R2445200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R2870800 <- factor(data$R2870800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R3074500 <- factor(data$R3074500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R3401200 <- factor(data$R3401200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R3656600 <- factor(data$R3656600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R4007100 <- factor(data$R4007100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R4418200 <- factor(data$R4418200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NORTHEAST",
"NORTH CENTRAL",
"SOUTH",
"WEST"))
  data$R4500201 <- factor(data$R4500201,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R5081200 <- factor(data$R5081200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: 1  NORTHEAST",
"2: 2  NORTH CENTRAL",
"3: 3  SOUTH",
"4: 4  WEST"))
  data$R5166500 <- factor(data$R5166500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
  data$R5200201 <- factor(data$R5200201,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R6435301 <- factor(data$R6435301,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R6479100 <- factor(data$R6479100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: 1  NORTHEAST",
"2: 2  NORTH CENTRAL",
"3: 3  SOUTH",
"4: 4  WEST"))
  data$R6963301 <- factor(data$R6963301,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R7006800 <- factor(data$R7006800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: 1  NORTHEAST",
"2: 2  NORTH CENTRAL",
"3: 3  SOUTH",
"4: 4  WEST"))
  data$R7656301 <- factor(data$R7656301,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R7704100 <- factor(data$R7704100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: 1  NORTHEAST",
"2: 2  NORTH CENTRAL",
"3: 3  SOUTH",
"4: 4  WEST"))
  data$R7800501 <- factor(data$R7800501,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0: Month not reported",
"1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R8496500 <- factor(data$R8496500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: 1  NORTHEAST",
"2: 2  NORTH CENTRAL",
"3: 3  SOUTH",
"4: 4  WEST"))
  data$T0000901 <- factor(data$T0000901,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T0988300 <- factor(data$T0988300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: 1  NORTHEAST",
"2: 2  NORTH CENTRAL",
"3: 3  SOUTH",
"4: 4  WEST"))
  data$T1200701 <- factor(data$T1200701,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T2210300 <- factor(data$T2210300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
  data$T2260601 <- factor(data$T2260601,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T3108200 <- factor(data$T3108200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
  data$T3195601 <- factor(data$T3195601,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T4112700 <- factor(data$T4112700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
  data$T4181101 <- factor(data$T4181101,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T5023100 <- factor(data$T5023100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
  data$T5150001 <- factor(data$T5150001,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T5771000 <- factor(data$T5771000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
  data$T7720001 <- factor(data$T7720001,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T8219100 <- factor(data$T8219100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
  data$T8330001 <- factor(data$T8330001,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$T8788300 <- factor(data$T8788300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("1: NORTHEAST",
"2: NORTH CENTRAL",
"3: SOUTH",
"4: WEST"))
return(data)
}


# If there are values not categorized they will be represented as NA

vallabels_continuous = function(data) {
data$R0172500[17.0 <= data$R0172500 & data$R0172500 <= 99999.0] <- 17.0
data$R0172500 <- factor(data$R0172500,
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
data$R0226100[1.0 <= data$R0226100 & data$R0226100 <= 13.0] <- 1.0
data$R0226100[14.0 <= data$R0226100 & data$R0226100 <= 26.0] <- 14.0
data$R0226100[27.0 <= data$R0226100 & data$R0226100 <= 39.0] <- 27.0
data$R0226100[40.0 <= data$R0226100 & data$R0226100 <= 48.0] <- 40.0
data$R0226100[49.0 <= data$R0226100 & data$R0226100 <= 51.0] <- 49.0
data$R0226100[53.0 <= data$R0226100 & data$R0226100 <= 9999999.0] <- 53.0
data$R0226100 <- factor(data$R0226100,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R0329200[17.0 <= data$R0329200 & data$R0329200 <= 99999.0] <- 17.0
data$R0329200 <- factor(data$R0329200,
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
data$R0413700[1.0 <= data$R0413700 & data$R0413700 <= 13.0] <- 1.0
data$R0413700[14.0 <= data$R0413700 & data$R0413700 <= 26.0] <- 14.0
data$R0413700[27.0 <= data$R0413700 & data$R0413700 <= 39.0] <- 27.0
data$R0413700[40.0 <= data$R0413700 & data$R0413700 <= 48.0] <- 40.0
data$R0413700[49.0 <= data$R0413700 & data$R0413700 <= 51.0] <- 49.0
data$R0413700[53.0 <= data$R0413700 & data$R0413700 <= 9999999.0] <- 53.0
data$R0413700 <- factor(data$R0413700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R0530700[17.0 <= data$R0530700 & data$R0530700 <= 99999.0] <- 17.0
data$R0530700 <- factor(data$R0530700,
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
data$R0659600[1.0 <= data$R0659600 & data$R0659600 <= 13.0] <- 1.0
data$R0659600[14.0 <= data$R0659600 & data$R0659600 <= 26.0] <- 14.0
data$R0659600[27.0 <= data$R0659600 & data$R0659600 <= 39.0] <- 27.0
data$R0659600[40.0 <= data$R0659600 & data$R0659600 <= 48.0] <- 40.0
data$R0659600[49.0 <= data$R0659600 & data$R0659600 <= 51.0] <- 49.0
data$R0659600[53.0 <= data$R0659600 & data$R0659600 <= 9999999.0] <- 53.0
data$R0659600 <- factor(data$R0659600,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R0809900[17.0 <= data$R0809900 & data$R0809900 <= 99999.0] <- 17.0
data$R0809900 <- factor(data$R0809900,
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
data$R0902900[1.0 <= data$R0902900 & data$R0902900 <= 13.0] <- 1.0
data$R0902900[14.0 <= data$R0902900 & data$R0902900 <= 26.0] <- 14.0
data$R0902900[27.0 <= data$R0902900 & data$R0902900 <= 39.0] <- 27.0
data$R0902900[40.0 <= data$R0902900 & data$R0902900 <= 48.0] <- 40.0
data$R0902900[49.0 <= data$R0902900 & data$R0902900 <= 51.0] <- 49.0
data$R0902900[53.0 <= data$R0902900 & data$R0902900 <= 9999999.0] <- 53.0
data$R0902900 <- factor(data$R0902900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R1045700[17.0 <= data$R1045700 & data$R1045700 <= 99999.0] <- 17.0
data$R1045700 <- factor(data$R1045700,
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
data$R1202700[1.0 <= data$R1202700 & data$R1202700 <= 13.0] <- 1.0
data$R1202700[14.0 <= data$R1202700 & data$R1202700 <= 26.0] <- 14.0
data$R1202700[27.0 <= data$R1202700 & data$R1202700 <= 39.0] <- 27.0
data$R1202700[40.0 <= data$R1202700 & data$R1202700 <= 48.0] <- 40.0
data$R1202700[49.0 <= data$R1202700 & data$R1202700 <= 51.0] <- 49.0
data$R1202700[53.0 <= data$R1202700 & data$R1202700 <= 9999999.0] <- 53.0
data$R1202700 <- factor(data$R1202700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R1427500[17.0 <= data$R1427500 & data$R1427500 <= 99999.0] <- 17.0
data$R1427500 <- factor(data$R1427500,
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
data$R1602000[1.0 <= data$R1602000 & data$R1602000 <= 13.0] <- 1.0
data$R1602000[14.0 <= data$R1602000 & data$R1602000 <= 26.0] <- 14.0
data$R1602000[27.0 <= data$R1602000 & data$R1602000 <= 39.0] <- 27.0
data$R1602000[40.0 <= data$R1602000 & data$R1602000 <= 48.0] <- 40.0
data$R1602000[49.0 <= data$R1602000 & data$R1602000 <= 51.0] <- 49.0
data$R1602000[53.0 <= data$R1602000 & data$R1602000 <= 9999999.0] <- 53.0
data$R1602000 <- factor(data$R1602000,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R1794600[17.0 <= data$R1794600 & data$R1794600 <= 99999.0] <- 17.0
data$R1794600 <- factor(data$R1794600,
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
data$R1902000[1.0 <= data$R1902000 & data$R1902000 <= 13.0] <- 1.0
data$R1902000[14.0 <= data$R1902000 & data$R1902000 <= 26.0] <- 14.0
data$R1902000[27.0 <= data$R1902000 & data$R1902000 <= 39.0] <- 27.0
data$R1902000[40.0 <= data$R1902000 & data$R1902000 <= 48.0] <- 40.0
data$R1902000[49.0 <= data$R1902000 & data$R1902000 <= 51.0] <- 49.0
data$R1902000[53.0 <= data$R1902000 & data$R1902000 <= 9999999.0] <- 53.0
data$R1902000 <- factor(data$R1902000,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R2156200[17.0 <= data$R2156200 & data$R2156200 <= 99999.0] <- 17.0
data$R2156200 <- factor(data$R2156200,
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
data$R2302000[1.0 <= data$R2302000 & data$R2302000 <= 13.0] <- 1.0
data$R2302000[14.0 <= data$R2302000 & data$R2302000 <= 26.0] <- 14.0
data$R2302000[27.0 <= data$R2302000 & data$R2302000 <= 39.0] <- 27.0
data$R2302000[40.0 <= data$R2302000 & data$R2302000 <= 48.0] <- 40.0
data$R2302000[49.0 <= data$R2302000 & data$R2302000 <= 51.0] <- 49.0
data$R2302000[53.0 <= data$R2302000 & data$R2302000 <= 9999999.0] <- 53.0
data$R2302000 <- factor(data$R2302000,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R2365700[17.0 <= data$R2365700 & data$R2365700 <= 99999.0] <- 17.0
data$R2365700 <- factor(data$R2365700,
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
data$R2503100[1.0 <= data$R2503100 & data$R2503100 <= 13.0] <- 1.0
data$R2503100[14.0 <= data$R2503100 & data$R2503100 <= 26.0] <- 14.0
data$R2503100[27.0 <= data$R2503100 & data$R2503100 <= 39.0] <- 27.0
data$R2503100[40.0 <= data$R2503100 & data$R2503100 <= 48.0] <- 40.0
data$R2503100[49.0 <= data$R2503100 & data$R2503100 <= 51.0] <- 49.0
data$R2503100[53.0 <= data$R2503100 & data$R2503100 <= 9999999.0] <- 53.0
data$R2503100 <- factor(data$R2503100,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R2742500[17.0 <= data$R2742500 & data$R2742500 <= 99999.0] <- 17.0
data$R2742500 <- factor(data$R2742500,
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
data$R2903100[1.0 <= data$R2903100 & data$R2903100 <= 13.0] <- 1.0
data$R2903100[14.0 <= data$R2903100 & data$R2903100 <= 26.0] <- 14.0
data$R2903100[27.0 <= data$R2903100 & data$R2903100 <= 39.0] <- 27.0
data$R2903100[40.0 <= data$R2903100 & data$R2903100 <= 48.0] <- 40.0
data$R2903100[49.0 <= data$R2903100 & data$R2903100 <= 51.0] <- 49.0
data$R2903100[53.0 <= data$R2903100 & data$R2903100 <= 9999999.0] <- 53.0
data$R2903100 <- factor(data$R2903100,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R2986100[17.0 <= data$R2986100 & data$R2986100 <= 99999.0] <- 17.0
data$R2986100 <- factor(data$R2986100,
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
data$R3104500[1.0 <= data$R3104500 & data$R3104500 <= 13.0] <- 1.0
data$R3104500[14.0 <= data$R3104500 & data$R3104500 <= 26.0] <- 14.0
data$R3104500[27.0 <= data$R3104500 & data$R3104500 <= 39.0] <- 27.0
data$R3104500[40.0 <= data$R3104500 & data$R3104500 <= 48.0] <- 40.0
data$R3104500[49.0 <= data$R3104500 & data$R3104500 <= 51.0] <- 49.0
data$R3104500[53.0 <= data$R3104500 & data$R3104500 <= 9999999.0] <- 53.0
data$R3104500 <- factor(data$R3104500,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R3302500[17.0 <= data$R3302500 & data$R3302500 <= 99999.0] <- 17.0
data$R3302500 <- factor(data$R3302500,
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
data$R3504500[1.0 <= data$R3504500 & data$R3504500 <= 13.0] <- 1.0
data$R3504500[14.0 <= data$R3504500 & data$R3504500 <= 26.0] <- 14.0
data$R3504500[27.0 <= data$R3504500 & data$R3504500 <= 39.0] <- 27.0
data$R3504500[40.0 <= data$R3504500 & data$R3504500 <= 48.0] <- 40.0
data$R3504500[49.0 <= data$R3504500 & data$R3504500 <= 51.0] <- 49.0
data$R3504500[53.0 <= data$R3504500 & data$R3504500 <= 9999999.0] <- 53.0
data$R3504500 <- factor(data$R3504500,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R3573400[17.0 <= data$R3573400 & data$R3573400 <= 99999.0] <- 17.0
data$R3573400 <- factor(data$R3573400,
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
data$R3704500[1.0 <= data$R3704500 & data$R3704500 <= 13.0] <- 1.0
data$R3704500[14.0 <= data$R3704500 & data$R3704500 <= 26.0] <- 14.0
data$R3704500[27.0 <= data$R3704500 & data$R3704500 <= 39.0] <- 27.0
data$R3704500[40.0 <= data$R3704500 & data$R3704500 <= 48.0] <- 40.0
data$R3704500[49.0 <= data$R3704500 & data$R3704500 <= 51.0] <- 49.0
data$R3704500[53.0 <= data$R3704500 & data$R3704500 <= 9999999.0] <- 53.0
data$R3704500 <- factor(data$R3704500,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R3917600[17.0 <= data$R3917600 & data$R3917600 <= 99999.0] <- 17.0
data$R3917600 <- factor(data$R3917600,
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
data$R4100200[17.0 <= data$R4100200 & data$R4100200 <= 99999.0] <- 17.0
data$R4100200 <- factor(data$R4100200,
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
data$R4123200[1.0 <= data$R4123200 & data$R4123200 <= 13.0] <- 1.0
data$R4123200[14.0 <= data$R4123200 & data$R4123200 <= 26.0] <- 14.0
data$R4123200[27.0 <= data$R4123200 & data$R4123200 <= 39.0] <- 27.0
data$R4123200[40.0 <= data$R4123200 & data$R4123200 <= 48.0] <- 40.0
data$R4123200[49.0 <= data$R4123200 & data$R4123200 <= 51.0] <- 49.0
data$R4123200[53.0 <= data$R4123200 & data$R4123200 <= 9999999.0] <- 53.0
data$R4123200 <- factor(data$R4123200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 9999999: > 52"))
data$R4519200[1.0 <= data$R4519200 & data$R4519200 <= 13.0] <- 1.0
data$R4519200[14.0 <= data$R4519200 & data$R4519200 <= 26.0] <- 14.0
data$R4519200[27.0 <= data$R4519200 & data$R4519200 <= 39.0] <- 27.0
data$R4519200[40.0 <= data$R4519200 & data$R4519200 <= 48.0] <- 40.0
data$R4519200[49.0 <= data$R4519200 & data$R4519200 <= 51.0] <- 49.0
data$R4519200[53.0 <= data$R4519200 & data$R4519200 <= 9.9999999E7] <- 53.0
data$R4519200 <- factor(data$R4519200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R5218200[1.0 <= data$R5218200 & data$R5218200 <= 13.0] <- 1.0
data$R5218200[14.0 <= data$R5218200 & data$R5218200 <= 26.0] <- 14.0
data$R5218200[27.0 <= data$R5218200 & data$R5218200 <= 39.0] <- 27.0
data$R5218200[40.0 <= data$R5218200 & data$R5218200 <= 48.0] <- 40.0
data$R5218200[49.0 <= data$R5218200 & data$R5218200 <= 51.0] <- 49.0
data$R5218200[53.0 <= data$R5218200 & data$R5218200 <= 9.9999999E7] <- 53.0
data$R5218200 <- factor(data$R5218200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R5817700[1.0 <= data$R5817700 & data$R5817700 <= 13.0] <- 1.0
data$R5817700[14.0 <= data$R5817700 & data$R5817700 <= 26.0] <- 14.0
data$R5817700[27.0 <= data$R5817700 & data$R5817700 <= 39.0] <- 27.0
data$R5817700[40.0 <= data$R5817700 & data$R5817700 <= 48.0] <- 40.0
data$R5817700[49.0 <= data$R5817700 & data$R5817700 <= 51.0] <- 49.0
data$R5817700[53.0 <= data$R5817700 & data$R5817700 <= 9.9999999E7] <- 53.0
data$R5817700 <- factor(data$R5817700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R6749700[1.0 <= data$R6749700 & data$R6749700 <= 13.0] <- 1.0
data$R6749700[14.0 <= data$R6749700 & data$R6749700 <= 26.0] <- 14.0
data$R6749700[27.0 <= data$R6749700 & data$R6749700 <= 39.0] <- 27.0
data$R6749700[40.0 <= data$R6749700 & data$R6749700 <= 48.0] <- 40.0
data$R6749700[49.0 <= data$R6749700 & data$R6749700 <= 51.0] <- 49.0
data$R6749700[53.0 <= data$R6749700 & data$R6749700 <= 9.9999999E7] <- 53.0
data$R6749700 <- factor(data$R6749700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R7396900[1.0 <= data$R7396900 & data$R7396900 <= 13.0] <- 1.0
data$R7396900[14.0 <= data$R7396900 & data$R7396900 <= 26.0] <- 14.0
data$R7396900[27.0 <= data$R7396900 & data$R7396900 <= 39.0] <- 27.0
data$R7396900[40.0 <= data$R7396900 & data$R7396900 <= 48.0] <- 40.0
data$R7396900[49.0 <= data$R7396900 & data$R7396900 <= 51.0] <- 49.0
data$R7396900[53.0 <= data$R7396900 & data$R7396900 <= 9.9999999E7] <- 53.0
data$R7396900 <- factor(data$R7396900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$R8090200[1.0 <= data$R8090200 & data$R8090200 <= 13.0] <- 1.0
data$R8090200[14.0 <= data$R8090200 & data$R8090200 <= 26.0] <- 14.0
data$R8090200[27.0 <= data$R8090200 & data$R8090200 <= 39.0] <- 27.0
data$R8090200[40.0 <= data$R8090200 & data$R8090200 <= 48.0] <- 40.0
data$R8090200[49.0 <= data$R8090200 & data$R8090200 <= 51.0] <- 49.0
data$R8090200[53.0 <= data$R8090200 & data$R8090200 <= 9.9999999E7] <- 53.0
data$R8090200 <- factor(data$R8090200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T0321700[1.0 <= data$T0321700 & data$T0321700 <= 13.0] <- 1.0
data$T0321700[14.0 <= data$T0321700 & data$T0321700 <= 26.0] <- 14.0
data$T0321700[27.0 <= data$T0321700 & data$T0321700 <= 39.0] <- 27.0
data$T0321700[40.0 <= data$T0321700 & data$T0321700 <= 48.0] <- 40.0
data$T0321700[49.0 <= data$T0321700 & data$T0321700 <= 51.0] <- 49.0
data$T0321700[53.0 <= data$T0321700 & data$T0321700 <= 9.9999999E7] <- 53.0
data$T0321700 <- factor(data$T0321700,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T1471300[1.0 <= data$T1471300 & data$T1471300 <= 13.0] <- 1.0
data$T1471300[14.0 <= data$T1471300 & data$T1471300 <= 26.0] <- 14.0
data$T1471300[27.0 <= data$T1471300 & data$T1471300 <= 39.0] <- 27.0
data$T1471300[40.0 <= data$T1471300 & data$T1471300 <= 48.0] <- 40.0
data$T1471300[49.0 <= data$T1471300 & data$T1471300 <= 51.0] <- 49.0
data$T1471300[53.0 <= data$T1471300 & data$T1471300 <= 9.9999999E7] <- 53.0
data$T1471300 <- factor(data$T1471300,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T2520200[1.0 <= data$T2520200 & data$T2520200 <= 13.0] <- 1.0
data$T2520200[14.0 <= data$T2520200 & data$T2520200 <= 26.0] <- 14.0
data$T2520200[27.0 <= data$T2520200 & data$T2520200 <= 39.0] <- 27.0
data$T2520200[40.0 <= data$T2520200 & data$T2520200 <= 48.0] <- 40.0
data$T2520200[49.0 <= data$T2520200 & data$T2520200 <= 51.0] <- 49.0
data$T2520200[53.0 <= data$T2520200 & data$T2520200 <= 9.9999999E7] <- 53.0
data$T2520200 <- factor(data$T2520200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T3506500[1.0 <= data$T3506500 & data$T3506500 <= 13.0] <- 1.0
data$T3506500[14.0 <= data$T3506500 & data$T3506500 <= 26.0] <- 14.0
data$T3506500[27.0 <= data$T3506500 & data$T3506500 <= 39.0] <- 27.0
data$T3506500[40.0 <= data$T3506500 & data$T3506500 <= 48.0] <- 40.0
data$T3506500[49.0 <= data$T3506500 & data$T3506500 <= 51.0] <- 49.0
data$T3506500[53.0 <= data$T3506500 & data$T3506500 <= 9.9999999E7] <- 53.0
data$T3506500 <- factor(data$T3506500,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T4478200[1.0 <= data$T4478200 & data$T4478200 <= 13.0] <- 1.0
data$T4478200[14.0 <= data$T4478200 & data$T4478200 <= 26.0] <- 14.0
data$T4478200[27.0 <= data$T4478200 & data$T4478200 <= 39.0] <- 27.0
data$T4478200[40.0 <= data$T4478200 & data$T4478200 <= 48.0] <- 40.0
data$T4478200[49.0 <= data$T4478200 & data$T4478200 <= 51.0] <- 49.0
data$T4478200[53.0 <= data$T4478200 & data$T4478200 <= 9.9999999E7] <- 53.0
data$T4478200 <- factor(data$T4478200,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T5424100[1.0 <= data$T5424100 & data$T5424100 <= 13.0] <- 1.0
data$T5424100[14.0 <= data$T5424100 & data$T5424100 <= 26.0] <- 14.0
data$T5424100[27.0 <= data$T5424100 & data$T5424100 <= 39.0] <- 27.0
data$T5424100[40.0 <= data$T5424100 & data$T5424100 <= 48.0] <- 40.0
data$T5424100[49.0 <= data$T5424100 & data$T5424100 <= 51.0] <- 49.0
data$T5424100[53.0 <= data$T5424100 & data$T5424100 <= 9.9999999E7] <- 53.0
data$T5424100 <- factor(data$T5424100,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T7979900[1.0 <= data$T7979900 & data$T7979900 <= 13.0] <- 1.0
data$T7979900[14.0 <= data$T7979900 & data$T7979900 <= 26.0] <- 14.0
data$T7979900[27.0 <= data$T7979900 & data$T7979900 <= 39.0] <- 27.0
data$T7979900[40.0 <= data$T7979900 & data$T7979900 <= 48.0] <- 40.0
data$T7979900[49.0 <= data$T7979900 & data$T7979900 <= 51.0] <- 49.0
data$T7979900[53.0 <= data$T7979900 & data$T7979900 <= 9.9999999E7] <- 53.0
data$T7979900 <- factor(data$T7979900,
levels=c(0.0,1.0,14.0,27.0,40.0,49.0,52.0,53.0),
labels=c("0",
"1 TO 13",
"14 TO 26",
"27 TO 39",
"40 TO 48",
"49 TO 51",
"52",
"53 TO 99999999: > 52"))
data$T8584600[1.0 <= data$T8584600 & data$T8584600 <= 13.0] <- 1.0
data$T8584600[14.0 <= data$T8584600 & data$T8584600 <= 26.0] <- 14.0
data$T8584600[27.0 <= data$T8584600 & data$T8584600 <= 39.0] <- 27.0
data$T8584600[40.0 <= data$T8584600 & data$T8584600 <= 48.0] <- 40.0
data$T8584600[49.0 <= data$T8584600 & data$T8584600 <= 51.0] <- 49.0
data$T8584600[53.0 <= data$T8584600 & data$T8584600 <= 9.9999999E7] <- 53.0
data$T8584600 <- factor(data$T8584600,
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
"INT REM INT DATE - MONTH 79",
"SAMPLE ID  79 INT",
"RACL/ETHNIC COHORT /SCRNR 79",
"SEX OF R 79",
"REGION OF CURRENT RESIDENCE 79",
"# WEEKS WRKD BY SP 79 80",
"INT REM INT DATE - MONTH 80",
"REGION OF CURRENT RESIDENCE 80",
"# WEEKS WRKD BY SP 80 81",
"INT REM INT DATE - MONTH 81",
"REGION OF CURRENT RESIDENCE 81",
"# WEEKS WRKD BY SP 81 82",
"INT REM INT DATE - MONTH 82",
"REGION OF CURRENT RESIDENCE 82",
"# WEEKS WRKD BY SP 82 83",
"INT REM INT DATE - MONTH 83",
"REGION OF CURRENT RESIDENCE 83",
"# WEEKS WRKD BY SP 83 84",
"INT REM INT DATE - MONTH 84",
"REGION OF CURRENT RESIDENCE 84",
"# WEEKS WRKD BY SP 84 85",
"INT REM INT DATE - MONTH 85",
"REGION OF CURRENT RESIDENCE 85",
"# WEEKS WRKD BY SP 85 86",
"INT REM INT DATE - MONTH 86",
"REGION OF CURRENT RESIDENCE 86",
"# WEEKS WRKD BY SP 86 87",
"INT REM INT DATE - MONTH 87",
"REGION OF CURRENT RESIDENCE 87",
"# WEEKS WRKD BY SP 87 88",
"INT REM INT DATE - MONTH 88",
"REGION OF CURRENT RESIDENCE 88",
"# WEEKS WRKD BY SP 88 89",
"INT REM INT DATE - MONTH 89",
"REGION OF CURRENT RESIDENCE 89",
"# WEEKS WRKD BY SP 89 90",
"INT REM INT DATE - MONTH 90",
"REGION OF CURRENT RESIDENCE 90",
"# WEEKS WRKD BY SP 90 91",
"INT REM INT DATE - MONTH 91",
"REGION OF CURRENT RESIDENCE 91",
"# WEEKS WRKD BY SP 91 92",
"INT REM INT DATE - MONTH 92",
"REGION OF CURRENT RESIDENCE 92",
"DATE OF INTERVIEW 93:MO",
"NUMBER OF WEEKS WORKED BY SP IN 1993",
"REGION OF RESIDENCE 93",
"DATE OF INTERVIEW 94",
"NUM OF WKS WRKD SP-PAR 1993 94",
"REGION OF RESIDENCE 94",
"REGION OF RESIDENCE 96",
"DATE OF INTERVIEW 96",
"# WKS WRKD SP-PAR 1995 96",
"NUM OF WKS WRKD SP-PAR 1997 1998",
"DATE OF INTERVIEW - MONTH 1998",
"REGION OF RESIDENCE 1998",
"NUM OF WKS WRKD SP-PAR 1999 2000",
"DATE OF INTERVIEW - MONTH 2000",
"REGION OF RESIDENCE 2000",
"NUM OF WKS WRKD SP-PAR 2001 2002",
"DATE OF INTERVIEW - MONTH 2002",
"REGION OF RESIDENCE 2002",
"DATE OF INTERVIEW - MONTH 2004",
"NUM OF WKS WRKD SP-PAR 2003 2004",
"REGION OF RESIDENCE 2004",
"DATE OF INTERVIEW - MONTH 2006",
"NUM OF WKS WRKD SP-PAR 2005 2006",
"REGION OF RESIDENCE 2006",
"DATE OF INTERVIEW - MONTH 2008",
"NUM OF WKS WRKD SP-PAR 2007 2008",
"REGION OF RESIDENCE 2008",
"DATE OF INTERVIEW - MONTH 2010",
"NUM OF WKS WRKD SP-PAR 2009 2010",
"REGION OF RESIDENCE 2010",
"DATE OF INTERVIEW - MONTH 2012",
"NUM OF WKS WRKD SP-PAR 2011 2012",
"REGION OF RESIDENCE 2012",
"DATE OF INTERVIEW - MONTH 2014",
"NUM OF WKS WRKD SP-PAR PCY 2014",
"REGION OF RESIDENCE 2014",
"DATE OF INTERVIEW - MONTH 2016",
"NUM OF WKS WRKD SP-PAR PCY 2016",
"REGION OF RESIDENCE 2016",
"DATE OF INTERVIEW - MONTH 2018",
"NUM OF WKS WRKD SP-PAR PCY 2018",
"REGION OF RESIDENCE 2018",
"DATE OF INTERVIEW - MONTH 2020",
"NUM OF WKS WRKD SP-PAR PCY 2020",
"REGION OF RESIDENCE 2020"
)


# Use qnames rather than rnums

qnames = function(data) {
names(data) <- c("CASEID_1979",
"CURDATE~M_1979",
"SAMPLE_ID_1979",
"SAMPLE_RACE_78SCRN",
"SAMPLE_SEX_1979",
"REGION_1979",
"Q2-15A_1980",
"CURDATE~M_1980",
"REGION_1980",
"Q2-15A_1981",
"CURDATE~M_1981",
"REGION_1981",
"Q2-15A_1982",
"CURDATE~M_1982",
"REGION_1982",
"Q2-15A_1983",
"CURDATE~M_1983",
"REGION_1983",
"Q2-15A_1984",
"CURDATE~M_1984",
"REGION_1984",
"Q2-15A_1985",
"CURDATE~M_1985",
"REGION_1985",
"Q2-15A_1986",
"CURDATE~M_1986",
"REGION_1986",
"Q2-15A_1987",
"CURDATE~M_1987",
"REGION_1987",
"Q2-15A_1988",
"CURDATE~M_1988",
"REGION_1988",
"Q2-15A_1989",
"CURDATE~M_1989",
"REGION_1989",
"Q2-15A_1990",
"CURDATE~M_1990",
"REGION_1990",
"Q2-15A_1991",
"CURDATE~M_1991",
"REGION_1991",
"Q2-15A_1992",
"CURDATE~M_1992",
"REGION_1992",
"CURDATE~M_1993",
"Q2-15A_1993",
"REGION_1993",
"CURDATE~M_1994",
"Q2-15A_1994",
"REGION_1994",
"REGION_1996",
"CURDATE~M_1996",
"Q2-15A_1996",
"Q2-15A_1998",
"CURDATE~M_1998",
"REGION_1998",
"Q2-15A_2000",
"CURDATE~M_2000",
"REGION_2000",
"Q2-15A_2002",
"CURDATE~M_2002",
"REGION_2002",
"CURDATE~M_2004",
"Q2-15A_2004",
"REGION_2004",
"CURDATE~M_2006",
"Q2-15A_2006",
"REGION_2006",
"CURDATE~M_2008",
"Q2-15A_2008",
"REGION_2008",
"CURDATE~M_2010",
"Q2-15A_2010",
"REGION_2010",
"CURDATE~M_2012",
"Q2-15A_2012",
"REGION_2012",
"CURDATE~M_2014",
"Q2-15A_2014",
"REGION_2014",
"CURDATE~M_2016",
"Q2-15A_2016",
"REGION_2016",
"CURDATE~M_2018",
"Q2-15A_2018",
"REGION_2018",
"CURDATE~M_2020",
"Q2-15A_2020",
"REGION_2020")
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

