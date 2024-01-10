diary <- c(
  "The temperature is 310° Kelvin",
  "The temperature is 322° Kelvin",
  "The temperature is 410° Kelvin"
)

diary

# If the letters were individual _elements_ of a vector, we would subset them like this:

charvec1 <- c("a", "b", "c", "d", "e", "f", "g", "h")
charvec1[4:6]

# But if these are stored in a single character, we need substr:
charvec2 <- "abcdefgh"
substr(charvec2, 4, 6)

subtract <- function(minuend, subtrahend) {
  minuend - subtrahend
}

subtract(10, 4)

output <- mean(subtract(as.numeric(substr(diary, 20, 22)), 273.15))
#                                         \_1_/
#                                  \________2__________/
#                       \___________________3__________/
#              \____________________________4____________________/
#         \_________________________________5____________________/

# 1. Take diary
# 2. Extract values 20 to 22 on each line
# 3. Convert "character" to "numeric"
# 4. Subtract 273.15
# 5. Calculate the mean

temp <- substr(diary, 20, 22)  # 2
temp <- as.numeric(temp)       # 3
temp <- subtract(temp, 273.15) # 4
output <- mean(temp)           # 5

diary |>              # 1
  substr(20, 22) |>   # 2
  as.numeric() |>     # 3
  subtract(273.15) |> # 4
  mean()              # 5

students <- data.frame(
  Matriculation_No = c(100002, 100003, 200003),
  Student = c("Patrick", "Manuela", "Eva"),
  ZIP = c(8006, 8001, 8820)
)

students

localities <- data.frame(
  ZIP = c(8003, 8006, 8810, 8820),
  LocalityName = c("Zurich", "Zurich", "Horgen", "Wadenswil")
)

localities

# Load library
library("dplyr")

inner_join(students, localities, by = "ZIP")

left_join(students, localities, by = "ZIP")

right_join(students, localities, by = "ZIP")

full_join(students, localities, by = "ZIP")

students <- data.frame(
  Matriculation_No = c(100002, 100003, 200003),
  Student = c("Patrick", "Manuela", "Pascal"),
  Residence = c(8006, 8001, 8006)
)

left_join(students, localities, by = c("Residence" = "ZIP"))
