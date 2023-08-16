df_fahmi=read.delim("clipboard")
head(df_fahmi)
model_reg=lm(df_fahmi$Y~df_fahmi$X)
summary(model_reg)

df_fahmi=read.delim("clipboard")
df_fahmi$brick_dummy <- ifelse(df_fahmi$Brick =="Yes" , 1,0)
df_fahmi$N_dummy1 <-   ifelse(df_fahmi$Neighborhood =="West", 1,0)
df_fahmi$N_dummy2 <-  ifelse(df_fahmi$Neighborhood =="North", 1,0)
model=lm(df_fahmi$Price~df_fahmi$SqFt+df_fahmi$Bedrooms+df_fahmi$Bathrooms+df_fahmi$brick_dummy+df_fahmi$N_dummy1+df_fahmi$N_dummy2)
summary(model)

by(df_fahmi$Price, df_fahmi$Neighborhood, mean)
by(df_fahmi$Price, df_fahmi$Brick, mean)
