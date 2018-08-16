---
  title: "Causality"
  description: "Using R to help establish causal statements"
---

## Creating a cross tab

```yaml
type: NormalExercise 
xp: 100 
key: 1cb8201750   
```


In this chapter, we are going to be working with the resume data from Section 2.1 of Imai. This data comes from an experiment where researchers sent fictitious resumes with different names that implied different race and gender combinations to see if potential employers were more likely to call back names associated with different racial groups and genders. 

To help you analyze this data, you can use a cross tabulation. Cross tabulation (or contingency table) is a table that quickly summarizes categorical data. For instance, in the resume data, we have a `sex` variable that tells us whether or not the fictitious resume had a male or a female name.


`@instructions`
- Use the `head` function to show the first six lines of the resume data. 
- Using the `table` function, create a cross tab of the `sex` and `call` variables in the resume data and assign this table to `sex.call.tab`
- Print the resulting cross tab.

`@hint`
Take a look at Section 2.1 of Imai if you are struggling here.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}
resume <- read.csv("resume.csv")

## print the first 6 lines of the data


## create a contingency table of sex and call
sex.call.tab <- 

## print the contingency table

```

`@solution`

```{r}
resume <- read.csv("resume.csv")

## print the first 6 lines of the data
head(resume)

## create a contingency table of sex and call
sex.call.tab <- table(sex = resume$sex, call = resume$call)

## print the contingency table
sex.call.tab
```

`@sct`

```{r}
ex() %>% check_output_expr("head(resume)") %>% check_object("sex.call.tab") %>% check_equal() %>% check_output_expr("sex.call.tab")
success_msg("Awesome, that cross tab looks great!")

```
