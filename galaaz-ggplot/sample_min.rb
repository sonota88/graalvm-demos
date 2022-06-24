require "galaaz"
require "ggplot" # ... r_requires/ggplot.rb

d = R.data__frame(
  x: R.c( 1,  2,  4, 0.3, 2.5, 5.1),
  y: R.c(12, 13, 26,  22,  29,  54)
)

gg = d.ggplot(E.aes(x: :x, y: :y)) +
     R.geom_point()

R.svg("sample_min.svg")
puts gg
R.dev__off
