library("ggplot2")

generateBarPlots <- function(data)
{
  
  dataPrep <- data
  dataPrep <- dataClean

   
  
   ggplot(dataPrep, aes(x=sex)) +
     geom_bar( width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Sex") + 
     labs(x="Gender", y="Number of tests")
   ggsave("images/barplot-sex.png")

  
   
   ggplot(dataPrep, aes(x=cp)) +
     geom_bar( width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Chest Pain") + 
     labs(x="Types of chest pain", y="Number of tests")
   ggsave("images/barplot-cp.png")

   

   ggplot(dataPrep, aes(x=fbs)) +
     geom_bar( width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Blood Sugar Level") + 
     labs(x="Did the sugar level exceed 120 mg/dl?", y="Number of tests")
   ggsave("images/barplot-fbs.png")

   
   
   ggplot(dataPrep, aes(x=restecg)) +
     geom_bar(width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Resting Electrocardiographic Results") + 
     labs(x="Test Result", y="Number of tests")
   ggsave("images/barplot-restecg.png")



   ggplot(dataPrep, aes(x=exang)) +
     geom_bar(width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Exercise Induced Angina Among Patients") + 
     labs(x="Exang", y="Number of tests")
   ggsave("images/barplot-exang.png")

   
   
   ggplot(dataPrep, aes(x=slope)) +
     geom_bar(width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("the Slope of the Peak Exercise ST Segment") + 
     labs(x="Slope", y="Number of tests")
   ggsave("images/barplot-slope.png")


   
   ggplot(data, aes(x=ca)) +
     geom_bar(width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Number of Major Vessels (0-3) Colored by Flourosopy") + 
     labs(x="Coloured main vessels from 0 to 3", y="Number of tests")
   ggsave("images/barplot-ca.png")

   
   
   ggplot(dataPrep, aes(x=thal)) +
     geom_bar(width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Heart muscle scan result") + 
     labs(x="Result Group", y="Number of tests")
   ggsave("images/barplot-thal.png")


   
   ggplot(data, aes(x=target)) +
     geom_bar(width=0.8, fill="steelblue") +
     theme_minimal() +
     ggtitle("Likelihood of Disease") + 
     labs(x="Diagnostic Group", y="Number of tests")
   ggsave("images/barplot-diag.png")
  

   
   
  ggplot(data, aes(age)) +
    geom_histogram(binwidth = 5,color="black", fill="steelblue") +
    ggtitle("Age") +
    labs(x="Age", y="Number of tests")
  ggsave("images/histogram-age.png")


  
  ggplot(data, aes(trestbps)) +
    geom_histogram(binwidth = 10,color="black", fill="steelblue") +
    ggtitle("Resting Blood Pressure")+
    labs(x="trestbps", y="Number of tests")
  ggsave("images/histogram-trestbps.png")
  
  
  
  ggplot(data, aes(chol)) +
    geom_histogram(binwidth = 30,color="black", fill="steelblue") +
    ggtitle("Serum Cholestoral in mg/dl")+
    labs(x="Cholesterol", y="Number of testsh")
  ggsave("images/histogram-chol.png")
  
  
    # Maximum Pulse
  ggplot(data, aes(thalach)) +
    geom_histogram(binwidth = 20,color="black", fill="steelblue") +
    ggtitle("Diagram of the number of subjects tested versus the maximum pulse detected")+
    labs(x="thalach", y="Number of tests")
  ggsave("images/histogram-thalach.png")
  
  
    #Relative reduction of ST segment during physical activity
  ggplot(data, aes(oldpeak)) +
    geom_histogram(binwidth = 0.75,color="black", fill="steelblue") +
    ggtitle("List of test subjects by ST section")+
    labs(x="Oldpeak", y="Number of tests")
  ggsave("images/histogram-oldpeak.png")
  
}
