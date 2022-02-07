# ####################################################################
# Script to source the tweets and save the token. 
# It needs to be done outside the .Rmd otherwise the Rmd won't knit. 
######################################################################
library(tidyverse)
library(rtweet)

api_key = "XsHAUOWl8A9XFDoZrXIG1tjRi"
api_secret = "xhbxZ26y5oGw5018AY2vuaxAVi08rcYDEWhs4uJOpJZjDvQFGX"

## authentication via web browser
token <- create_token(
  app = "sentiment",
  consumer_key = api_key, 
  consumer_secret = api_secret,
  set_renv = FALSE
) 
token


## search tweets
rt <- search_tweets(
  "NZ rent controls", n = 18000, include_rts = TRUE, token = token)

## save data frame
saveRDS(rt, 'tweets.rds')