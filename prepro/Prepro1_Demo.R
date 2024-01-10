x <- 10.3

x

typeof(x)

y = 7.3
y

z <- 42
typeof(z)
is.integer(z)
is.numeric(z)
is.double(z)

a <- as.integer(z)
is.numeric(a)
is.integer(a)

c <- 8L
is.numeric(c)
is.integer(c)

typeof(a)

is.numeric(a)
is.integer(a)

e <- 3
f <- 6

e > f


sunny <- TRUE
dry <- FALSE

sunny & !dry

s <- as.character(3.14)
s
typeof(s)

fname <- "Andrea"
lname <- "Muster"
paste(fname, lname)

fname2 <- "Simon"
fname == fname2

weekdays <- c("Thursday", "Friday", "Saturday")

typeof(weekdays)

weekdays_fac <- as.factor(weekdays)

weekdays
weekdays_fac

factor(weekdays, levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"), ordered = TRUE)

date <- "2017-10-01 13:45:10"

# converts character to POSIXct:
as.POSIXct(date)

date <- "01.10.2017 13:45"

# converts character to POSIXct:
as.POSIXct(date, format = "%d.%m.%Y %H:%M")

date2 <- as.POSIXct(date, format = "%d.%m.%Y %H:%M")

strftime(date2, format = "%m") # extracts the month as a number
strftime(date2, format = "%b") # extracts the month by name (abbreviated)
strftime(date2, format = "%B") # extracts the month by name (full)

library("lubridate")

month(date2) # extracts the month as a number
month(date2, label = TRUE, abbr = TRUE) # extracts the month by name (abbreviated)
month(date2, label = TRUE, abbr = FALSE) # extracts the month by name (full)

vec <- c(10, 20, 33, 42, 54, 66, 77)
vec
vec[5]
vec[2:4]

vec2 <- vec[2:4]

mylist <- list("q", TRUE, 3.14)

mylist2 <- list(fav_letter = "q", fav_boolean = TRUE, fav_number = 3.14)

mylist2

as.data.frame(mylist2)

df <- data.frame(
  City = c("Zurich", "Geneva", "Basel", "Bern", "Lausanne"),
  Arrival = c(
    "1.1.2017 10:00", "1.1.2017 14:00",
    "1.1.2017 13:00", "1.1.2017 18:00", "1.1.2017 21:00"
  )
)

str(df)

df$City

df$Residents <- c(400000, 200000, 175000, 14000, 130000)

df$Residents <- as.integer(df$Residents)

df$Arrival <- as.POSIXct(df$Arrival, format = "%d.%m.%Y %H:%M")

df$Arrival

df$Arrival_hour <- hour(df$Arrival)

df$Arrival_hour

df$Size <- "no information"

df$Size[df$Residents > 300000] <- "large"
df$Size[df$Residents <= 300000 & df$Residents > 150000] <- "medium"
df$Size[df$Residents <= 150000] <- "small"

df$Size
