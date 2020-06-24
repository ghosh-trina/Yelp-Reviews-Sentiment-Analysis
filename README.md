# Yelp-Reviews-Sentiment-Analysis

The objective of the project was to perform sentiment analysis and classify reviews as positive or negative based on the Document-Term Matrix of the reviews.

The Document-Term Matrix (DTM) from a Yelp Reviews Dataset. This was done using R, all stop words/punctuations/conjugations were removed.

Then, the 3 algorithms - Random Forest Classifier, Support Vector Machines and Artificial Neural Networks were used. 

The Random Forest gives us the highest accuracy, around 78%. ANN gives us a slightly lower accuracy of 75%. All the 3 algorithms have approximately the same accuracy around 75%.
Here, no overfitting occurs as the accuracy is not perfect, rather is at an optimal amount of 75% , which allows maximum number of correct prediction with some room for misclassification.
ANN gives us maximum AUC for the ROC curve at 0.877.
Out of the 3 models, ANN runs the slowest because of its large computation power. Random forest is a type of ensemble learning so it runs relatively slower.

Sentiment analysis is hard due to things such as subjectivity, tone, lack of context, irony, and sarcasm. 
So, it’s not only hard for algorithms to do sentiment analysis but also for humans. 
Therefore any accuracy within the range of 60 to 80% is considered good.

