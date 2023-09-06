
# Set working directory
# setwd()


new_data <- read.table('NLSY79CYA_A.dat', sep=' ')
names(new_data) <- c('C0000100',
'C0000200',
'C0005300',
'C0005400',
'C0005700',
'C0540800',
'C0540900',
'C0541000',
'C0541100',
'C0541200',
'C0541300',
'C0541500',
'C0541600',
'C0751200',
'C0751300',
'C0751400',
'C0751500',
'C0751600',
'C0751700',
'C0751900',
'C0752000',
'C0952300',
'C0952400',
'C0952500',
'C0952600',
'C0952700',
'C0952800',
'C0953600',
'C0953700',
'C1150400',
'C1150500',
'C1150600',
'C1150700',
'C1150800',
'C1150900',
'C1151700',
'C1151800',
'C1401200',
'C1401300',
'C1401400',
'C1401500',
'C1401600',
'C1401700',
'C1402500',
'C1402600',
'C1602900',
'C1603000',
'C1603100',
'C1603200',
'C1603300',
'C1603400',
'C1603900',
'C1604200',
'C1943400',
'C1943500',
'C1943600',
'C1943700',
'C1943800',
'C1943900',
'C1944700',
'C1944800',
'C2264100',
'C2264200',
'C2264300',
'C2264400',
'C2264500',
'C2264600',
'C2265700',
'C2265800',
'C2708900',
'C2709000',
'C2709100',
'C2709200',
'C2709300',
'C2709400',
'C2710500',
'C2710600',
'C2985500',
'C2985600',
'C2985700',
'C2985800',
'C2985900',
'C2986000',
'C2987000',
'C2987100',
'C3388000',
'C3388100',
'C3388200',
'C3388300',
'C3388400',
'C3388500',
'C3389500',
'C3389600',
'C3913800',
'C3913900',
'C3914000',
'C3914100',
'C3914200',
'C3914300',
'C3915300',
'C3915400',
'C5165300',
'C5165400',
'C5165500',
'C5165600',
'C5165700',
'C5165800',
'C5166600',
'C5166700',
'C5741500',
'C5741600',
'C5741700',
'C5741800',
'C5741900',
'C5742000',
'C5743000',
'C5743100',
'C6080800',
'C6080900',
'C6081000',
'C6081100',
'C6081200',
'C6081300',
'Y2267000')


# Handle missing values

