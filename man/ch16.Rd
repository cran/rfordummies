% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chapters-auto.R
\name{ch16}
\alias{ch16}
\title{Print examples of chapter 16 of 'R for Dummies'.}
\usage{
ch16()
}
\description{
To print a listing of all examples of a chapter, use \code{ch16()}.
To run all the examples of \code{ch16()}, use \code{example(ch16)}.
}
\examples{
if (interactive()) {
# Chapter 16 - Using Base Graphics

# Creating Different Types of Plots


## Getting an overview of plot

large.islands <- head(sort(islands, decreasing=TRUE), 10)

plot(large.islands, main="Land area of continents and islands",
   ylab="Land area in square miles")
text(large.islands, labels=names(large.islands), adj=c(0.5, 1))


## Adding points and lines to a plot

plot(faithful)

## Adding points

short.eruptions <- with(faithful, faithful[eruptions < 3, ])

plot(faithful)
points(short.eruptions, col="red", pch=19)

## Changing the shape of points

## Changing the color

head(colors(), 10)

## Adding lines to a plot

fit <- lm(waiting~eruptions, data=faithful)

plot(faithful)
lines(faithful$eruptions, fitted(fit), col="blue")
abline(v=3, col="purple")

abline(h=mean(faithful$waiting))
abline(a=coef(fit)[1], b=coef(fit)[2])
abline(fit, col = "red")

# Different plot types

plot(LakeHuron, type="l", main='type="l"')
plot(LakeHuron, type="p", main='type=p"')
plot(LakeHuron, type="b", main='type="b"')


x <- seq(0.5, 1.5, 0.25)
y <- rep(1, length(x))
plot(x, y, type="n")
points(x, y)

with(mtcars, plot(mpg, disp))
with(mtcars, boxplot(disp, mpg))
with(mtcars, hist(mpg))

# Controlling Plot Options and Arguments

## Adding titles and axis labels

plot(faithful,
   main = "Eruptions of Old Faithful",
   xlab = "Eruption time (min)",
   ylab = "Waiting time to next eruption (min)")


## Changing plot options

### The axes label style

plot(faithful, las=1)

### The box type

plot(faithful, bty="n")

### More than one option

plot(faithful, las=1, bty="l", col="red", pch=19)

### Font size of text and axes

x <- seq(0.5, 1.5, 0.25)
y <- rep(1, length(x))
plot(x, y, main="Effect of cex on text size")
text(x, y+0.1, labels=x, cex=x)

plot(x, y, main="Effect of cex.main, cex.lab and cex.axis",
  cex.main=1.25, cex.lab=1.5, cex.axis=0.75)

## Putting multiple plots on a single page

old.par <- par(mfrow=c(1, 2))
plot(faithful, main="Faithful eruptions")
plot(large.islands, main="Islands", ylab="Area")
par(old.par)


# Saving Graphics to Image Files

filename <- file.path(tempdir(), "faithful.png")
\dontrun{
png(filename=filename)
}
plot(faithful)
\dontrun{
dev.off()
}

}
}
\seealso{
\code{\link{toc}}

Other Chapters: 
\code{\link{ch01}()},
\code{\link{ch02}()},
\code{\link{ch03}()},
\code{\link{ch04}()},
\code{\link{ch05}()},
\code{\link{ch06}()},
\code{\link{ch07}()},
\code{\link{ch08}()},
\code{\link{ch09}()},
\code{\link{ch10}()},
\code{\link{ch11}()},
\code{\link{ch12}()},
\code{\link{ch13}()},
\code{\link{ch14}()},
\code{\link{ch15}()},
\code{\link{ch17}()},
\code{\link{ch18}()},
\code{\link{ch19}()},
\code{\link{ch20}()}
}
\concept{Chapters}
