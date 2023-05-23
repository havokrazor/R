read.csv("flavors_of_cacao.csv") -> flavors_df
View(flavors_df)

install.packages("dplyr")
library(dplyr)

flavors_df %>% rename(Maker = CompanyÂ...Maker.if.known.) -> flavors_df1

colnames(flavors_df1)

trimmed_flavors_df <- flavors_df %>% select(Rating, Cocoa.Percent, Bean.Type)
trimmed_flavors_df
View(trimmed_flavors_df)
sd(trimmed_flavors_df, Rating)
trimmed_flavors_df %>% 
sd(trimmed_flavors_df,Rating,na.rm = TRUE)
sd(trimmed_flavors_df$Rating)
sd(flavors_df$Rating)

best_trimmed_flavors_df <- trimmed_flavors_df %>% filter(Cocoa.Percent >= 75 & Rating >= 3.9)
View(best_trimmed_flavors_df)

library(ggplot2)
ggplot(data = best_trimmed_flavors_df) + geom_bar(aes(x = Bean.Type))
ggplot(data = flavors_df1) + geom_bar(aes(x = Company.Location))
