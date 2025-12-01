setwd("V:/MPC-PRG/exercise_11")
load("HMM1.Rdata")
#library(Biostrings)

HMarkModel <- function(seq,N,M,A,B,pi){
  num_of_sets <-length(HMM1[["N"]])
  num_of_char <- length(HMM1[["M"]])
  
  prob_mat <- matrix(0,num_of_sets, num_of_char) # mat init
  

  for (i in 1:num_of_sets){ #first column from start
    idx <- which(HMM1[["M"]] == as.character(seq[1]))

    current_prob <- HMM1[["B"]][i,idx]

    current_pi <- HMM1[["pi"]][i]

    
    prob_mat[i,1] <- current_prob * current_pi
      
  }

  for (j in 2:length(seq)){
    for (k in 1:num_of_sets){
      
      idx <- which(HMM1[["M"]] == as.character(seq[j]))
      
      current_prob <- HMM1[["B"]][k,idx]
      for (n in 1:num_of_sets){
        
      }
      prob_mat[k,j] <- current_prob * max(prob_mat[k,j-1] * HMM1[["A"]][i,i+1], )
    }
  }
    
}
   
  
  
  
  


seq <- DNAString("ACTGTCT")
HMarkModel(seq,HMM1["N"],HMM1["M"],HMM1["A"],HMM1["B"],HMM1["pi"])

