#Creating a dataframe
health_df = data.frame("Freq" = c(0.6, 0.3, 0.4,0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2),
                       "bloodp" = c(103, 87, 32, 42, 59, 109,78, 205, 135, 176),
                       "first" = c (1,1,1,1,0,0,0,0,"NULL",1),
                       "second" = c(0,0,0,0, 0,0,1,1,1,1),
                       "finaldecision" = c(0,1,0,1,0,1,0,1,1,1))
                     

#Box plot codes
par(mfrow=c(1,2))  
boxplot(health_df$Freq,
        main="Boxplot of Frequency column",
        ylab=" Frequency values",
        col="orange",
        border="brown")  
boxplot(health_df$bloodp,
        main="Boxplot of blood pressure column",
        ylab=" blood pressure values",
        col="orange",
        border="brown") 


#The mean frequency is 0.4 and the maximum value of frequency column is 0.9 and minimum is 0.2
#75% of the patients have frequency range of 0.3 to 0.6

#The maximum  Blood pressure is 205
#and minimum blood pressure is 32. The average BP of these patients is 102. 75% of the patients had BP
#betwween 63 and 128

par(mfrow=c(1,2))  
hist(health_df$Freq,   main="Frequency Histogram", xlab="frequency")
hist(health_df$bloodp,   main="Blood pressure Histogram",xlab="B.P")

#From the plot we can say that the most frequency value is 0.2 and there is only 1 patient whose 
#frequency is 0.9
#Also the nost frequent blood pressure value lies between 50-150 where there are six patients


par(mfrow=c(1,3))
barplot(table(health_df$first),main="first frequency")
barplot(table(health_df$second),main="second freq")
barplot(table(health_df$finaldecision),main="final decision")

#There are 5 patients whose first frequency is bad
#There are 6 petients whose second frequency is low
#Finally there are 6 patients whose final decision is high

