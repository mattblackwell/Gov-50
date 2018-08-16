---
  title: "Introduction 1"
  description: "An introduction to R"
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

`@hint`
See Section 1.3 of Imai. Be sure to write the code on a new line without a `#` in front of it.

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


You can save anything in R to an object. This is handy if you want to reuse some calculation later in your session.


`@instructions`
- Calculate the difference `8-1` and save it an object called `mydiff`. 
- Type `mydiff` in the code (on its own line) to have R print the value of what's stored in `mydiff`.

`@hint`
Place the difference you want after the `<-` sign. See Section 1.3.2 of Imai.

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


A lot of the time we'll work with numbers in R, but we will also want to use a lot of text. This text can be helpful in producing labels for plots or for labeling categorical variables.


`@instructions`
-  First, save the text `"social science"` to the variable `course`.
- Next, save the text `"learning R"` to the same variable `course`.
- Finally, print the value of `course` to the console. What do you think it will say?

`@hint`
Be sure to use quotes around the text you are trying to save. See Section 1.3.2 in Imai.

`@sample_code`

```{r}
## save the first string
course <- 

## overwrite the course variable with the second phrase
course <-

## print the value of course here
```

`@solution`

```{r}
## save the first string
course <- "social science"

## overwrite the course variable with the second phrase
course <- "learning R"

## print the value of course here
course
```

`@sct`

```{r}
ex() %>% check_object("course") %>% check_equal() %>% check_output_expr("course")
success_msg("You did it!")
```

---

## Copying and reassigning variables

```yaml
type: NormalExercise 
xp: 100 
key: 23b8da0155   
```


When we assign an existing object to a new name we always make a copy of it. This can be useful when you want it, but it also means you can lose what's in your object if you accidentally overwrite it. Here, we are going to learn about creating a copy of an object before overwriting it.


`@instructions`
- Assign the value of `result` to `result2`
- Overwrite the value of `result` with `10 - 2`

`@hint`
See Section 1.3.2 (Objects) of Imai.

`@pre_exercise_code`

```{r}
result <- 8 - 2
```

`@sample_code`

```{r}
## First result
result <- 8 - 2

## Assign the value of "result" to "result2"

## Overwrite "result"
result <-
```

`@solution`

```{r}
result <- 8 - 2
result2 <- result
result <- 10-2
```

`@sct`

```{r}
ex() %>% check_object("result2") %>% check_object("result") %>% check_equal()
success_msg("You did it!")
```

---

## Working with real data

```yaml
type: NormalExercise 
xp: 100 
key: 4037f23ade   
```


Next, we are going to start working with real data: estimates of world population (in thousands). A vector of data called `world.pop` has been loaded with this lesson. The first element is for the year 1950 up to the last element for 2010. You can see that we create the vector by using the `c()` function which concatenates multiple values together into one vector. We enter the data one value at a time, each separated by a comma.


`@instructions`
Print the `world.pop` data by simply typing it into a line of code.

`@hint`
Just type the name of the vector you want! See Section 1.3.3 (Vectors) of Imai.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}
## create the world.pop data
world.pop <- c(2525779, 3026003, 3691173, 4449049, 5320817, 6127700, 6916183)

## print the world.pop data

```

`@solution`

```{r}
## create the world.pop data
world.pop <- c(2525779, 3026003, 3691173, 4449049, 5320817, 6127700, 6916183)

## print the world.pop data
world.pop
```

`@sct`

```{r}
ex() %>% check_output_expr("world.pop")
success_msg("Great!")
```

---

## Indexing and subsetting

```yaml
type: NormalExercise 
xp: 100 
key: 7febac17e6   
```


Vectors are just a series of objects in R that are all stored together in a specific order. What if we want to access a specific value in the vector? Well, for that, we can use the indexing and subsetting tools in R. Specifically, we will use the the square brackets, `[ ]` to access specific values within the vector.


`@instructions`
- Use the brackets to access the fourth entry in the `world.pop` data. 
- Use the brackets to access and print the first and fourth entries of the `world.pop` data. You will need to use the `c()` function to create a vector of indices that you want to access.

`@hint`
Remember to use the square brackets after the name of the vector you are subsetting.  Also, you may need to create a vector like `c(1,4)` for the second part

`@pre_exercise_code`

```{r}
world.pop <- c(2525779, 3026003, 3691173, 4449049, 5320817, 6127700, 6916183)
```

`@sample_code`

```{r}
## access and print the 4th value of world.pop


## access and print the 1st and 4th value of world.pop

```

`@solution`

```{r}
world.pop[4]
world.pop[c(1,4)]
```

`@sct`

```{r}
ex() %>% check_output_expr("world.pop[4]") %>% check_out_expr("world.pop[c(1,4)]")
success_msg("Great!")
```
