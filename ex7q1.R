# A FUNCTION TO RETURN THE ODD ROWS OF A DATAFRAME
#Line6: creating a function with a dataframe as the input variable
#Line7: making a sequence "rows" of every other number starting from 1 (odd numbers) up to the number of rows in the input dataframe
#Line8: returning the input dataframe indexed by row with the "sequence" object created above
oddrows=function(dataframe) { 
  rows<-seq(from=1,to=dim(dataframe)[1], by=2) 
  return(dataframe[rows, ]) 
}


