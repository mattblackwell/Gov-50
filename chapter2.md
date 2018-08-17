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

---

## Comparing logicals

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 8dabfe675f   
```


We often combine logical statements using AND (`&`) and OR (`|`) in R. For AND statements, both expressions have to be true for the whole expression to be true:
- `TRUE & FALSE`, `FALSE & TRUE`, and `FALSE & FALSE` are `FALSE`
- `TRUE & TRUE` is `TRUE`
For OR statements, either statement being true makes the whole expression true:
- `TRUE | FALSE`, `FALSE | TRUE`, and `TRUE | TRUE` are `FALSE`
- `FALSE | FALSE` is `FALSE`

What does the following evaluate to?

    (TRUE | FALSE) & TRUE


`@instructions`
- `TRUE`
- `FALSE`
- `NA`

`@hint`
Evaluate the expression from left to right

`@pre_exercise_code`

```{r}

```


`@sct`

```{r}
msg1 <- "Correct!"
msg2 <- "Incorrect. (TRUE | FALSE) evaluates to TRUE and then the expression becomes TRUE & TRUE which is TRUE."
msg3 <- "Incorrect. Things would only be NA if there was an NA in the expression."
ex() %>% check_mc(correct = 1,
                  feedback_msgs = c(msg1, msg2, msg3))
```


---

## Comparing objects

```yaml
type: NormalExercise
xp: 100
key: 2423174d57
```

There are several *relational operators* that allow us to compare objects in R. The most useful of these are the following:
- `>` greater than, `>=` greater than or equal to
- `<` less than, `<=` less than or equal to
- `==` equal to
- `!=` not equal to
When we use these to compare two objects in R, we end us with a logical object. You can also compare a vector to a particular number. 

`@instructions`
- Test if 10 is greater than 5. 
- Test which values in the vector `x` is greater than or equal to 0.

`@hint`
See Section 2.2.2 of QSS for more information on relationals. 

`@pre_exercise_code`
```{r}
```

`@sample_code`
```{r}
## test if 10 is greater than 5

## x vector
x <- c(-2, -1, 0, 1, 2)

## test which values of x are greater than or equal to 0

```

`@solution`
```{r}
## test if 10 is greater than 5
10 > 5

# x vector
x <- c(-2, -1, 0, 1, 2)

## test which values of x are greater than or equal to 0
x >= 0
```

`@sct`
```{r}
ex() %>% check_output_expr("10 > 5") %>% check_output_expr("x >= 0")
success_msg("Good job!")
```

---

## Complex relationals

```yaml
type: NormalExercise
xp: 100
key: dc881eb5bf
```


In this exercise, you have the ages of a sample of 15 people, stored in the `ages` vector. We can use these relational operators to find the values of a vector that fall in a range using the same `&` and `|` operators. In particular, we can find out how many of the respondents are college-aged (18-22)

`@instructions`
- Find all the values of the `ages` that are greater than or equal to 18 and less than or equal to 22 and save this to a vector called `college.aged`. Be sure to use parentheses to separate out the two logical statements. 
- Take the sum of the `college.aged` vector to count how many 18-22 year olds there are in the sample.


`@hint`
Remember that `>=` is greater than or equal to and `<=` is less than or equal to.

`@pre_exercise_code`
```{r}
set.seed(12345)
ages <- sample(18:65, size = 15)
```

`@sample_code`
```{r}
## check the value of the ages vector
ages

## find those that are 18-22
college.aged <- 

## find the number of college.aged respondents 

```

`@solution`
```{r}
## check the value of the ages vector
ages

## find those that are 18-22
college.aged <- (ages >= 18) & (ages <= 22)

## find the number of college.aged respondents 
sum(college.aged)
```


`@sct`
```{r}
ex() %>% check_object("college.aged") %>% check_equal() %>% check_output_expr("sum(college.aged)")
success_msg("Excellent job! This skill will be insanely useful as you move forward.")
```

---

## Subsetting based on logicals

```yaml
type: NormalExercise
xp: 100
```

In the last exercise, you used logical statements to create a vector that told us whether each entry in the `ages` vector is in the 18-22 year-old range. We can now use that information to figure out what the actual ages of the respondents in that range are. 

`@instructions`
- Use the brackets and the `college.aged` logical vector to subset `ages` to the value only between 18 and 22, inclusive. 
- Use the `mean` function to calculate the average age of the respondents in this subset. 

`@hint`
See QSS Section 2.2.3 on Subsetting for more information on this type of problem. 

`@pre_exercise_code`
```{r}
set.seed(12345)
ages <- sample(18:65, size = 15)
```

`@sample_code`
```{r}
college.aged <- (ages >= 18) & (ages <= 22)
college.aged

## use the brackets to subset the ages vector to those who are college aged


## calculate the average age among the college-aged in the sample

```

`@solution`
```{r}
college.aged <- (ages >= 18) & (ages <= 22)
college.aged

## use the brackets to subset the ages vector to those who are college aged
ages[college.aged]

## calculate the average age among the college-aged in the sample
mean(ages[college.aged])
```

`@sct`
```{r}
ex() %>% check_output_expr("ages[college.aged]") %>% check_output_expr("mean(ages[college.aged])")
success_msg("Ok, great job!")
```
