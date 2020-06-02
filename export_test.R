library(export)
# Create a file name
#filen <- tempfile(pattern = "ggplot") # or
filen <- paste("D:/biotools/R/export/ggplot")
# Generate graphical output
library(ggplot2)
library(datasets)
x=qplot(Sepal.Length, Petal.Length, data = iris,
		color = Species, size = Petal.Width, alpha = I(0.7))
plot.fun <- function(){
				print(qplot(Sepal.Length, Petal.Length, data = iris,
				color = Species, size = Petal.Width, alpha = 0.7))
}
# There are 3 ways to use graph2bitmap():
### 1. Pass the plot as an object
graph2png(x=x, file=filen, dpi=400, height = 5, aspectr=4)
graph2tif(x=x, file=filen, dpi=400, height = 5, aspectr=4)
graph2jpg(x=x, file=filen, dpi=400, height = 5, aspectr=4)
### 2. Get the plot from current screen device
# Because the example uses screen devices
x
graph2png(file=filen, dpi=400, height = 5, aspectr=4)
graph2tif(file=filen, dpi=400, height = 5, aspectr=4)
graph2jpg(file=filen, dpi=400, height = 5, aspectr=4)
### 3. Pass the plot as a function
# Because the example uses screen devices
graph2png(file=filen, fun=plot.fun, dpi=400, height = 5, aspectr=4)
graph2tif(file=filen, fun=plot.fun, dpi=400, height = 5, aspectr=4)
graph2jpg(file=filen, fun=plot.fun, dpi=400, height = 5, aspectr=4)

# Create a file name
#filen <- tempfile(pattern = "ggplot") # or
filen <- paste("D:/biotools/R/export/ggplot")
# Generate graphical output
library(ggplot2)
library(datasets)
x=qplot(Sepal.Length, Petal.Length, data = iris,
		color = Species, size = Petal.Width, alpha = I(0.7))
plot.fun = function(){
				print(qplot(Sepal.Length, Petal.Length, data = iris,
				color = Species, size = Petal.Width, alpha = I(0.7)))
}
# There are 3 ways to use graph2office():
### 1. Pass the plot as an object
graph2ppt(x=x, file=filen)
graph2doc(x=x, file=filen, aspectr=0.5)
### 2. Get the plot from current screen device
# Because the example uses screen devices
x
graph2ppt(file=filen, width=9, aspectr=2, append = TRUE)
graph2doc(file=filen, aspectr=1.7, append =TRUE)
### 3. Pass the plot as a function
# Because the example uses screen devices
graph2ppt(fun=plot.fun, file=filen, aspectr=0.5, append = TRUE)
graph2doc(fun=plot.fun, file=filen, aspectr=0.5, append = TRUE)
### Formatting options:
# Disable vectorized image export (export as a bitmap)
graph2ppt(x=x, file=filen, vector.graphic=FALSE, width=9,
aspectr=sqrt(2), append = TRUE)
# Fill the slide with graph
graph2ppt(x=x, file=filen, margins=0, upscale=TRUE, append=TRUE)
# etc...

# Create a file name
#filen <- tempfile(pattern = "ggplot") # or
filen <- paste("D:/biotools/R/export/ggplot")
# Generate graphical output
library(ggplot2)
library(datasets)
x=qplot(Sepal.Length, Petal.Length, data = iris,
	color = Species, size = Petal.Width, alpha = I(0.7))
plot.fun <- function(){
	print(qplot(Sepal.Length, Petal.Length, data = iris,
	color = Species, size = Petal.Width, alpha = 0.7))
}
# There are 3 ways to use graph2vector():
### 1. Pass the plot as an object
graph2svg(x=x, file=filen, aspectr=2, font = "Times New Roman",
		height = 5, bg = "white")
graph2pdf(x=x, file=filen, aspectr=2, font = "Arial",
		height = 5, bg = "transparent")
graph2eps(x=x, file=filen, aspectr=2, font = "Arial",
		height = 5, bg = "transparent")

# Create a file name
#filen <- tempfile(pattern = "table_aov") # or
filen <- paste("D:/biotools/R/export/table_aov")
# Generate ANOVA output
fit=aov(yield ~ block + N * P + K, data = npk) # 'npk' dataset from base 'datasets'
# Save ANOVA table as a PPT
### Option 1: pass output as object
x=summary(fit)
table2ppt(x=x,file=filen, digits = 1, digitspvals = 3)
### Option 2: get output from console
summary(fit)
table2ppt(x=x,file=filen, width=5, font="Times New Roman", pointsize=14,
		digits=4, digitspvals=1, append=TRUE) 
# append table to previous slide
# Save ANOVA table as a DOC file
table2doc(x=x,file=filen, digits = 1, digitspvals = 3)
summary(fit)
table2doc(file=filen, width=3.5, font="Times New Roman", pointsize=14,
digits=4, digitspvals=1, append=TRUE) # append table at end of document







# Create a file name
#filen <- tempfile(pattern = "table_aov") # or
filen <- paste("D:/biotools/R/export/table_aov")
# Generate ANOVA output
fit=aov(yield ~ block + N * P + K, data = npk) # 'npk' dataset from base 'datasets'
x=summary(fit)
# Save ANOVA table as a CSV
### Option 1: pass output as object
table2csv(x=x,file=filen, digits = 1, digitspvals = 3)
### Option 2: get output from console
summary(fit)
table2csv(file=filen, digits = 2, digitspvals = 4)
# Save ANOVA table as an Excel
# Without formatting of the worksheet
x
table2excel(file=filen, sheetName="aov_noformatting",
		digits = 1, digitspvals = 3)
# With formatting of the worksheet
table2excel(x=x,file=filen, sheetName="aov_formated",
		append = TRUE, add.rownames=TRUE, fontName="Arial",
		fontSize = 14, fontColour = rgb(0.15,0.3,0.75),
		border=c("top", "bottom"), fgFill = rgb(0.9,0.9,0.9),
		halign = "center", valign = "center", textDecoration="italic")


