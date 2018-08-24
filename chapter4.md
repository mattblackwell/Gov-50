---
  title: "Prediction"
  description: "Making predictions in R using loops, conditionals, and linear regression. "
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
- Use the `cat` function to print out (1) the string `"This is iteration number"`, (2) the iterating variable in the loop, and (3) a "newline" character `"\n"` that will print a new line in the R output. 
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
    cat("This is iteration number", i, "\n")
}
```

`@sct`
```{r}
ex() %>% check_for() %>% {
    check_cond(.) %>% check_code("in\\s*1:10", missing_msg = "You can use `i in 1:10` to define your for loop.")
    check_body(.) %>% check_function("cat") %>% check_arg("...") %>% check_equal(eval = FALSE)
}
```
