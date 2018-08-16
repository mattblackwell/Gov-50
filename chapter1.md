---
  title: "Week 0"
  description: "Beginning R"
---

## R as a calculator

```yaml
type: NormalExercise 
lang: r
xp: 100 
skills: 1
key: 2b0ae2ed07   
```


First, we'll learn how to use R as a calculator.


`@instructions`
- Use the `+` sign to add 5 and 3
- Use the `-` sign to subtract 3 from 5
- Use the `\` to  divide 6 by 2
- Use the `sqrt()` function to take the square root of 16

`@pre_exercise_code`

```{r}
# Load datasets and packages here.
```

`@sample_code`

```{r}
## Add together 5 and 3

## Subtract 3 from 5

## Divide 6 by 2

## Take the square root of 16
```

`@solution`

```{r}
5 + 3
5 - 3
6 / 2
sqrt(16)
```

`@sct`

```{r}
# Update this to something more informative.
success_msg("Good job!")
```

---

## Storing results 

```yaml
type: NormalExercise 
xp: 100 
key: 5443ad2826   
```





`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}
## assign the difference here
mydiff <- 

## type the name of the assigned object (mydiff) below
## to print out the results

```

`@solution`

```{r}
## assign the difference here
mydiff <- 8 - 2

## type the name of the assigned object (mydiff) below
## to print out the results
mydiff
```

`@sct`

```{r}
ex() %>% check_object("mydiff") %>% check_equal() %>% check_output_expr("mydiff")
success_msg("Well done!")
```

---

## Characters and strings

```yaml
type: NormalExercise 
xp: 100 
key: 4b3d70fe4c   
```





`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}
## save the first string
course <- 

## overwrite the course variable with the second phrase
course <- 
```

`@solution`

```{r}
## save the first string
course <- "social science"

## overwrite the course variable with the second phrase
course <- "learning R"
```

`@sct`

```{r}
ex() %>% check_object("course") %>% check_equal()
success_msg("You did it!")
```
