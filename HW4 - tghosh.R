setwd("/Users/trinaghosh/Desktop/Trina/IST 707/HW 4/")
yelp <- read.csv("HW4_yelp_sentiment.csv", stringsAsFactors = FALSE)

library(tm)
library(SnowballC)

corpus <- (VectorSource(yelp$reviews))
corpus <- Corpus(corpus)
summary(corpus)
TDM <- TermDocumentMatrix(corpus)
inspect(TDM)

corpus2 <- tm_map(corpus, stemDocument)
TDM2 <- TermDocumentMatrix(corpus2) 
inspect(TDM2)

corpus3 <- tm_map(corpus2, content_transformer(removePunctuation))
corpus4 <- tm_map(corpus3, content_transformer(removeWords), 
                 stopwords("english"))
corpus5 <- tm_map(corpus4, content_transformer(tolower))
corpus6 <- tm_map(corpus5, content_transformer(removeWords), 
                 stopwords("english"))

for (i in 1:6) print (corpus6[[i]]$content)

corpus7 <- tm_map(corpus6, stemDocument)
for (i in 1:6) print (corpus7[[i]]$content)

corpus8 <- tm_map(corpus7, stripWhitespace) 
for (i in 1:6) print (corpus8[[i]]$content)

corpus9 <- tm_map(corpus8, content_transformer(removeNumbers))
for (i in 1:6) print (corpus9[[i]]$content)

corpus9
matrix_corpus <- as.matrix(corpus9)

TDM <- TermDocumentMatrix(corpus9)
inspect(TDM)


dtm = t(TDM)
inspect(dtm)

dtm2 <- as.matrix(dtm)

doc_term_matrix <- as.data.frame(dtm2)

doc_term_matrix <- doc_term_matrix[,-1593]
doc_term_matrix$Sentiment <- yelp$sentiment

write.csv(doc_term_matrix, file = "doc_term_matrix.csv")
