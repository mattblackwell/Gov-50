---
  title: "Measurement"
  description: "Using R to help measure different social science concepts"
---


## Small class size data

```yaml
type: NormalExercise
xp: 50
key: c6d39e7f00
```

In this chapter, you'll analyze data from the STAR project, which is a four-year randomized trial on the effectiveness of small class sizes on education performance. The `star` data frame as been loaded into your space so that you can play around with it a bit. 

`@instructions`
- Use the `head` function on the `star` to see what the data looks like.
- Use the `dim` function on the `star` to see what the dimensions of the data look like. 
- Use the `summary` function on the `star` to get a sense for each variable. 

`@hint`
See Section 2.1 of QSS for more help with these functions. 


`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## Print the first 6 rows of the data


## find the dimensions of the data


## output a summary of the data

```

`@solution`
```{r}
## Print the first 6 rows of the data
head(star)

## find the dimensions of the data
dim(star)

## output a summary of the data
summary(star)
```

`@sct`
```{r}
ex() %>% check_function("head") %>% { 
    check_arg(., "x") %>% check_equal()
}
ex() %>% check_function("dim") %>% { 
    check_arg(., "x") %>% check_equal() 
}
ex() %>% check_function("summary") %>% { 
    check_arg(., "object") %>% check_equal()
}
success_msg("Great job, let's get to work on this data!")
```

---

## Handling missing data

```yaml
type: NormalExercise
xp: 100
key: 0c0932b9a1
```

You probably noticed that there were some `NA` values in the data when you used the `head()` function. These are **missing values**, where the value for that unit on that variable is missing or unknown. These values pose problems when we are trying to calculate quantities of interest like means or medians because R doesn't know how to handle them. 

The first tool in your toolkit for missing data is the `is.na()` function. When you pass a vector `x` to `is.na(x)`, it will return a vector of the same length where each entry is `TRUE` if the value of `x` is `NA` and `FALSE` otherwise. Using logicals, you can easily get the opposite vector `!is.na(x)` which is `TRUE` when `x` is observed and `FALSE` when `x` is missing. 


`@instructions`
- Use the `is.na` and `head` functions to show whether or not the first 6 values of the `g4math` variable from the `star` data frame are missing.
- Use the `is.na` and `sum` functions to show how many values of the `g4math` variable are missing.
- Use the `is.na` and `mean` functions to show what proportion of the `g4math` variable is missing.

`@hint`
See Section 3.2 of QSS for more information on handling missing values. 

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## use head() to show whether or not the first 6 entries of the g4math variable are missing


## use sum() to show how many of the g4math variables are missing


## use mean() to show what proportion of the g4math variables are missing

```

`@solution`
```{r}
## use head() to show whether or not the first 6 entries of the g4math variable are missing
head(is.na(star$g4math))

## use sum() to show how many of the g4math variables are missing
sum(is.na(star$g4math))

## use mean() to show what proportion of the g4math variables are missing
mean(is.na(star$g4math))
```

`@sct`
```{r}
ex() %>% check_function("head") %>% check_args("x") %>% check_equal()
ex() %>% check_function("sum") %>% check_args("...") %>% check_equal()
ex() %>% check_function("mean") %>% check_args("x") %>% check_equal()
success_msg("Great job!")
```

---

## Calculating means in the fact of missing data 

```yaml
type: NormalExercise
xp: 100
key: 7576d1a23f
```

Missing values makes it difficult to calculate numerical quantities of interest like the mean, median, standard deviation, or variance. Many of these function will simply return `NA` if there is a single missing value in the vector. We can instruct many function to ignore the missing values and do their calculation on just the observed data by using the `na.rm = TRUE` argument. For instance, suppose we have `x <- c(NA, 1,2,3)`, then `mean(x)` will return `NA`, but `mean(x, na.rm = TRUE)` will return `2`. 


`@instructions`
- Try to calculate the `mean` of the `g4math` variable in the `star` data frame without setting `na.rm`.
- Try to calculate the `mean` of the `g4math` variable when setting `na.rm = TRUE`.

`@hint`
See Section 3.2 of QSS for more information on handling missing values. 

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## try to calculate the mean of g4math


## calculate the mean again, using na.rm to remove NAs

```

`@solution`
```{r}
## try to calculate the mean of g4math
mean(star$g4math)

## calculate the mean again, using na.rm to remove NAs
mean(star$g4math, na.rm = TRUE)
```

`@sct`
```{r}
ex() %>% check_function("mean") %>% check_args("x") %>% check_equal()
ex() %>% check_function("mean") %>% { 
    check_args(., "x") %>% check_equal()
    check_args(., "na.rm") %>% check_equal()
}
success_msg("Great job! Now that you are a missing data expert, let's learn how to make some visualizations.")
```
---

