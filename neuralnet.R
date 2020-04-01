library("neuralnet")

traininginput <- as.data.frame(runif(50, min = 0,max = 225))
trainingoutput <- sqrt(traininginput)

trainingdata <-cbind(traininginput,trainingoutput)
colnames(trainingdata) <- c("Input","Output")
View(trainingdata)


?neuralnet

net.sqrt <- neuralnet(formula = Output~Input,
                      data = trainingdata, hidden = 10,
                      threshold = 0.01,
                      lifesign = "full",
                      lifesign.step = 10)

print(net.sqrt)


plot(net.sqrt)
