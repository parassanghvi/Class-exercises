# Class-exercises
getwd()
	setwd("D:\\MICA\\AMMA\\data_2017") 
	std_per <-read.csv(file="students.csv",head=T)
	View(std_per)
	

	#Since the original dataset is unavailable I have used a similar replacement dataset
	#Finding the average age of the class using a for loop
	sumAge <- 0
	i <- 0
	  for(i in 1:nrow(std_per))
	    {
	      sumAge <- sumAge + std_per$Age[i]
	  }
	avgAge <- sumAge/nrow(std_per)
	print("The average Age of class is: ")
	print(avgAge)