## Visualizing data: the barplot

```yaml
type: NormalExercise
xp: 100
key: c3e8e0975f
```

The **barplot** is a useful way to visualize a categorical or factor variable. In this exercise, you are going to visualize the `classtype` variable from the `star` data frame, which can take on the following values:
- `1` = small class
- `2` = regular class
- `3` = regular class with aid

`@instructions`
- Use the `table` function to create a vector of counts `classcounts` for each category of the `classtype` in the `star` data. 
- Pass this `classcounts` vector to the `barplot` function. 

`@hint`
See Section 3.3.1 of QSS for more information on barplots.

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## creat a vector giving the counts of each category of classtype
classcounts <- 

## pass classcounts to barplot

```

`@solution`
```{r}
## creat a vector giving the counts of each category of classtype
classcounts <- table(star$classtype)

## pass classcounts to barplot
barplot(classcounts)
```

`@sct`
```{r}
ex() %>% check_object("classcounts") %>% check_equal() 
ex() %>% check_function("barplot") %>% {
    check_arg(., "height") %>% check_equal() 
}
success_msg("Awesome. The graph is looking a little unhelpful, though. Let's spruce it up.")
```

---

## Making the barplot readable 

```yaml
type: NormalExercise
xp: 100
key: 420aefc18a
```

The default barplot usually isn't all that readable. 

`@instructions`
- Create a vector of character labels called `classnames` that has the values `"Small class"` (for 1), `"Regular class"` (for 2), and `"Regular class with aid"` (for 3).
- Call `barplot` with the heights as before, but now passing `classnames` to the `names.arg` argument and use `"Number of students"` as the `ylab` argument.
- Make sure to separate the arguments in the barplot call with commas. 

`@hint`
See Section 3.3.1 of QSS for more information on barplots.

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## create a vector giving the counts of each category of classtype
classcounts <- table(star$classtype)

## create a vector of labels called classnames


## pass classcounts to barplot and set the y-axis label

```

`@solution`
```{r}
## create a vector giving the counts of each category of classtype
classcounts <- table(star$classtype)

## create a vector of labels
classnames <- c("Small class", "Regular class", "Regular class with aid")

## pass classcounts to barplot and set the y-axis label
barplot(classcounts, names.arg = classnames, ylab = "Number of students")
```

`@sct`
```{r}
ex() %>% check_object("classnames") %>% check_equal() 
ex() %>% check_function("barplot") %>% {
    check_arg(., "height") %>% check_equal() 
    check_arg(., "names.arg") %>% check_equal() 
    check_arg(., "ylab") %>% check_equal() 
}
success_msg("Great job, that barplot looks a ton better.")
```

---

## Histograms 

```yaml
type: NormalExercise
xp: 100
key: ed0cfe6a6f
```

For quantitative (numerical) variables, the barplot won't work because there are too many unique values. In this case, you will often use a histogram to visualize the a numerical variable. 


`@instructions`
- Use the `hist` function to create a histogram for the `g4math` variable in the `star` data frame. 
- Be sure to use the `freq = FALSE` argument to the `hist` function to get the histogram. 
- Make sure to separate the arguments in function calls with commas. 
- Remember that you can access a particular variable using the `$`.

`@hint`
See Section 3.3.2 of QSS for more information on histograms.

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## create a histogram of g4math

```

`@solution`
```{r}
## create a histogram of g4math
hist(star$g4math, freq = FALSE)
```

`@sct`
```{r}
ex() %>% check_function("hist") %>% {
    check_arg(., "x") %>% check_equal()
    check_arg(., "freq") %>% check_equal()
}
success_msg("Great job, though the graph is a bit spartan. Let's make it more readable.")
```

---

## Sprucing up the histogram

```yaml
type: NormalExercise
xp: 100
key: 18b2067b3f
```

There are several arguments you can pass to `hist` that will improve its readability:
- `main`: a character string that prints a main title for the plot. 
- `xlab`, `ylab`: character strings that set the labels for the x (horizontal) and y (vertical) axes 
- `xlim`, `ylim`: numeric vectors of length 2 to specify the interval for the x and y axes. 

`@instructions`
- Create a histogram (with `freq = FALSE`) where you (a) set the y-axis to be between `0` and `0.015` using the `ylim` argument, (b) include an informative x-axis label using the `xlab` argument, and (c) include a title for the plot using the `main` argument. 
- Make sure to separate the arguments in function calls with commas. 


`@hint`
See Section 3.3.2 of QSS for more information on histograms.

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## create the histogram with the specifications given in the instructions

```

`@solution`
```{r}
## create the histogram with the specifications given in the instructions
hist(star$g4math, freq = FALSE, xlab = "Score", main = "Distribution of fourth-grade math scores", ylim = c(0,0.015))
```

