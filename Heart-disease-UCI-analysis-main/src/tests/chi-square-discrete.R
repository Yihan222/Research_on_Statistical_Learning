generateChiSqTest<-function(){
  #reset file content if already exists
  sink(file="tests/chiSq-cp-diag.txt")
  sink()
  capture.output( chisq.test(data$cp, data$diag, correct = FALSE, simulate.p.value = FALSE), file="tests/chiSq-cp-diag.txt", append=TRUE)
}