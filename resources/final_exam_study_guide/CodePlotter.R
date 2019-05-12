################################################################################
#                                                                              #
#         Code for Plotting Distributions and including them in Latex          #
#                                                                              #
################################################################################

library(tikzDevice)
library(ggplot2)

# Creating the plot
setwd("C:/Users/Mark/Dropbox/Graduate School/04) GSI/Final Exam One Pager")


# Creat tikz device
tikz(file = "fdist.tex", width = 3.5, height = 2.0)
dat <- data.frame(a = 0, b = 0)
# ggplot object
ggplot(dat) + 
  stat_function(fun = function(x) {df(x = x, df1 = 1, df2 = 1)}, aes(color = "$F_{1,1}$"), lwd = 1.0, lty = 1, n = 400) + 
  # stat_function(fun = function(x) {df(x = x, df1 = 2, df2 = 1)}, aes(color = "$F_{2,1}$"), lwd = 1.5, lty = 1) + 
  stat_function(fun = function(x) {df(x = x, df1 = 10, df2 = 1)}, aes(color = "$F_{10,1}$"), lwd = 1.0, lty = 1) + 
  stat_function(fun = function(x) {df(x = x, df1 = 100, df2 = 100)}, aes(color = "$F_{100,100}$"), lwd = 1.0, lty = 1) + 
  scale_x_continuous(limits = c(0,2.25), expand = c(0,0)) + 
  scale_y_continuous(limits = c(0, 2.5), expand = c(0,0)) +
  # scale_color_brewer(palette = "Set1") +
  ggtitle("$F$ Distribution", subtitle = "Notice, its always skewed right") + 
  labs(x = "$F$", y = "Density", color = "Distribution") + 
  ggthemes::scale_color_gdocs() +
  ggthemes::theme_tufte()

dev.off()


# Creat tikz device
tikz(file = "chidist.tex", width = 3.5, height = 2.0)
dat <- data.frame(a = 0, b = 0)
# ggplot object
ggplot(dat) + 
  stat_function(fun = function(x) {dchisq(x = x, df = 1)}, aes(color = "$\\chi^2_{1}$"), lwd = 1.0, lty = 1, n = 400) + 
  stat_function(fun = function(x) {dchisq(x = x, df = 2)}, aes(color = "$\\chi^2_{2}$"), lwd = 1.0, lty = 1, n = 400) + 
  stat_function(fun = function(x) {dchisq(x = x, df = 3)}, aes(color = "$\\chi^2_{3}$"), lwd = 1.0, lty = 1, n = 400) + 
  stat_function(fun = function(x) {dchisq(x = x, df = 4)}, aes(color = "$\\chi^2_{4}$"), lwd = 1.0, lty = 1, n = 400) + 
  stat_function(fun = function(x) {dchisq(x = x, df = 6)}, aes(color = "$\\chi^2_{6}$"), lwd = 1.0, lty = 1, n = 400) + 
  stat_function(fun = function(x) {dchisq(x = x, df = 9)}, aes(color = "$\\chi^2_{9}$"), lwd = 1.0, lty = 1, n = 400) + 
  scale_x_continuous(limits = c(0,8), expand = c(0,0)) + 
  scale_y_continuous(limits = c(0, 0.5), expand = c(0,0)) +
  ggtitle("$\\chi^2$ Distribution") + 
  labs(x = "$\\chi^2$", y = "Density", color = "Distribution") + 
  ggthemes::scale_color_gdocs() +
  ggthemes::theme_tufte()

dev.off()

