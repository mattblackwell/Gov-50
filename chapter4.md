---
  title: "Prediction"
  description: "Making predictions in R using loops, conditionals, and linear regression."
---


## Loops

```yaml
type: NormalExercise
xp: 100
key: b2c4ba8c3b
```

It's often useful to tell R to execute a bit of code multiple times. In programming, this is called *iteration* and it is used extensively in statistical (and non-statistical) programming. One of the most used types of iteration is the for loop. A for loop will execute a set of commands (called the *body*) for a set number of iterations, changing the value of one variable in each iteration. In R, we set up the for loop a header, telling R what variable name you want to change over iterations of the loop and what values you want that variable to take:

    for (var in seq) {
      ## body expresssions
    }

Here, R will execute the expressions in the body (between the `{}` brackets) with the variable `var` taking values in the vector `seq` at each iteration. So the loop will execute as many times as the length of the `seq` vector. 

`@instructions`
- Use the `cat` function to print out (1) the string `"The value of i is"`, (2) the iterating variable in the loop, and (3) a "newline" character `"\n"` that will print a new line in the R output. 
- Be sure to separate these arguments to the `cat` function with commas. 

`@hint`
See Section 4.1 of QSS for more information about for loops. 

`@pre_exercise_code`
```{r}

```


`@sample_code`
```{r}
for (i in 1:10) {
    ## add a cat statement here
    
}
```

`@solution`
```{r}
for (i in 1:10) {
    ## add a cat statement here
    cat("The value of i is", i, "\n")
}
```

`@sct`
```{r}
ex() %>% check_for() %>% {
    check_cond(.) %>% check_code("in\\s*1:10", missing_msg = "You can use `i in 1:10` to define your for loop.")
    check_body(.) %>% check_function("cat") %>% check_arg("...") %>% check_equal(eval = FALSE)
}
success_msg("Good job, loops are really tricky subjects and you've implemented one!")
```

---

## Modifying a loop

```yaml
type: NormalExercise
xp: 100
key: e2ff684fba
```

Now try to change the header of the for loop to see how the header changes what R executes. 

`@instructions`
- Change the value of the loop sequence to have `i` iterate over the sequence 10, 11, 12, 13, 14, and 15, leaving the rest of the loop unchanged. 

`@hint`
See Section 4.1 of QSS for more information about for loops. 


`@pre_exercise_code`
```{r}

```


`@sample_code`
```{r}
for (i in 1:10) {
    cat("The value of i is", i, "\n")
}
```

`@solution`
```{r}
for (i in 10:15) {
    cat("The value of i is", i, "\n")
}
```

`@sct`
```{r}
ex() %>% check_for() %>% {
    check_cond(.) %>% check_code("in\\s*10:15", missing_msg = "You can use `i in 10:15` to define your for loop.")
    check_body(.) %>% check_function("cat") %>% check_arg("...") %>% check_equal(eval = FALSE)
}
success_msg("Awesome!")
```

---

## Conditional statements 

```yaml
type: NormalExercise
xp: 100
key: bcff433185
```



`@instructions`


`@hint`

`@pre_exercise_code`
```{r}

```


`@sample_code`
```{r}

```

`@solution`
```{r}
x <- 5
y <- 10

if (x >= y) {
    cat("x is greater than or equal to y")
} else {
    cat("x is less than y")
}
```

`@sct`
```{r}

```

