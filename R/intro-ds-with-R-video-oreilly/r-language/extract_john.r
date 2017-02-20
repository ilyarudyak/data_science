df <- data.frame(
  name = c("John", "Paul", "George", "Ringo"),
  birth = c(1940, 1942, 1943, 1940),
  instrument = c("guitar", "bass", "guitar", "drums")
)

# extract "John" in different ways
df[1, 1]
df[1, "name"]

df[, "name"][1]
df[, "name"][-c(2:4)]
df[1, ][1, 1]
df[1, ][-c(2:4)][1, 1]

df[-c(2:4), -c(2:4)]

df[1][1,1]
df["name"][1,1]
