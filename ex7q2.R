#A FUNCTION TO RETURN THE NUMBER OF OBSERVATIONS OF A GIVEN SPECIES IN A DATAFRAME
#Line6: creating a function "obsnumb" (observation number) with dataframe and species as input variables
#Line7: creating object "cutspecies" as the input dataframe indexed by rows containing only rows with the species matching the input species 
#Line8: returning the 1st part of the dimension vector of the "cutspecies" object which corresponds to the number of rows of "cutspecies"
obsnumb=function(dataframe,species) {  
  cutspecies<-dataframe[dataframe$Species==species, ] 
  return(dim(cutspecies)[1])  
}
# A FUNCTION TO RETURN ONLY ROWS OF DATA THAT HAVE SEPAL WIDTH VALUES GREATER THAN AN INPUT VALUE
#Line13: creating a function "sepaldf" (sepal dataframe) with dataframe and sepal width value as input variables
#Line14: returning the input dataframe indexed by rows where the value of sepal width is greater than the input variable value
sepaldf<-function(dataframe, value) {
  return(dataframe[dataframe$Sepal.Width>value, ])
} 
# A FUNCTION TO CREATE A NEW CSV FILE CONTAINING THE INFORMATION OF A SINGLE SPECIES AND NAMED AFTER THAT SPECIES WITH .CSV
#Line21: creating a function "speciesdf" (species dataframe) with input variables dataframe and species
#Line22: creating an object "newdf" (new dataframe) as the input dataframe indexed by rows containing only rows with species that match the input species
#Line23: creating an object "name" that as the input species name and ".csv" without any spaces between them
#Line24: creating a new csv file containing the data in "newdf" and named with "name" above
#Line25: returns a message "(input species name).csv has been written" to alert the user that the function has been completed
speciesdf<-function(dataframe, species) {
  newdf<-dataframe[dataframe$Species==species, ]
  name<-paste0(species,".csv")
  write.csv(newdf, file=name)
  return(paste(name,"has been written"))
}
