#Problem 2

setwd("C:/Users/Nolan Downey/Desktop/JuniorSem1/BioComp/Ex08")

scores <- read.csv("UWvMSU_1-22-13.txt", sep = "\t", header = TRUE)

#Need to separate the scores by team
wscore = scores[scores$team == "UW",]
mscore = scores[scores$team == "MSU",]

#Sum the total scores over time
wtotal <- numeric(length = nrow(wscore))

for (j in 1:nrow(wscore)){
  wtotal[j] = sum(wscore$score[1:j])
}

mtotal <- numeric(length = nrow(mscore))

for (i in 1:nrow(mscore)){
  mtotal[i] = sum(mscore$score[1:i])
}

#Plotting the scores, scores on the y axis and time on the x axis
plot(wscore$time, wtotal, type = 'l',col ='red')
lines(mscore$time, mtotal,col='green')

