---
  title: "Causality"
  description: "Using R to help establish causal statements"
---

## Exploring the resume data

```yaml
type: NormalExercise 
xp: 100 
key: b3d91783a1   
```


In this chapter, we are going to be working with the resume data from Section 2.1 of Imai. This data comes from an experiment where researchers sent fictitious resumes with different names that implied different race and gender combinations to see if potential employers were more likely to call back names associated with different racial groups and genders. 

Let's first explore the data a bit. It's store as `resume`.


`@instructions`
- Use the `head` function to show the first six lines of the `resume` data. 
- Print out the dimension of the `resume` data. 
- Use the `summary` function to show a summary of the data.

`@hint`
Remember that the name of the data frame is `resume`. Check back in Section 1.3.5 of QSS for a refresher on these functions.

`@pre_exercise_code`

```{r}
resume <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/38c2c61fdfeb49d7210c008970d2d280a03715fd/resume.csv")
```

`@sample_code`

```{r}
## print the first 6 lines of the data


## print the dimensions of the data


## create a summary of the variables in the data
```

`@solution`

```{r}
## print the first 6 lines of the data
head(resume)

## print the dimensions of the data
dim(resume)

## create a summary of the variables in the data
summary(resume)
```

`@sct`

```{r}
ex() %>% check_output_expr("head(resume)") %>% check_output_expr("dim(resume)") %>% check_output_expr("summary(resume)")
success_msg("Awesome, now you have a good sense of what this data looks like!")
```

---

## Creating a cross tab

```yaml
type: NormalExercise 
xp: 100 
key: df6afff9dc   
```


To help you analyze this data, you can use a cross tabulation. Cross tabulation (or contingency table) is a table that quickly summarizes categorical data. For instance, in the resume data, we have a `sex` variable that tells us whether or not the fictitious resume had a male or a female name.


`@instructions`
- Using the `table` function, create a cross tab of the `sex` and `call` variables in the resume data and assign this table to `sex.call.tab`
- Print the resulting cross tab.

`@hint`
Take a look at Section 2.1 of Imai if you are struggling here. Also, use the `ls()` function to see what objects are in the workspace.

`@pre_exercise_code`

```{r}
resume <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/38c2c61fdfeb49d7210c008970d2d280a03715fd/resume.csv")
```

`@sample_code`

```{r}
## create a contingency table of sex and call
sex.call.tab <- 

## print the contingency table
```

`@solution`

```{r}
## create a contingency table of sex and call
sex.call.tab <- table(sex = resume$sex, call = resume$call)

## print the contingency table
sex.call.tab
```

`@sct`

```{r}
ex() %>% check_object("sex.call.tab") %>% check_equal() %>% check_output_expr("sex.call.tab")
success_msg("Awesome, that cross tab looks great!")
```

---

## Logical values

```yaml
type: NormalExercise 
xp: 100 
key: ab7736f28d   
```


Pretty soon, you'll be doing more complicated subsetting in R. To do this, it's helpful to understand a special type of object in R: the **logical**. There are two values associated with this type of object: `TRUE` and `FALSE` (where the uppercase is very important).


`@instructions`
- Create a vector called `x` that contains two `TRUE` values and two `FALSE` values in that order. 
- Find the sum of that vector. 
- Find the mean of that vector.

`@hint`
Take a look at Section 2.2.1 of QSS for more help with logicals.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}
## creat a vector with two TRUE values and two FALSE values
x <- 

## take the sum of this vector


## take the mean of the vector
```

`@solution`

```{r}
## creat a vector with two TRUE values and two FALSE values
x <- c(TRUE, TRUE, FALSE, FALSE)

## take the sum of this vector
sum(x)

## take the mean of the vector
mean(x)
```

`@sct`

```{r}
ex() %>% check_object("x") %>% check_output_expr("sum(x)")%>% check_output_expr("mean(x)")
success_msg("Ok, great, you're logic is stone cold.")
```


