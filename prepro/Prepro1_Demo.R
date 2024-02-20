x <- 10.3

x

class(x)

y = 7.3
y

d <- 8L

class(d)

sunny <- FALSE
dry <- TRUE

sunny & dry

e <- 3
f <- 6

e > f

fname <- "Andrea"
lname <- "Muster"
class(fname)

paste(fname, lname)
paste(fname, lname, sep = ",")


# with c(), we can combine multiple character strings
# we will learn about this later
bundesrat <- c("die Mitte","FDP", "SVP", "FDP", "SVP", "SP", "SP")

class(bundesrat)

bundesrat2 <- as.factor(bundesrat)

bundesrat2

factor(bundesrat, levels = c("SP", "die Mitte", "FDP", "SVP"), ordered = TRUE)

now_txt <- as.POSIXct("2024-02-01 13:45:00")

now_pretty <- strftime(now_txt, format = "%d.%m.%Y at %H:%M")
n_secs <- as.numeric(now_txt)
n_secs_pretty <- format(n_secs,big.mark = "'")

# We may have a timestamp saved as a character string
today_txt <- "2024-02-01 13:45:00"

# as.POSIXct converts the string to POSIXct:
today_posixct <- as.POSIXct(today_txt)

# When printing a posixct date to the console, it is human readable
today_posixct

# To see the internally stored value (# of seconds), convert it to numeric:
as.numeric(today_posixct)


date_txt <- "01.10.2017 15:15"

# converts character to POSIXct:
as.POSIXct(date_txt)

date_posix <- as.POSIXct(date_txt, format = "%d.%m.%Y %H:%M")

date_posix

strftime(date_posix, format = "%m")           # <1>
strftime(date_posix, format = "%b")           # <2>
strftime(date_posix, format = "%B")           # <3>

library("lubridate")

month(date_posix)                             # <1>
month(date_posix, label = TRUE, abbr = TRUE)  # <2>
month(date_posix, label = TRUE, abbr = FALSE) # <3>

vec <- c(10, 20, 33, 42, 54, 66, 77)
vec

# to extract the 5th element
vec[5]

# to extract elements 2 to 4
vec[2:4]

mylist <- list("q", TRUE, 3.14)

mylist2 <- list(fav_letter = "q", fav_boolean = TRUE, fav_number = 3.14)

mylist2

# note how the names become column names
as.data.frame(mylist2)

df <- data.frame(
  City = c("Zurich", "Geneva", "Basel", "Bern", "Lausanne"),
  Arrival = c(
    "1.1.2017 10:10", "5.1.2017 14:45",
    "8.1.2017 13:15", "17.1.2017 18:30", "22.1.2017 21:05"
  )
)

str(df)

df$City

df$Residents <- c(400000, 200000, 175000, 14000, 130000)




# first, test the output of the "as.POSIXct"-function
as.POSIXct(df$Arrival, format = "%d.%m.%Y %H:%M")

# if it works, we can save the output to a new column
df$Arrival_ct <- as.POSIXct(df$Arrival, format = "%d.%m.%Y %H:%M")


# We *could* overwrite the old column, but this is a destructive operation!

df$Arrival_day <- wday(df$Arrival_ct, label = TRUE, week_start = 1)

df$Arrival_day
