# json

install.packages('jsonlite')
library(jsonlite)


json1 <- '[
  {"Name" : "Laura", "Height" : 168, "sex" : "f", "age" : 32}, 
  {"Name" : "Simon", "Height" : 180, "sex" : "m", "age" : 35},
  {"Name" : "Kate", "Height" : 165, "sex" : "f", "age" : 54},
  {"Name" : "Francis", "Height" : 169, "sex" : "m", "age" : 57},
  {"Name" : "Joseph", "Height" : 178, "sex" : "m", "age" : 39},
  {"Name" : "Rosie", "Height" : 164, "sex" : "f", "age" : 42},
  {"Name" : "Matt", "Height" : 182, "sex" : "m", "age" : 33},
  {"Name" : "Eleanor", "Height" : 170, "sex" : "f", "age" : 16},
  {"Name" : "Angie", "Height" : 163, "sex" : "f", "age" : 29},
  {"Name" : "Hamed", "Height" : 164, "sex" : "m", "age" : 27}
]'


df <- fromJSON(json1)
df
