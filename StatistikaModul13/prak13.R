dataku_fahmi = read.delim('clipboard')
View(dataku_fahmi)
wilcox.test(dataku_fahmi$Sebelum,dataku_fahmi$Setelah,paired=TRUE)

dataku_fahmi = read.delim('clipboard')
View(dataku_fahmi)
wilcox.test(dataku_fahmi$Sebelum,dataku_fahmi$Sesudah,paired=TRUE)

df_fahmi=read.delim("clipboard")
# independent 2-group Mann-Whitney U Test
wilcox.test(df_fahmi$obat~df_fahmi$grup)
# where y is numeric and A is A binary factor
head(df_fahmi)
rank(df_fahmi$obat)

dataku_fahmi = read.delim('clipboard')
wilcox.test(dataku_fahmi$Ganjil,dataku_fahmi$Genap,paired=TRUE)

dataku_fahmi = read.delim('clipboard')
wilcox.test(dataku_fahmi$caffeine,dataku_fahmi$placebo,paired=TRUE)