`@sct`
```{r}
ex() %>% check_function("hist") %>% {
    check_arg(., "x") %>% check_equal()
    check_arg(., "freq") %>% check_equal()
    check_arg(., "xlab")
    check_arg(., "main")
    check_arg(., "ylim") %>% check_equal()
}
success_msg("Great job!")
```

---

## Adding lines and text to a plot 

```yaml
type: NormalExercise
xp: 100
key: 4ae587366b
```

We'll often want to add more information to a plot to make it even more readable. You can do that with commands that add to the current plot, such as `abline` and `text`. `abline(v=1)` will add a vertical line to the plot at the specified value (`1` in this example). `text(x,y,z)` adds a character string `z` centered at point on the (`x`, `y`) on the plot. You can use the axis labels to see where you might want to add these parts of the plot. 


`@instructions`
- Use the `abline` function to add a vertical line at the mean of the `g4math` variable from the `star` data. Remember, there are missing values in that variable so be sure to use the `na.rm = TRUE` argument to drop them. 
- Use the `text` function to add the string `Average Score` to the plot at the point (750, 0.014). 
- Make sure to separate the arguments in function calls with commas. 

`@hint`
See Section 3.3.2 of QSS for more information on histograms.


`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
hist(star$g4math, freq = FALSE, xlab = "Score", main = "Distribution of fourth-grade math scores", ylim = c(0,0.015))

## add a vertical line at the mean of the variable


## add the text "Average Score" at the specified location

```

`@solution`
```{r}
hist(star$g4math, freq = FALSE, xlab = "Score", main = "Distribution of fourth-grade math scores", ylim = c(0,0.015))

## add a vertical line at the mean of the variable
abline(v = mean(star$g4math, na.rm = TRUE))

## add the text "Average Score" at the specified location
text(x = 750, y = 0.014, "Average Score")
```

`@sct`
```{r}
ex() %>% check_function("abline") %>%  {
    check_arg(., "v") %>% check_equal()
}
ex() %>% check_function("text") %>%  {
    check_arg(., "x") %>% check_equal()
    check_arg(., "y") %>% check_equal()
    check_arg(., "labels") %>% check_equal()
}
success_msg("Great job!")
```

---

## Boxplots  

```yaml
type: NormalExercise
xp: 100
key: b9e749a845
```

Boxplots are useful tools to visualize how the distribution of a continuous variable changes across levels of a categorical variable. There are several ways to specify a boxplot, but one of the most useful is with what R calls a formula:
    boxplot(numvar ~ catvar, data = mydata)
Here, the first argument are the two variables of interest separated by the tilde character `~`. On the left hand side is the numerical variable that you are investigating and on the right hand side is the categorical variable we want to subset by. The `data` argument tells the function where the function can find these variables (that is, in what data frame are these variables). 

`@instructions`
- Call the `boxplot` function using the `g4math` is the numerical variable and `classtype` is the categorical variable. Pass the `star` data frame to the `data` argument. Include an informative y-axis label with `ylab` argument. Finally, pass the `classnames` vector to the `names` argument to place labels on the boxplots. 

`@hint`
See Section 3.3.3 of QSS for more information on boxplots. 

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## labels for the class type
classnames <- c("Small class", "Regular class", "Regular class with aid")

## create a box plot with the characteristics specified in the instructions

```

`@solution`
```{r}
classnames <- c("Small class", "Regular class", "Regular class with aid")
boxplot(g4math ~ classtype, data = star, ylab = "Math scores", names = classnames)
```

`@sct`
```{r}
ex() %>% check_function("boxplot") %>% {
    check_arg(., "formula") %>% check_equal()
    check_arg(., "data") %>% check_equal()
    check_arg(., "ylab")
    check_arg(., "names") %>% check_equal()
}
success_msg("Great job!")
```
---

## Scatter plots 

```yaml
type: NormalExercise
xp: 100
key: 7d90818f54
```

Now you'll think more about to measure bivariate relationships---that is, the relationship between two variables. The `plot(x,y)` function will take two vectors and plot a series of points on a two-dimensional grid where the x-coordinates come from the `x` vector and the y-coordinates come from the `y` vector. For instance, `plot(x = c(1,2), y = c(3,4))` will plot two points, one at (1,3) and the other at (2,4). You will use this plot to explore the relationship between math and reading test scores in the `star` data. 

`@instructions`
- Create a scatter plot using the `plot` function with `g4math` on the x-axis and `g4reading` on the y-axis, both from the `star` data. 
- Remember you can access a particular variable in a data frame using the `$` symbol. 

`@hint`
See Section 3.6.1 of QSS for help with scatter plots. 


`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## produce a scatterplot of g4math on the x-axis and g4reading on the y-axis

