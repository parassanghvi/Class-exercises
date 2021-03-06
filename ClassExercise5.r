#Get data from http://stats.espncricinfo.com/ci/content/records/284248.html
	#Highest number of times a player has become the highest run scorer
	#Plot contribution of player country in become highest run getters
	

	

	install.packages("xml2")
	install.packages("rvest")
	library("xml2")
	library("rvest")
	link_cricket = "http://stats.espncricinfo.com/ci/content/records/284248.html"
	cricket_data=read_html(link_cricket)
	cricket_table=html_nodes(cricket_data,"table")
	cricket_table_final<-html_table(cricket_table[1],fill=TRUE)
	View(cricket_table_final)
	class(cricket_table_final)
	cricket_table.df <- as.data.frame(cricket_table_final)
	

	cricket_table.df[with(cricket_table.df, order(Runs, Player)), ]
	

	View(cricket_table.df)
	

	Top_Five_Runs <-c(cricket_table.df$Player[1], cricket_table.df$Player[2], cricket_table.df$Player[3], cricket_table.df$Player[4], cricket_table.df$Player[5])
	

	## Top Five Scorers End
	

	PAK=0
	AUS=0
	IND=0
	SL=0
	ENG=0
	WI=0
	SA=0
	

	for(i in 1:length(cricket_table.df$Player))
	{
	  if(grepl("PAK",cricket_table.df$Player[i]))
	    PAK=PAK+1
	}
	

	PAK
	

	for(i in 1:length(cricket_table.df$Player))
	{
	  if(grepl("AUS",cricket_table.df$Player[i]))
	    AUS=AUS+1
	}
	

	AUS
	for(i in 1:length(cricket_table.df$Player))
	{
	  if(grepl("INDIA",cricket_table.df$Player[i]))
	    IND=IND+1
	}
	

	IND
	for(i in 1:length(cricket_table.df$Player))
	{
	  if(grepl("SL",cricket_table.df$Player[i]))
	    SL=SL+1
	}
	

	SL
	for(i in 1:length(cricket_table.df$Player))
	{
	  if(grepl("ENG",cricket_table.df$Player[i]))
	    ENG=ENG+1
	}
	

	ENG
	for(i in 1:length(cricket_table.df$Player))
	{
	  if(grepl("WI",cricket_table.df$Player[i]))
	    WI=WI+1
	}
	

	WI
	for(i in 1:length(cricket_table.df$Player))
	{
	  if(grepl("SA",cricket_table.df$Player[i]))
	    SA=SA+1
	}
	

	SA
	

	Total_appearances = PAK + AUS + IND + WI + ENG + SA + SL
	

	PAK_prctg = 100*PAK/Total_appearances
	AUS_prctg = 100*AUS/Total_appearances
	IND_prctg = 100*IND/Total_appearances
	SL_prctg = 100*SL/Total_appearances
	WI_prctg = 100*WI/Total_appearances
	ENG_prctg = 100*ENG/Total_appearances
	SA_prctg = 100*SA/Total_appearances

