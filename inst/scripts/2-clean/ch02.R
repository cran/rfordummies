if (interactive() || is.na(Sys.getenv('NOT_CRAN', unset = NA)) ) {
# Chapter 2 - Exploring R

# Working with a Code Editor

## Exploring RGui

### Seeing the naked R console


### Issuing a simple command

24+7+11

### Closing the console

\dontrun{
quit()
}


## Dressing up with RStudio


# Starting Your First R Session

## Saying hello to the world

print("Hello world!")

## Doing simple math

1+2+3+4+5

## Using vectors


c(1,2,3,4,5)
1:5
sum(1:5)

## Storing and calculating values

x <- 1:5
x

y <- 10
x + y

x
y

z <- x + y
z

h <- "Hello"
h

hw <- c("Hello", "world!")
hw

paste("Hello", "world!")

## Talking back to the user

h <- "Hello"
if(interactive()){
yourname <- readline("What is your name?")
} else {
  yourname <- "Joris"
}
paste(h, yourname)

# Sourcing a Script

h <- "Hello"
yourname <- readline("What is your name?")
print(paste(h, yourname))


### Finding help on functions
?paste
help(paste)

# Navigating the Workspace
ls()

## Manipulating the content of the workspace

rm(z)
ls()

##Saving your work

getwd()

filename <- file.path(tempdir(), "yourname.rda")
\dontrun{
save(yourname, file=filename)
}
list.files(tempdir(), pattern = ".rda")

## Retrieving your work


rm(yourname)
\dontrun{
load("yourname.rda")
}

}
