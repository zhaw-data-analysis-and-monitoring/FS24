# these temperature are in Kelvin:
temperature <- c("310","322","348")

temperature


subtract <- function(x,y){x-y} # helperfunction to subtract y from x

output <- mean(subtract(as.integer(temperature), 273.15))
#                             \_1_/
#                       \_______2_____________/
#              \________________3______________________/
#         \_____________________4_______________________/

# 1. Take temperature
# 2. Convert "character" → "integer"
# 4. Subtract 273.15
# 5. Calculate the mean

tmp <- as.integer(temperature)   # 2
tmp <- subtract(tmp, 273.15)     # 3
output <- mean(tmp)              # 4
output

temperature |>        # 1
  as.integer() |>     # 2
  subtract(273.15) |> # 3
  mean()              # 4

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
