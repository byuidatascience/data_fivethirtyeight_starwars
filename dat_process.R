library(tidyverse)

dat <- read_csv("https://github.com/fivethirtyeight/data/raw/master/star-wars-survey/StarWars.csv", 
                skip = 2, col_names = F)

frow <- read_csv("https://github.com/fivethirtyeight/data/raw/master/star-wars-survey/StarWars.csv", 
                 col_names = F, n_max = 1) %>% gather(value = "first") %>% fill(first, .direction = "down") 

srow <- read_csv("https://github.com/fivethirtyeight/data/raw/master/star-wars-survey/StarWars.csv", 
                 col_names = F, n_max = 1, skip = 1) %>% gather(value = "second")

frow <- frow %>%
  mutate(first = first %>%
           str_replace_all("Which of the following Star Wars films have you seen\\? Please select all that apply." ,
                           "which_seen" ) %>%
           str_replace_all("Have you seen any of the 6 films in the Star Wars franchise\\?",
                           "seen_any6") %>%
           str_replace_all("Do you consider yourself to be a fan of the Star Wars film franchise\\?",
                           "fan_yn") %>%
           str_replace_all("Please rank the Star Wars films in order of preference with 1 being your favorite film in the franchise and 6 being your least favorite film.",
                           "rank_1f6w") %>%
           str_replace_all("Please state whether you view the following characters favorably, unfavorably, or are unfamiliar with him/her.",
                           "character_feeling") %>%
           str_replace_all("Which character shot first\\?",
                           "shot_first") %>%
           str_replace_all("Are you familiar with the Expanded Universe\\?",
                           "familiar_expanded") %>%
           str_replace_all("Do you consider yourself to be a fan of the Expanded Universe\\?��",
                           "fan_expanded") %>%
           str_replace_all("Do you consider yourself to be a fan of the Star Trek franchise\\?",
                           "fan_startrek") %>%
           str_replace_all("Location \\(Census Region\\)", "location_census") %>%
           str_replace_all("Household Income", "income") %>%
           str_to_lower())

cnames <- frow %>%
  left_join(srow) %>%
  mutate(second = str_replace_all(second, " ", "")) %>%
  unite(colnames, first,second, sep = "__") %>%
  pull(colnames) %>%
  str_replace_all("__NA", "") %>%
  str_replace_all("__Response", "") %>%
  str_replace_all("Star-Wars:-", "")

colnames(dat) <- cnames

dat <- dat %>%
  filter(seen_any6 == "Yes")

dat_general <- dat %>%
  select(respondentid, age, gender, income, education, location_census, 
         seen_any6, fan_yn, fan_expanded, fan_startrek, shot_first)

dat_multiresponse <- dat %>%
  select(respondentid, contains("which_seen"), contains("rank_1"), 
         contains("character_feeling")) %>%
  pivot_longer(-respondentid, names_to = "questions", values_to = "answer", 
               values_ptypes = list(answer = 'character')) %>%
  separate(questions, into = c("question", "choice"), sep = "__")

write_csv(dat_general, path = "survey_oneresponse_questions.csv")
write_csv(dat_multiresponse, path = "survey_multiresponse_questions.csv")
write_csv(dat, path = "sruvey_wide_all.csv")
