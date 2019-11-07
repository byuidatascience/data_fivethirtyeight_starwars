# fivethirtyeight_starwars
Formatted data from the [fivethirtyeight Star Wars article](https://fivethirtyeight.com/features/americas-favorite-star-wars-movies-and-least-favorite-characters/). There data is available under creative commons - https://github.com/fivethirtyeight/data.

## Data details

This data only contains subjects that said yes to seeing at least one of the movies. There are three `.csv` files that I created from the files provided by fivethirtyeight.

1. **survey_oneresponse_questions.csv:** The columns that have survey questions with one response.
2. **survey_multiresponse_questions.csv:** A long format table of the multiple response questions.
3. **survey_wide_all.csv:** Data in the same format as the fivethirtyeight data with cleaned column names.

### Survey wide

| respondentid|age   |gender |income              |education                        |location_census    |seen_any6 |fan_yn |fan_expanded |fan_startrek |shot_first                       |
|------------:|:-----|:------|:-------------------|:--------------------------------|:------------------|:---------|:------|:------------|:------------|:--------------------------------|
|   3292879998|18-29 |Male   |NA                  |High school degree               |South Atlantic     |Yes       |Yes    |No           |No           |I don't understand this question |
|   3292765271|18-29 |Male   |$0 - $24,999        |High school degree               |West North Central |Yes       |No     |NA           |No           |I don't understand this question |
|   3292763116|18-29 |Male   |$100,000 - $149,999 |Some college or Associate degree |West North Central |Yes       |Yes    |NA           |Yes          |I don't understand this question |
|   3292731220|18-29 |Male   |$100,000 - $149,999 |Some college or Associate degree |West North Central |Yes       |Yes    |No           |No           |Greedo                           |
|   3292719380|18-29 |Male   |$25,000 - $49,999   |Bachelor degree                  |Middle Atlantic    |Yes       |Yes    |No           |Yes          |Han                              |
|   3292684787|18-29 |Male   |NA                  |High school degree               |East North Central |Yes       |Yes    |No           |No           |Han                              |

### Single Response

| respondentid|age   |gender |income              |education                        |location_census    |seen_any6 |fan_yn |fan_expanded |fan_startrek |shot_first                       |
|------------:|:-----|:------|:-------------------|:--------------------------------|:------------------|:---------|:------|:------------|:------------|:--------------------------------|
|   3292879998|18-29 |Male   |NA                  |High school degree               |South Atlantic     |Yes       |Yes    |No           |No           |I don't understand this question |
|   3292765271|18-29 |Male   |$0 - $24,999        |High school degree               |West North Central |Yes       |No     |NA           |No           |I don't understand this question |
|   3292763116|18-29 |Male   |$100,000 - $149,999 |Some college or Associate degree |West North Central |Yes       |Yes    |NA           |Yes          |I don't understand this question |
|   3292731220|18-29 |Male   |$100,000 - $149,999 |Some college or Associate degree |West North Central |Yes       |Yes    |No           |No           |Greedo                           |
|   3292719380|18-29 |Male   |$25,000 - $49,999   |Bachelor degree                  |Middle Atlantic    |Yes       |Yes    |No           |Yes          |Han                              |
|   3292684787|18-29 |Male   |NA                  |High school degree               |East North Central |Yes       |Yes    |No           |No           |Han

### Multiple response

| respondentid|question          |choice                            |answer               |
|------------:|:-----------------|:---------------------------------|:--------------------|
|   3290477551|character_feeling |LandoCalrissian                   |Somewhat favorably   |
|   3290337251|character_feeling |PrincessLeiaOrgana                |Very favorably       |
|   3290206907|rank_1f6w         |StarWars:EpisodeIThePhantomMenace |6                    |
|   3289621004|character_feeling |EmperorPalpatine                  |Somewhat favorably   |
|   3288576462|character_feeling |BobaFett                          |Somewhat unfavorably |
|   3289582868|character_feeling |ObiWanKenobi                      |Very favorably       |

## Variable description

- **seen_any6:** Have you seen any of the 6 films in the Star Wars franchise? 
- **fan_yn:** Do you consider yourself to be a fan of the Star Wars film franchise?
- **which_seen:** Which of the following Star Wars films have you seen? Please select all that apply.
- **rank_1f6w:** Please rank the Star Wars films in order of preference with 1 being your favorite film in the franchise and 6 being your least favorite film.
- **character_feeling:** Please state whether you view the following characters favorably, unfavorably, or are unfamiliar with him/her.
- **shot_first:** Which character shot first?
- **familiar_expanded:** Are you familiar with the Expanded Universe?
- **fan_expanded:** Do you consider yourself to be a fan of the Expanded Universe?
- **fan_startrek:** Do you consider yourself to be a fan of the Star Trek franchise?
- **gender:** Gender
- **age:** Age
- **income:** Household Income
- **education:** Education
- **location_census:** Location (Census Region)

