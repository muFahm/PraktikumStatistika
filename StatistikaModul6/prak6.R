iris = read.delim("clipboard")
View(iris)
summary(iris)
head(iris)
by(iris$petal_length, iris$species, summary)
mean(iris$sepal_length)
var(iris$sepal_length)
boxplot(iris$petal_length)
boxplot(petal_length ~ species, data=iris, main="Petal Length", xlab="Species", ylab="Length")
hist(iris$petal_length)
hist(iris$sepal_width)
hist(iris$sepal_width[iris$species=="setosa"])
hist(iris$sepal_width[iris$species=="versicolor"])
d=density(iris$petal_length)
plot(d)
d=density(iris$sepal_width[iris$species=="versicolor"])
plot (d)

directmarketing_fahmi = read.delim("clipboard")
View(directmarketing_fahmi)
qplot(directmarketing_fahmi$AmountSpent, directmarketing_fahmi$Salary)
plot(directmarketing_fahmi$AmountSpent, directmarketing_fahmi$Salary)


hist(directmarketing_fahmi$AmountSpent)
hist(directmarketing_fahmi$AmountSpent[directmarketing_fahmi$Age=="Old"])
hist(directmarketing_fahmi$AmountSpent[directmarketing_fahmi$Age=="Middle"])
hist(directmarketing_fahmi$AmountSpent[directmarketing_fahmi$Age=="Young"])
dm_density = density(directmarketing_fahmi$AmountSpent)
plot(dm_density)

houseprice_fahmi = read.delim("clipboard")
View(houseprice_fahmi)
qplot(houseprice_fahmi$SqFt, houseprice_fahmi$Price)
qplot(houseprice_fahmi$Bedrooms, houseprice_fahmi$Price)
qplot(houseprice_fahmi$Offers, houseprice_fahmi$Price)