new_data[new_data == -1] = NA  # Refused
new_data[new_data == -2] = NA  # Dont know
new_data[new_data == -3] = NA  # Invalid missing
new_data[new_data == -7] = NA  # Missing


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$C0005300 <- factor(data$C0005300,
levels=c(1.0,2.0,3.0),
labels=c("HISPANIC",
"BLACK",
"NON-BLACK, NON-HISPANIC"))
  data$C0005400 <- factor(data$C0005400,
levels=c(1.0,2.0),
labels=c("MALE",
"FEMALE"))
  data$C0540800 <- factor(data$C0540800,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("TOO YOUNG",
"ONCE A MONTH OR LESS",
"A FEW TIMES A MONTH",
"ABOUT ONCE A WEEK",
"A FEW TIMES A WEEK",
"4 OR MORE TIMES A WEEK",
"EVERY DAY"))
  data$C0540900 <- factor(data$C0540900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NONE, TOO YOUNG",
"1 OR 2 BOOKS",
"3 OR 9 BOOKS",
"10 OR MORE BOOKS"))
  data$C0541000 <- factor(data$C0541000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"SEVERAL TIMES A YEAR",
"SEVERAL TIMES A MONTH",
"ONCE A WEEK",
"ABOUT 3 TIMES A WEEK",
"EVERYDAY"))
  data$C0541100 <- factor(data$C0541100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("TWICE A WEEK OR MORE",
"ONCE A WEEK",
"ONCE A MONTH",
"HARDLY EVER, GO ALONE"))
  data$C0541500 <- factor(data$C0541500,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$C0541600 <- factor(data$C0541600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("MORE THAN ONCE A DAY",
"ONCE A DAY",
"SEVERAL TIMES A WEEK",
"ONCE A WEEK",
"ONCE A MONTH OR LESS",
"NEVER"))
  data$C0751200 <- factor(data$C0751200,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("DOES NOT GO YET, TOO YOUNG",
"ABOUT ONCE A MONTH OR LESS",
"A FEW TIMES A MONTH",
"ABOUT ONCE A WEEK",
"A FEW TIMES A WEEK",
"4 OR MORE TIMES A WEEK",
"EVERY DAY"))
  data$C0751300 <- factor(data$C0751300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NONE, TOO YOUNG",
"1 OR 2 BOOKS",
"3 OR 9 BOOKS",
"10 OR MORE BOOKS"))
  data$C0751400 <- factor(data$C0751400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"SEVERAL TIMES A YEAR",
"SEVERAL TIMES A MONTH",
"ONCE A WEEK",
"ABOUT 3 TIMES A WEEK",
"EVERYDAY"))
  data$C0751500 <- factor(data$C0751500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("TWICE A WEEK OR MORE",
"ONCE A WEEK",
"ONCE A MONTH",
"HARDLY EVER, GO ALONE"))
  data$C0751900 <- factor(data$C0751900,
levels=c(0.0,1.0),
labels=c("NO",
"YES"))
  data$C0752000 <- factor(data$C0752000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("MORE THAN ONCE A DAY",
"ONCE A DAY",
"SEVERAL TIMES A WEEK",
"ONCE A WEEK",
"ONCE A MONTH OR LESS",
"NEVER"))
  data$C0952300 <- factor(data$C0952300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("DOES NOT GO YET, TOO YOUNG",
"ABOUT ONCE A MONTH OR LESS",
"A FEW TIMES A MONTH",
"ABOUT ONCE A WEEK",
"A FEW TIMES A WEEK",
"4 OR MORE TIMES A WEEK",
"EVERY DAY"))
  data$C0952400 <- factor(data$C0952400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NONE, TOO YOUNG",
"1 OR 2 BOOKS",
"3 OR 9 BOOKS",
"10 OR MORE BOOKS"))
  data$C0952500 <- factor(data$C0952500,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"SEVERAL TIMES A YEAR",
"SEVERAL TIMES A MONTH",
"ONCE A WEEK",
"ABOUT 3 TIMES A WEEK",
"EVERYDAY"))
  data$C0952600 <- factor(data$C0952600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("TWICE A WEEK OR MORE",
"ONCE A WEEK",
"ONCE A MONTH",
"HARDLY EVER, GO ALONE"))
  data$C0953600 <- factor(data$C0953600,
levels=c(0.0,1.0,2.0),
labels=c("NO",
"YES",
"NO FATHER, STEP FATHER, OR FATHER-FIGURE"))
  data$C0953700 <- factor(data$C0953700,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("MORE THAN ONCE A DAY",
"ONCE A DAY",
"SEVERAL TIMES A WEEK",
"ONCE A WEEK",
"ONCE A MONTH OR LESS",
"NEVER",
"NO FATHER, STEP FATHER, OR FATHER-FIGURE"))
  data$C1150400 <- factor(data$C1150400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("DOES NOT GO YET, TOO YOUNG",
"ABOUT ONCE A MONTH OR LESS",
"A FEW TIMES A MONTH",
"ABOUT ONCE A WEEK",
"A FEW TIMES A WEEK",
"4 OR MORE TIMES A WEEK",
"EVERY DAY"))
  data$C1150500 <- factor(data$C1150500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NONE, TOO YOUNG",
"1 OR 2 BOOKS",
"3 OR 9 BOOKS",
"10 OR MORE BOOKS"))
  data$C1150600 <- factor(data$C1150600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"SEVERAL TIMES A YEAR",
"SEVERAL TIMES A MONTH",
"ONCE A WEEK",
"ABOUT 3 TIMES A WEEK",
"EVERYDAY"))
  data$C1150700 <- factor(data$C1150700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("TWICE A WEEK OR MORE",
"ONCE A WEEK",
"ONCE A MONTH",
"HARDLY EVER, GO ALONE"))
  data$C1151700 <- factor(data$C1151700,
levels=c(0.0,1.0,2.0),
labels=c("NO",
"YES",
"NO FATHER, STEP FATHER, OR FATHER-FIGURE"))
  data$C1151800 <- factor(data$C1151800,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("ONCE A DAY OR MORE OFTEN",
"AT LEAST 4 TIMES A WEEK",
"ABOUT ONCE A WEEK",
"ABOUT ONCE A MONTH",
"A FEW TIMES A YEAR OR LESS",
"NEVER",
"NO FATHER, STEP FATHER, OR FATHER-FIGURE"))
  data$C1401200 <- factor(data$C1401200,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("DOES NOT GO YET, TOO YOUNG",
"ABOUT ONCE A MONTH OR LESS",
"A FEW TIMES A MONTH",
"ABOUT ONCE A WEEK",
"A FEW TIMES A WEEK",
"4 OR MORE TIMES A WEEK",
"EVERY DAY"))
  data$C1401300 <- factor(data$C1401300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NONE, TOO YOUNG",
"1 OR 2 BOOKS",
"3 OR 9 BOOKS",
"10 OR MORE BOOKS"))
  data$C1401400 <- factor(data$C1401400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"SEVERAL TIMES A YEAR",
"SEVERAL TIMES A MONTH",
"ONCE A WEEK",
"ABOUT 3 TIMES A WEEK",
"EVERYDAY"))
  data$C1401500 <- factor(data$C1401500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("TWICE A WEEK OR MORE",
"ONCE A WEEK",
"ONCE A MONTH",
"HARDLY EVER, GO ALONE"))
  data$C1402500 <- factor(data$C1402500,
levels=c(0.0,1.0,2.0),
labels=c("NO",
"YES",
"NO FATHER, STEP-FATHER, OR FATHER FIGURE"))
  data$C1402600 <- factor(data$C1402600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("ONCE A DAY OR MORE OFTEN",
"AT LEAST 4 TIMES A WEEK",
"ABOUT ONCE A WEEK",
"ABOUT ONCE A MONTH",
"A FEW TIMES A YEAR OR LESS",
"NEVER",
"NO FATHER, STEP FATHER, OR FATHER-FIGURE"))
  data$C1602900 <- factor(data$C1602900,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("NOT AT ALL",
"ABOUT ONCE A MONTH OR LESS",
"A FEW TIMES A MONTH",
"ABOUT ONCE A WEEK",
"A FEW TIMES A WEEK",
"4 OR MORE TIMES A WEEK",
"EVERY DAY"))
  data$C1603000 <- factor(data$C1603000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NONE",
"1 OR 2 BOOKS",
"3 TO 9 BOOKS",
"10 OR MORE BOOKS"))
  data$C1603100 <- factor(data$C1603100,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"SEVERAL TIMES A YEAR",
"SEVERAL TIMES A MONTH",
"ONCE A WEEK",
"ABOUT 3 TIMES A WEEK",
"EVERYDAY"))
  data$C1603200 <- factor(data$C1603200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("TWICE A WEEK OR MORE",
"ONCE A WEEK",
"ONCE A MONTH",
"HARDLY EVER"))
  data$C1603900 <- factor(data$C1603900,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never",
"No father, step-father, father figure"))
  data$C1604200 <- factor(data$C1604200,
levels=c(0.0,1.0,2.0),
labels=c("NO",
"YES",
"NO FATHER, STEP-FATHER, OR FATHER FIGURE"))
  data$C1943400 <- factor(data$C1943400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("NOT AT ALL",
"ABOUT ONCE A MONTH OR LESS",
"A FEW TIMES A MONTH",
"ABOUT ONCE A WEEK",
"A FEW TIMES A WEEK",
"4 OR MORE TIMES A WEEK",
"EVERY DAY"))
  data$C1943500 <- factor(data$C1943500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("NONE",
"1 OR 2 BOOKS",
"3 TO 9 BOOKS",
"10 OR MORE BOOKS"))
  data$C1943600 <- factor(data$C1943600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("NEVER",
"SEVERAL TIMES A YEAR",
"SEVERAL TIMES A MONTH",
"ONCE A WEEK",
"ABOUT 3 TIMES A WEEK",
"EVERYDAY"))
  data$C1943700 <- factor(data$C1943700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("TWICE A WEEK OR MORE",
"ONCE A WEEK",
"ONCE A MONTH",
"HARDLY EVER"))
  data$C1944700 <- factor(data$C1944700,
levels=c(0.0,1.0,2.0),
labels=c("NO",
"YES",
"NO FATHER, STEPFATHER, OR FATHER FIGURE"))
  data$C1944800 <- factor(data$C1944800,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never",
"No father, step-father, father figure"))
  data$C2264100 <- factor(data$C2264100,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C2264200 <- factor(data$C2264200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C2264300 <- factor(data$C2264300,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C2264400 <- factor(data$C2264400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$C2265700 <- factor(data$C2265700,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$C2265800 <- factor(data$C2265800,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never"))
  data$C2708900 <- factor(data$C2708900,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C2709000 <- factor(data$C2709000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C2709100 <- factor(data$C2709100,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C2709200 <- factor(data$C2709200,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$C2710500 <- factor(data$C2710500,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$C2710600 <- factor(data$C2710600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never"))
  data$C2985500 <- factor(data$C2985500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C2985600 <- factor(data$C2985600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C2985700 <- factor(data$C2985700,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C2985800 <- factor(data$C2985800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$C2987000 <- factor(data$C2987000,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$C2987100 <- factor(data$C2987100,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never"))
  data$C3388000 <- factor(data$C3388000,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C3388100 <- factor(data$C3388100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C3388200 <- factor(data$C3388200,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C3388300 <- factor(data$C3388300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$C3389500 <- factor(data$C3389500,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$C3389600 <- factor(data$C3389600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never"))
  data$C3913800 <- factor(data$C3913800,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C3913900 <- factor(data$C3913900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C3914000 <- factor(data$C3914000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C3914100 <- factor(data$C3914100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$C3915300 <- factor(data$C3915300,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$C3915400 <- factor(data$C3915400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never"))
  data$C5165300 <- factor(data$C5165300,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C5165400 <- factor(data$C5165400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C5165500 <- factor(data$C5165500,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C5165600 <- factor(data$C5165600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$C5166600 <- factor(data$C5166600,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$C5166700 <- factor(data$C5166700,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never"))
  data$C5741500 <- factor(data$C5741500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C5741600 <- factor(data$C5741600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C5741700 <- factor(data$C5741700,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C5741800 <- factor(data$C5741800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$C5743000 <- factor(data$C5743000,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$C5743100 <- factor(data$C5743100,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("More than once a day",
"Once a day",
"Several times a week",
"About once a week",
"About once a month",
"Never"))
  data$C6080800 <- factor(data$C6080800,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("A few times a month or less",
"About once a week",
"A few times a week",
"4 or more times a week",
"Every day"))
  data$C6080900 <- factor(data$C6080900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("None",
"1 or 2 books",
"3 to 9 books",
"10 or more books"))
  data$C6081000 <- factor(data$C6081000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Never",
"Several times a year",
"Several times a month",
"Once a week",
"About 3 times a week",
"Everyday"))
  data$C6081100 <- factor(data$C6081100,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Twice a week or more",
"Once a week",
"Once a month",
"Hardly ever"))
  data$Y2267000 <- factor(data$Y2267000,
levels=c(532.0),
labels=c("532"))
return(data)
}


# If there are values not categorized they will be represented as NA

vallabels_continuous = function(data) {
data$C0000100[1.0 <= data$C0000100 & data$C0000100 <= 9999999.0] <- 1.0
data$C0000100 <- factor(data$C0000100,
levels=c(1.0),
labels=c("1 TO 9999999: See Min & Max values below for range as of this release"))
data$C0000200[1.0 <= data$C0000200 & data$C0000200 <= 12686.0] <- 1.0
data$C0000200 <- factor(data$C0000200,
levels=c(1.0),
labels=c("1 TO 12686: NLSY79 Public ID"))
data$C0005700[1970.0 <= data$C0005700 & data$C0005700 <= 1978.0] <- 1970.0
data$C0005700 <- factor(data$C0005700,
levels=c(1970.0,1979.0,1980.0,1981.0,1982.0,1983.0,1984.0,1985.0,1986.0,1987.0,1988.0,1989.0,1990.0,1991.0,1992.0,1993.0,1994.0,1995.0,1996.0,1997.0,1998.0,1999.0,2000.0,2001.0,2002.0,2003.0,2004.0,2005.0,2006.0,2007.0,2008.0,2009.0,2010.0,2011.0,2012.0,2013.0,2014.0,2015.0,2016.0,2017.0,2018.0,2019.0,2020.0,2021.0),
labels=c("1970 TO 1978: < before 1979",
"1979",
"1980",
"1981",
"1982",
"1983",
"1984",
"1985",
"1986",
"1987",
"1988",
"1989",
"1990",
"1991",
"1992",
"1993",
"1994",
"1995",
"1996",
"1997",
"1998",
"1999",
"2000",
"2001",
"2002",
"2003",
"2004",
"2005",
"2006",
"2007",
"2008",
"2009",
"2010",
"2011",
"2012",
"2013",
"2014",
"2015",
"2016",
"2017",
"2018",
"2019",
"2020",
"2021"))
data$C0541200[1.0 <= data$C0541200 & data$C0541200 <= 4.0] <- 1.0
data$C0541200[5.0 <= data$C0541200 & data$C0541200 <= 9.0] <- 5.0
data$C0541200[10.0 <= data$C0541200 & data$C0541200 <= 14.0] <- 10.0
data$C0541200[15.0 <= data$C0541200 & data$C0541200 <= 19.0] <- 15.0
data$C0541200[20.0 <= data$C0541200 & data$C0541200 <= 24.0] <- 20.0
data$C0541200[25.0 <= data$C0541200 & data$C0541200 <= 29.0] <- 25.0
data$C0541200[30.0 <= data$C0541200 & data$C0541200 <= 34.0] <- 30.0
data$C0541200[35.0 <= data$C0541200 & data$C0541200 <= 39.0] <- 35.0
data$C0541200[40.0 <= data$C0541200 & data$C0541200 <= 44.0] <- 40.0
data$C0541200[45.0 <= data$C0541200 & data$C0541200 <= 49.0] <- 45.0
data$C0541200[50.0 <= data$C0541200 & data$C0541200 <= 9999999.0] <- 50.0
data$C0541200 <- factor(data$C0541200,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999999: 50+"))
data$C0541300[16.0 <= data$C0541300 & data$C0541300 <= 99999.0] <- 16.0
data$C0541300 <- factor(data$C0541300,
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
data$C0751600[17.0 <= data$C0751600 & data$C0751600 <= 99999.0] <- 17.0
data$C0751600 <- factor(data$C0751600,
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
data$C0751700[17.0 <= data$C0751700 & data$C0751700 <= 99999.0] <- 17.0
data$C0751700 <- factor(data$C0751700,
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
data$C0952700[17.0 <= data$C0952700 & data$C0952700 <= 99999.0] <- 17.0
data$C0952700 <- factor(data$C0952700,
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
data$C0952800[17.0 <= data$C0952800 & data$C0952800 <= 99999.0] <- 17.0
data$C0952800 <- factor(data$C0952800,
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
data$C1150800[17.0 <= data$C1150800 & data$C1150800 <= 99999.0] <- 17.0
data$C1150800 <- factor(data$C1150800,
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
data$C1150900[17.0 <= data$C1150900 & data$C1150900 <= 99999.0] <- 17.0
data$C1150900 <- factor(data$C1150900,
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
data$C1401600[16.0 <= data$C1401600 & data$C1401600 <= 99999.0] <- 16.0
data$C1401600 <- factor(data$C1401600,
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
data$C1401700[16.0 <= data$C1401700 & data$C1401700 <= 99999.0] <- 16.0
data$C1401700 <- factor(data$C1401700,
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
data$C1603300[1.0 <= data$C1603300 & data$C1603300 <= 4.0] <- 1.0
data$C1603300[5.0 <= data$C1603300 & data$C1603300 <= 9.0] <- 5.0
data$C1603300[10.0 <= data$C1603300 & data$C1603300 <= 14.0] <- 10.0
data$C1603300[15.0 <= data$C1603300 & data$C1603300 <= 19.0] <- 15.0
data$C1603300[20.0 <= data$C1603300 & data$C1603300 <= 24.0] <- 20.0
data$C1603300[25.0 <= data$C1603300 & data$C1603300 <= 29.0] <- 25.0
data$C1603300[30.0 <= data$C1603300 & data$C1603300 <= 34.0] <- 30.0
data$C1603300[35.0 <= data$C1603300 & data$C1603300 <= 39.0] <- 35.0
data$C1603300[40.0 <= data$C1603300 & data$C1603300 <= 44.0] <- 40.0
data$C1603300[45.0 <= data$C1603300 & data$C1603300 <= 49.0] <- 45.0
data$C1603300[50.0 <= data$C1603300 & data$C1603300 <= 9.9999999E7] <- 50.0
data$C1603300 <- factor(data$C1603300,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$C1603400[1.0 <= data$C1603400 & data$C1603400 <= 4.0] <- 1.0
data$C1603400[5.0 <= data$C1603400 & data$C1603400 <= 9.0] <- 5.0
data$C1603400[10.0 <= data$C1603400 & data$C1603400 <= 14.0] <- 10.0
data$C1603400[15.0 <= data$C1603400 & data$C1603400 <= 19.0] <- 15.0
data$C1603400[20.0 <= data$C1603400 & data$C1603400 <= 24.0] <- 20.0
data$C1603400[25.0 <= data$C1603400 & data$C1603400 <= 29.0] <- 25.0
data$C1603400[30.0 <= data$C1603400 & data$C1603400 <= 34.0] <- 30.0
data$C1603400[35.0 <= data$C1603400 & data$C1603400 <= 39.0] <- 35.0
data$C1603400[40.0 <= data$C1603400 & data$C1603400 <= 44.0] <- 40.0
data$C1603400[45.0 <= data$C1603400 & data$C1603400 <= 49.0] <- 45.0
data$C1603400[50.0 <= data$C1603400 & data$C1603400 <= 9.9999999E7] <- 50.0
data$C1603400 <- factor(data$C1603400,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 99999999: 50+"))
data$C1943800[1.0 <= data$C1943800 & data$C1943800 <= 4.0] <- 1.0
data$C1943800[5.0 <= data$C1943800 & data$C1943800 <= 9.0] <- 5.0
data$C1943800[10.0 <= data$C1943800 & data$C1943800 <= 14.0] <- 10.0
data$C1943800[15.0 <= data$C1943800 & data$C1943800 <= 19.0] <- 15.0
data$C1943800[20.0 <= data$C1943800 & data$C1943800 <= 24.0] <- 20.0
data$C1943800[25.0 <= data$C1943800 & data$C1943800 <= 29.0] <- 25.0
data$C1943800[30.0 <= data$C1943800 & data$C1943800 <= 34.0] <- 30.0
data$C1943800[35.0 <= data$C1943800 & data$C1943800 <= 39.0] <- 35.0
data$C1943800[40.0 <= data$C1943800 & data$C1943800 <= 44.0] <- 40.0
data$C1943800[45.0 <= data$C1943800 & data$C1943800 <= 49.0] <- 45.0
data$C1943800[50.0 <= data$C1943800 & data$C1943800 <= 9999.0] <- 50.0
data$C1943800 <- factor(data$C1943800,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C1943900[1.0 <= data$C1943900 & data$C1943900 <= 4.0] <- 1.0
data$C1943900[5.0 <= data$C1943900 & data$C1943900 <= 9.0] <- 5.0
data$C1943900[10.0 <= data$C1943900 & data$C1943900 <= 14.0] <- 10.0
data$C1943900[15.0 <= data$C1943900 & data$C1943900 <= 19.0] <- 15.0
data$C1943900[20.0 <= data$C1943900 & data$C1943900 <= 24.0] <- 20.0
data$C1943900[25.0 <= data$C1943900 & data$C1943900 <= 29.0] <- 25.0
data$C1943900[30.0 <= data$C1943900 & data$C1943900 <= 34.0] <- 30.0
data$C1943900[35.0 <= data$C1943900 & data$C1943900 <= 39.0] <- 35.0
data$C1943900[40.0 <= data$C1943900 & data$C1943900 <= 44.0] <- 40.0
data$C1943900[45.0 <= data$C1943900 & data$C1943900 <= 49.0] <- 45.0
data$C1943900[50.0 <= data$C1943900 & data$C1943900 <= 9999.0] <- 50.0
data$C1943900 <- factor(data$C1943900,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C2264500[1.0 <= data$C2264500 & data$C2264500 <= 4.0] <- 1.0
data$C2264500[5.0 <= data$C2264500 & data$C2264500 <= 9.0] <- 5.0
data$C2264500[10.0 <= data$C2264500 & data$C2264500 <= 14.0] <- 10.0
data$C2264500[15.0 <= data$C2264500 & data$C2264500 <= 19.0] <- 15.0
data$C2264500[20.0 <= data$C2264500 & data$C2264500 <= 24.0] <- 20.0
data$C2264500[25.0 <= data$C2264500 & data$C2264500 <= 29.0] <- 25.0
data$C2264500[30.0 <= data$C2264500 & data$C2264500 <= 34.0] <- 30.0
data$C2264500[35.0 <= data$C2264500 & data$C2264500 <= 39.0] <- 35.0
data$C2264500[40.0 <= data$C2264500 & data$C2264500 <= 44.0] <- 40.0
data$C2264500[45.0 <= data$C2264500 & data$C2264500 <= 49.0] <- 45.0
data$C2264500[50.0 <= data$C2264500 & data$C2264500 <= 9999.0] <- 50.0
data$C2264500 <- factor(data$C2264500,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C2264600[1.0 <= data$C2264600 & data$C2264600 <= 4.0] <- 1.0
data$C2264600[5.0 <= data$C2264600 & data$C2264600 <= 9.0] <- 5.0
data$C2264600[10.0 <= data$C2264600 & data$C2264600 <= 14.0] <- 10.0
data$C2264600[15.0 <= data$C2264600 & data$C2264600 <= 19.0] <- 15.0
data$C2264600[20.0 <= data$C2264600 & data$C2264600 <= 24.0] <- 20.0
data$C2264600[25.0 <= data$C2264600 & data$C2264600 <= 29.0] <- 25.0
data$C2264600[30.0 <= data$C2264600 & data$C2264600 <= 34.0] <- 30.0
data$C2264600[35.0 <= data$C2264600 & data$C2264600 <= 39.0] <- 35.0
data$C2264600[40.0 <= data$C2264600 & data$C2264600 <= 44.0] <- 40.0
data$C2264600[45.0 <= data$C2264600 & data$C2264600 <= 49.0] <- 45.0
data$C2264600[50.0 <= data$C2264600 & data$C2264600 <= 9999.0] <- 50.0
data$C2264600 <- factor(data$C2264600,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C2709300[1.0 <= data$C2709300 & data$C2709300 <= 4.0] <- 1.0
data$C2709300[5.0 <= data$C2709300 & data$C2709300 <= 9.0] <- 5.0
data$C2709300[10.0 <= data$C2709300 & data$C2709300 <= 14.0] <- 10.0
data$C2709300[15.0 <= data$C2709300 & data$C2709300 <= 19.0] <- 15.0
data$C2709300[20.0 <= data$C2709300 & data$C2709300 <= 24.0] <- 20.0
data$C2709300[25.0 <= data$C2709300 & data$C2709300 <= 29.0] <- 25.0
data$C2709300[30.0 <= data$C2709300 & data$C2709300 <= 34.0] <- 30.0
data$C2709300[35.0 <= data$C2709300 & data$C2709300 <= 39.0] <- 35.0
data$C2709300[40.0 <= data$C2709300 & data$C2709300 <= 44.0] <- 40.0
data$C2709300[45.0 <= data$C2709300 & data$C2709300 <= 49.0] <- 45.0
data$C2709300[50.0 <= data$C2709300 & data$C2709300 <= 9999.0] <- 50.0
data$C2709300 <- factor(data$C2709300,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C2709400[1.0 <= data$C2709400 & data$C2709400 <= 4.0] <- 1.0
data$C2709400[5.0 <= data$C2709400 & data$C2709400 <= 9.0] <- 5.0
data$C2709400[10.0 <= data$C2709400 & data$C2709400 <= 14.0] <- 10.0
data$C2709400[15.0 <= data$C2709400 & data$C2709400 <= 19.0] <- 15.0
data$C2709400[20.0 <= data$C2709400 & data$C2709400 <= 24.0] <- 20.0
data$C2709400[25.0 <= data$C2709400 & data$C2709400 <= 29.0] <- 25.0
data$C2709400[30.0 <= data$C2709400 & data$C2709400 <= 34.0] <- 30.0
data$C2709400[35.0 <= data$C2709400 & data$C2709400 <= 39.0] <- 35.0
data$C2709400[40.0 <= data$C2709400 & data$C2709400 <= 44.0] <- 40.0
data$C2709400[45.0 <= data$C2709400 & data$C2709400 <= 49.0] <- 45.0
data$C2709400[50.0 <= data$C2709400 & data$C2709400 <= 9999.0] <- 50.0
data$C2709400 <- factor(data$C2709400,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C2985900[1.0 <= data$C2985900 & data$C2985900 <= 4.0] <- 1.0
data$C2985900[5.0 <= data$C2985900 & data$C2985900 <= 9.0] <- 5.0
data$C2985900[10.0 <= data$C2985900 & data$C2985900 <= 14.0] <- 10.0
data$C2985900[15.0 <= data$C2985900 & data$C2985900 <= 19.0] <- 15.0
data$C2985900[20.0 <= data$C2985900 & data$C2985900 <= 24.0] <- 20.0
data$C2985900[25.0 <= data$C2985900 & data$C2985900 <= 29.0] <- 25.0
data$C2985900[30.0 <= data$C2985900 & data$C2985900 <= 34.0] <- 30.0
data$C2985900[35.0 <= data$C2985900 & data$C2985900 <= 39.0] <- 35.0
data$C2985900[40.0 <= data$C2985900 & data$C2985900 <= 44.0] <- 40.0
data$C2985900[45.0 <= data$C2985900 & data$C2985900 <= 49.0] <- 45.0
data$C2985900[50.0 <= data$C2985900 & data$C2985900 <= 9999.0] <- 50.0
data$C2985900 <- factor(data$C2985900,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C2986000[1.0 <= data$C2986000 & data$C2986000 <= 4.0] <- 1.0
data$C2986000[5.0 <= data$C2986000 & data$C2986000 <= 9.0] <- 5.0
data$C2986000[10.0 <= data$C2986000 & data$C2986000 <= 14.0] <- 10.0
data$C2986000[15.0 <= data$C2986000 & data$C2986000 <= 19.0] <- 15.0
data$C2986000[20.0 <= data$C2986000 & data$C2986000 <= 24.0] <- 20.0
data$C2986000[25.0 <= data$C2986000 & data$C2986000 <= 29.0] <- 25.0
data$C2986000[30.0 <= data$C2986000 & data$C2986000 <= 34.0] <- 30.0
data$C2986000[35.0 <= data$C2986000 & data$C2986000 <= 39.0] <- 35.0
data$C2986000[40.0 <= data$C2986000 & data$C2986000 <= 44.0] <- 40.0
data$C2986000[45.0 <= data$C2986000 & data$C2986000 <= 49.0] <- 45.0
data$C2986000[50.0 <= data$C2986000 & data$C2986000 <= 9999.0] <- 50.0
data$C2986000 <- factor(data$C2986000,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C3388400[1.0 <= data$C3388400 & data$C3388400 <= 4.0] <- 1.0
data$C3388400[5.0 <= data$C3388400 & data$C3388400 <= 9.0] <- 5.0
data$C3388400[10.0 <= data$C3388400 & data$C3388400 <= 14.0] <- 10.0
data$C3388400[15.0 <= data$C3388400 & data$C3388400 <= 19.0] <- 15.0
data$C3388400[20.0 <= data$C3388400 & data$C3388400 <= 24.0] <- 20.0
data$C3388400[25.0 <= data$C3388400 & data$C3388400 <= 29.0] <- 25.0
data$C3388400[30.0 <= data$C3388400 & data$C3388400 <= 34.0] <- 30.0
data$C3388400[35.0 <= data$C3388400 & data$C3388400 <= 39.0] <- 35.0
data$C3388400[40.0 <= data$C3388400 & data$C3388400 <= 44.0] <- 40.0
data$C3388400[45.0 <= data$C3388400 & data$C3388400 <= 49.0] <- 45.0
data$C3388400[50.0 <= data$C3388400 & data$C3388400 <= 9999.0] <- 50.0
data$C3388400 <- factor(data$C3388400,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C3388500[1.0 <= data$C3388500 & data$C3388500 <= 4.0] <- 1.0
data$C3388500[5.0 <= data$C3388500 & data$C3388500 <= 9.0] <- 5.0
data$C3388500[10.0 <= data$C3388500 & data$C3388500 <= 14.0] <- 10.0
data$C3388500[15.0 <= data$C3388500 & data$C3388500 <= 19.0] <- 15.0
data$C3388500[20.0 <= data$C3388500 & data$C3388500 <= 24.0] <- 20.0
data$C3388500[25.0 <= data$C3388500 & data$C3388500 <= 29.0] <- 25.0
data$C3388500[30.0 <= data$C3388500 & data$C3388500 <= 34.0] <- 30.0
data$C3388500[35.0 <= data$C3388500 & data$C3388500 <= 39.0] <- 35.0
data$C3388500[40.0 <= data$C3388500 & data$C3388500 <= 44.0] <- 40.0
data$C3388500[45.0 <= data$C3388500 & data$C3388500 <= 49.0] <- 45.0
data$C3388500[50.0 <= data$C3388500 & data$C3388500 <= 9999.0] <- 50.0
data$C3388500 <- factor(data$C3388500,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C3914200[1.0 <= data$C3914200 & data$C3914200 <= 4.0] <- 1.0
data$C3914200[5.0 <= data$C3914200 & data$C3914200 <= 9.0] <- 5.0
data$C3914200[10.0 <= data$C3914200 & data$C3914200 <= 14.0] <- 10.0
data$C3914200[15.0 <= data$C3914200 & data$C3914200 <= 19.0] <- 15.0
data$C3914200[20.0 <= data$C3914200 & data$C3914200 <= 24.0] <- 20.0
data$C3914200[25.0 <= data$C3914200 & data$C3914200 <= 29.0] <- 25.0
data$C3914200[30.0 <= data$C3914200 & data$C3914200 <= 34.0] <- 30.0
data$C3914200[35.0 <= data$C3914200 & data$C3914200 <= 39.0] <- 35.0
data$C3914200[40.0 <= data$C3914200 & data$C3914200 <= 44.0] <- 40.0
data$C3914200[45.0 <= data$C3914200 & data$C3914200 <= 49.0] <- 45.0
data$C3914200[50.0 <= data$C3914200 & data$C3914200 <= 9999.0] <- 50.0
data$C3914200 <- factor(data$C3914200,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C3914300[1.0 <= data$C3914300 & data$C3914300 <= 4.0] <- 1.0
data$C3914300[5.0 <= data$C3914300 & data$C3914300 <= 9.0] <- 5.0
data$C3914300[10.0 <= data$C3914300 & data$C3914300 <= 14.0] <- 10.0
data$C3914300[15.0 <= data$C3914300 & data$C3914300 <= 19.0] <- 15.0
data$C3914300[20.0 <= data$C3914300 & data$C3914300 <= 24.0] <- 20.0
data$C3914300[25.0 <= data$C3914300 & data$C3914300 <= 29.0] <- 25.0
data$C3914300[30.0 <= data$C3914300 & data$C3914300 <= 34.0] <- 30.0
data$C3914300[35.0 <= data$C3914300 & data$C3914300 <= 39.0] <- 35.0
data$C3914300[40.0 <= data$C3914300 & data$C3914300 <= 44.0] <- 40.0
data$C3914300[45.0 <= data$C3914300 & data$C3914300 <= 49.0] <- 45.0
data$C3914300[50.0 <= data$C3914300 & data$C3914300 <= 9999.0] <- 50.0
data$C3914300 <- factor(data$C3914300,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C5165700[1.0 <= data$C5165700 & data$C5165700 <= 4.0] <- 1.0
data$C5165700[5.0 <= data$C5165700 & data$C5165700 <= 9.0] <- 5.0
data$C5165700[10.0 <= data$C5165700 & data$C5165700 <= 14.0] <- 10.0
data$C5165700[15.0 <= data$C5165700 & data$C5165700 <= 19.0] <- 15.0
data$C5165700[20.0 <= data$C5165700 & data$C5165700 <= 24.0] <- 20.0
data$C5165700[25.0 <= data$C5165700 & data$C5165700 <= 29.0] <- 25.0
data$C5165700[30.0 <= data$C5165700 & data$C5165700 <= 34.0] <- 30.0
data$C5165700[35.0 <= data$C5165700 & data$C5165700 <= 39.0] <- 35.0
data$C5165700[40.0 <= data$C5165700 & data$C5165700 <= 44.0] <- 40.0
data$C5165700[45.0 <= data$C5165700 & data$C5165700 <= 49.0] <- 45.0
data$C5165700[50.0 <= data$C5165700 & data$C5165700 <= 9999.0] <- 50.0
data$C5165700 <- factor(data$C5165700,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C5165800[1.0 <= data$C5165800 & data$C5165800 <= 4.0] <- 1.0
data$C5165800[5.0 <= data$C5165800 & data$C5165800 <= 9.0] <- 5.0
data$C5165800[10.0 <= data$C5165800 & data$C5165800 <= 14.0] <- 10.0
data$C5165800[15.0 <= data$C5165800 & data$C5165800 <= 19.0] <- 15.0
data$C5165800[20.0 <= data$C5165800 & data$C5165800 <= 24.0] <- 20.0
data$C5165800[25.0 <= data$C5165800 & data$C5165800 <= 29.0] <- 25.0
data$C5165800[30.0 <= data$C5165800 & data$C5165800 <= 34.0] <- 30.0
data$C5165800[35.0 <= data$C5165800 & data$C5165800 <= 39.0] <- 35.0
data$C5165800[40.0 <= data$C5165800 & data$C5165800 <= 44.0] <- 40.0
data$C5165800[45.0 <= data$C5165800 & data$C5165800 <= 49.0] <- 45.0
data$C5165800[50.0 <= data$C5165800 & data$C5165800 <= 9999.0] <- 50.0
data$C5165800 <- factor(data$C5165800,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C5741900[1.0 <= data$C5741900 & data$C5741900 <= 4.0] <- 1.0
data$C5741900[5.0 <= data$C5741900 & data$C5741900 <= 9.0] <- 5.0
data$C5741900[10.0 <= data$C5741900 & data$C5741900 <= 14.0] <- 10.0
data$C5741900[15.0 <= data$C5741900 & data$C5741900 <= 19.0] <- 15.0
data$C5741900[20.0 <= data$C5741900 & data$C5741900 <= 24.0] <- 20.0
data$C5741900[25.0 <= data$C5741900 & data$C5741900 <= 29.0] <- 25.0
data$C5741900[30.0 <= data$C5741900 & data$C5741900 <= 34.0] <- 30.0
data$C5741900[35.0 <= data$C5741900 & data$C5741900 <= 39.0] <- 35.0
data$C5741900[40.0 <= data$C5741900 & data$C5741900 <= 44.0] <- 40.0
data$C5741900[45.0 <= data$C5741900 & data$C5741900 <= 49.0] <- 45.0
data$C5741900[50.0 <= data$C5741900 & data$C5741900 <= 9999.0] <- 50.0
data$C5741900 <- factor(data$C5741900,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C5742000[1.0 <= data$C5742000 & data$C5742000 <= 4.0] <- 1.0
data$C5742000[5.0 <= data$C5742000 & data$C5742000 <= 9.0] <- 5.0
data$C5742000[10.0 <= data$C5742000 & data$C5742000 <= 14.0] <- 10.0
data$C5742000[15.0 <= data$C5742000 & data$C5742000 <= 19.0] <- 15.0
data$C5742000[20.0 <= data$C5742000 & data$C5742000 <= 24.0] <- 20.0
data$C5742000[25.0 <= data$C5742000 & data$C5742000 <= 29.0] <- 25.0
data$C5742000[30.0 <= data$C5742000 & data$C5742000 <= 34.0] <- 30.0
data$C5742000[35.0 <= data$C5742000 & data$C5742000 <= 39.0] <- 35.0
data$C5742000[40.0 <= data$C5742000 & data$C5742000 <= 44.0] <- 40.0
data$C5742000[45.0 <= data$C5742000 & data$C5742000 <= 49.0] <- 45.0
data$C5742000[50.0 <= data$C5742000 & data$C5742000 <= 9999.0] <- 50.0
data$C5742000 <- factor(data$C5742000,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C6081200[1.0 <= data$C6081200 & data$C6081200 <= 4.0] <- 1.0
data$C6081200[5.0 <= data$C6081200 & data$C6081200 <= 9.0] <- 5.0
data$C6081200[10.0 <= data$C6081200 & data$C6081200 <= 14.0] <- 10.0
data$C6081200[15.0 <= data$C6081200 & data$C6081200 <= 19.0] <- 15.0
data$C6081200[20.0 <= data$C6081200 & data$C6081200 <= 24.0] <- 20.0
data$C6081200[25.0 <= data$C6081200 & data$C6081200 <= 29.0] <- 25.0
data$C6081200[30.0 <= data$C6081200 & data$C6081200 <= 34.0] <- 30.0
data$C6081200[35.0 <= data$C6081200 & data$C6081200 <= 39.0] <- 35.0
data$C6081200[40.0 <= data$C6081200 & data$C6081200 <= 44.0] <- 40.0
data$C6081200[45.0 <= data$C6081200 & data$C6081200 <= 49.0] <- 45.0
data$C6081200[50.0 <= data$C6081200 & data$C6081200 <= 9999.0] <- 50.0
data$C6081200 <- factor(data$C6081200,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
data$C6081300[1.0 <= data$C6081300 & data$C6081300 <= 4.0] <- 1.0
data$C6081300[5.0 <= data$C6081300 & data$C6081300 <= 9.0] <- 5.0
data$C6081300[10.0 <= data$C6081300 & data$C6081300 <= 14.0] <- 10.0
data$C6081300[15.0 <= data$C6081300 & data$C6081300 <= 19.0] <- 15.0
data$C6081300[20.0 <= data$C6081300 & data$C6081300 <= 24.0] <- 20.0
data$C6081300[25.0 <= data$C6081300 & data$C6081300 <= 29.0] <- 25.0
data$C6081300[30.0 <= data$C6081300 & data$C6081300 <= 34.0] <- 30.0
data$C6081300[35.0 <= data$C6081300 & data$C6081300 <= 39.0] <- 35.0
data$C6081300[40.0 <= data$C6081300 & data$C6081300 <= 44.0] <- 40.0
data$C6081300[45.0 <= data$C6081300 & data$C6081300 <= 49.0] <- 45.0
data$C6081300[50.0 <= data$C6081300 & data$C6081300 <= 9999.0] <- 50.0
data$C6081300 <- factor(data$C6081300,
levels=c(0.0,1.0,5.0,10.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0),
labels=c("0",
"1 TO 4",
"5 TO 9",
"10 TO 14",
"15 TO 19",
"20 TO 24",
"25 TO 29",
"30 TO 34",
"35 TO 39",
"40 TO 44",
"45 TO 49",
"50 TO 9999"))
return(data)
}

varlabels <- c("ID CODE OF CHILD",
"ID CODE OF MOTHER OF CHILD",
"RACE OF CHILD (FROM MOTHERS SCREENER 79)",
"SEX OF CHILD",
"DATE OF BIRTH OF CHILD - YEAR",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY",
"HOME A: HOW OFT CH GETS OUT OF HSE 1998",
"HOME A: HOW MANY BOOKS DOES CH HAVE 1998",
"HOME A: HOW OFT DOES MOM READ TO CH 1998",
"HOME A: HOW OFT MOM TAKE CH TO GROC 1998",
"HOME A: # SOFT/ROLEPLAY TOYS CH HAS 1998",
"HOME A: # PUSH/PULL TOYS CH OWNS 1998",
"HOME A: CH SEE FATHER(-FIG) DAILY 1998",
"HOME A: HOW OFT CH EATS W/MOM & DAD 1998",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2000",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2000",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2000",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2000",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2000",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2000",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2000",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2000",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2002",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2002",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2002",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2002",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2002",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2002",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2002",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2002",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2004",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2004",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2004",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2004",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2004",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2004",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2004",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2004",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2006",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2006",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2006",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2006",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2006",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2006",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2006",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2006",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2008",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2008",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2008",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2008",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2008",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2008",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2008",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2008",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2010",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2010",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2010",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2010",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2010",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2010",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2010",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2010",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2012",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2012",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2012",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2012",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2012",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2012",
"HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2012",
"HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2012",
"HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2016",
"HOME A (0-2): HOW MANY BOOKS CHILD HAS 2016",
"HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2016",
"HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2016",
"HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2016",
"HOME A (0-2): # PUSH/PULL TOYS CH HAS 2016",
"VERSION_R29 CHILD/YOUNG ADULT XRND"
)


# Use qnames rather than rnums

qnames = function(data) {
names(data) <- c("CPUBID_XRND",
"MPUBID_XRND",
"CRACE_XRND",
"CSEX_XRND",
"CYRB_XRND",
"MS860127_1986",
"MS860129_1986",
"MS860130_1986",
"MS860131_1986",
"MS860132_1986",
"MS860134_1986",
"MS860137_1986",
"MS860138_1986",
"MS880244_1988",
"MS880246_1988",
"MS880247_1988",
"MS880248_1988",
"MS880249_1988",
"MS880251_1988",
"MS880254_1988",
"MS880255_1988",
"MS900243_1990",
"MS900245_1990",
"MS900247_1990",
"MS900249_1990",
"MS900251_1990",
"MS900253_1990",
"MS900315_1990",
"MS900317_1990",
"MS920243_1992",
"MS920245_1992",
"MS920247_1992",
"MS920249_1992",
"MS920251_1992",
"MS920253_1992",
"MS920315_1992",
"MS920317_1992",
"MS940243_1994",
"MS940245_1994",
"MS940247_1994",
"MS940249_1994",
"MS940251_1994",
"MS940253_1994",
"MS940315_1994",
"MS940317_1994",
"MS960243_1996",
"MS960245_1996",
"MS960247_1996",
"MS960249_1996",
"MS960251_1996",
"MS960253_1996",
"MS960263_1996",
"MS960315_1996",
"MS981A01_1998",
"MS981A02_1998",
"MS981A03_1998",
"MS981A04_1998",
"MS981A05_1998",
"MS981A06_1998",
"MS981A14_1998",
"MS981A15_1998",
"HOME-A01_2000",
"HOME-A02_2000",
"HOME-A03_2000",
"HOME-A04_2000",
"HOME-A05_2000",
"HOME-A06_2000",
"HOME-A14_2000",
"HOME-A15_2000",
"HOME-A01_2002",
"HOME-A02_2002",
"HOME-A03_2002",
"HOME-A04_2002",
"HOME-A05_2002",
"HOME-A06_2002",
"HOME-A14_2002",
"HOME-A15_2002",
"HOME-A01_2004",
"HOME-A02_2004",
"HOME-A03_2004",
"HOME-A04_2004",
"HOME-A05_2004",
"HOME-A06_2004",
"HOME-A14_2004",
"HOME-A15_2004",
"MS-HOME-A01_2006",
"MS-HOME-A02_2006",
"MS-HOME-A03_2006",
"MS-HOME-A04_2006",
"MS-HOME-A05_2006",
"MS-HOME-A06_2006",
"MS-HOME-A14_2006",
"MS-HOME-A15_2006",
"MS-HOME-A01_2008",
"MS-HOME-A02_2008",
"MS-HOME-A03_2008",
"MS-HOME-A04_2008",
"MS-HOME-A05_2008",
"MS-HOME-A06_2008",
"MS-HOME-A14_2008",
"MS-HOME-A15_2008",
"MS-HOME-A01_2010",
"MS-HOME-A02_2010",
"MS-HOME-A03_2010",
"MS-HOME-A04_2010",
"MS-HOME-A05_2010",
"MS-HOME-A06_2010",
"MS-HOME-A14_2010",
"MS-HOME-A15_2010",
"MS-HOME-A01_2012",
"MS-HOME-A02_2012",
"MS-HOME-A03_2012",
"MS-HOME-A04_2012",
"MS-HOME-A05_2012",
"MS-HOME-A06_2012",
"MS-HOME-A14_2012",
"MS-HOME-A15_2012",
"MS-HOME-A01_2016",
"MS-HOME-A02_2016",
"MS-HOME-A03_2016",
"MS-HOME-A04_2016",
"MS-HOME-A05_2016",
"MS-HOME-A06_2016",
"VERSION_R29_XRND")
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