```

`@solution`
```{r}
## produce a scatterplot of g4math on the x-axis and g4reading on the y-axis
plot(star$g4math, star$g4reading)
```

`@sct`
```{r}
ex() %>% check_function("plot") %>% {
    check_arg(., "x") %>% check_equal()
    check_arg(., "y") %>% check_equal()
}
success_msg("Ok, great plot. Let's make a bit more polished.")
```
---

## Plotting two sets of points 

```yaml
type: NormalExercise
xp: 100
key: 25875de2e9
```

Often we want to plot certain pints differently than others. For instance, maybe you want to see how the relationship between math and reading scores differs between students in small classes versus those not in small classes. To do this, we can use subsets and the `points` function.

After using the `plot` function, you can add more points to the current plot by using the `points(x,y)` function, where the points are plotted very similarly to `plot`.

`@instructions`
- Create a subset of the `star` data called `small.class` which is when `classtype` is equal to 1. Create a second subset called `reg.class` which is when `classtype` is not equal to 1. 
- Use the `plot` function to create a scatter plot of `g4math` and `g4reading` from the `small.class`. Change the color of the points by including the `col = "indianred"` argument. 
- Use the `points` function to add the points of `g4math` and `g4reading` from the `reg.class`. Change the color of the points by including the `col = "dodgerblue"` argument. 
- Remember that you can use `x == y` to test if `x` is equal to `y` and `x != y` to test if `x` is not equal to `y`

`@hint`
See Section 3.6.1 of QSS for help with scatter plots. 

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
```


`@sample_code`
```{r}
## create a subset for small classes (classtype is 1)
small.class <- 

## create a subset for regular classes (classtype is not 1)
reg.class <- 

## use the plot command for the small.class and use one color


## use the points command for the reg.class and use another color

```

`@solution`
```{r}
## create a subset for small classes (classtype is 1)
small.class <- subset(star, classtype == 1)

## create a subset for regular classes (classtype is not 1)
reg.class <- subset(star, classtype != 1)

## use the plot command for the small.class and use one color
plot(small.class$g4math, small.class$g4reading, col = "indianred")

## use the points command for the reg.class and use another color
points(reg.class$g4math, reg.class$g4reading, col = "dodgerblue")
```

`@sct`
```{r}
ex() %>% check_object("small.class") %>% check_equal()
ex() %>% check_object("reg.class") %>% check_equal()
ex() %>% check_function("plot") %>% {
    check_arg(., "x") %>% check_equal()
    check_arg(., "y") %>% check_equal()
    check_arg(., "col")
}
ex() %>% check_function("points") %>% {
    check_arg(., "x") %>% check_equal()
    check_arg(., "y") %>% check_equal()
    check_arg(., "col")
}
success_msg("That looks great! ")
```

---

## Finalizing your scatter plot 

```yaml
type: NormalExercise
xp: 100
key: 6effc5be0f
```

The scatter plot is looking very good, but it could use a little bit of polish. Let's add axis labels and a title. Remember that you can add these to the plot via the `xlab`, `ylab`, and `main`. Also, it's important to note that you can only add these to the initial `plot` function; adding them to the `points` or `text` or `abline` functions won't have any effect. 


`@instructions`
- Take the current plot and add the following arguments: `xlab`, `ylab`, and `main`. Make them informative. 

`@hint`
See Section 3.6.1 of QSS for help with scatter plots. 

`@pre_exercise_code`
```{r}
star <- read.csv("https://assets.datacamp.com/production/repositories/3045/datasets/04251b0be6529e4b5f636fb5666f87cf3ad10635/STAR.csv")
small.class <- subset(star, classtype == 1)
reg.class <- subset(star, classtype != 1)
```


`@sample_code`
```{r}
## add the arguments to make the plot more readable
plot(small.class$g4math, small.class$g4reading, col = "indianred")
points(reg.class$g4math, reg.class$g4reading, col = "dodgerblue")
```

`@solution`
```{r}
## add the arguments to make the plot more readable
plot(small.class$g4math, small.class$g4reading, col = "indianred", 
xlab = "Fourth Grad Math Scores", ylab = "Fourth Grade Reading Score", main = "Math vs Reading")
points(reg.class$g4math, reg.class$g4reading, col = "dodgerblue")
```

`@sct`
```{r}
ex() %>% check_function("plot") %>% {
    check_arg(., "x") %>% check_equal()
    check_arg(., "y") %>% check_equal()
    check_arg(., "col")
    check_arg(., "xlab")
    check_arg(., "ylab")
    check_arg(., "main")
}
ex() %>% check_function("points") %>% {
    check_arg(., "x") %>% check_equal()
    check_arg(., "y") %>% check_equal()
    check_arg(., "col")
}
success_msg("What a great plot! You have really done a great job learning R for measurement.")
```
