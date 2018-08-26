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

## if statements

```yaml
type: NormalExercise
xp: 100
key: bcff433185
```

In addition to loops, it is also useful to have certain parts of the code only run if certain conditions are met. Maybe you want to only print out a string when a certain value is missing. Or you only want to execute a particular iteration of a loop if condition is met. The `if` and `else` construction will be very useful in these situations. To use it, we start with a header `if (cond)` where `cond` is a logical expression:

    if (mystring == "greeting") {
        cat("Hello world!\n")
    }

Here, R will only print `"Hello World!"` if the `mystring` object is equal to `"greeting"`. Otherwise, R will skip everything inside the curly braces. 


`@instructions`
- Change the sample code where you see `XYZ` to create an if statement that only executes the `cat` function when `x` is greater than or equal to `y`.
- What output do you see?

`@hint`
See Section 4.1.2 of QSS for more help on if/else statments. 

`@pre_exercise_code`
```{r}

```


`@sample_code`
```{r}
x <- 5
y <- 10

## wrap an if statement around the cat statement
## replacing the XYZ
XYZ
    cat("x is greater than or equal to y.\n")
XYZ
```

`@solution`
```{r}
x <- 5
y <- 10

## wrap an if statement around the cat statement
if (x >= y) {
    cat("x is greater than or equal to y.\n")
}
```

`@sct`
```{r}
ex() %>% check_if_else() %>% {
    check_cond(.) %>% check_code("x\\s+\\>\\=\\s+")
}
success_msg("Good job, you've written an if statement!")
```

---

## if/else statements

```yaml
type: NormalExercise
xp: 100
key: ce0b5eccbc
```

In the last exercise, the `if` condition wasn't true and so R didn't execute anything. Often it's useful to have something happen in this situation. That's where the `else` statement comes in. With the `else` statement, you can specify what R should do when the if condition is false. You can use it like so:

    if (mystring == "greeting") {
        cat("Hello world!\n")
    } else {
        cat("Don't mind me.\n")
    }

This code will do one of two things. If `mystring` is equal to `"greeting"`, it will print out `"Hello World!"`. If `"mystring"` is not equal to `"greeting"` (that is `mystring == "greeting"` is `FALSE`), then R will execute what's in the body of the `else` statement, which in this case mean it will print `"Don't mind me."`.

`@instructions`
- Replace the `XYZ` statements in the sample code with an `if` and `else` structure that prints the first `cat` statement when `x` is greater than or equal to `y` and prints the second `cat` statement otherwise. 

`@hint`
See Section 4.1.2 of QSS for more help on if/else statments. 

`@pre_exercise_code`
```{r}

```


`@sample_code`
```{r}
x <- 5
y <- 10

## wrap an if statement around the cat statement
XYZ
    cat("x is greater than or equal to y.\n")
XYZ
    cat("x is less than y.\n")
XYZ
```

`@solution`
```{r}
x <- 5
y <- 10

## wrap an if statement around the cat statement
if (x >= y) {
    cat("x is greater than or equal to y.\n")
} else {
    cat("x is less than y.\n")
}
```

`@sct`
```{r}
ex() %>% check_if_else() %>% {
    check_cond(.) %>% check_code("x\\s+\\>\\=\\s+")
    check_else(.) 
}
success_msg("Great! These statements will be useful.")
```
