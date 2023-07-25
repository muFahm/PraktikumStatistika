fahmi=read.delim("clipboard")
View(fahmi)
t.test(fahmi$Volume, conf.level = 0.5)
