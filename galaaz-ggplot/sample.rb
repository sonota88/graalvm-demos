require "galaaz"
require "ggplot"

d = R.data__frame(
  x: R.c( 1,  2,  4, 0.3, 2.5, 5.1),
  y: R.c(12, 13, 26,  22,  29,  54),
  type: R.c("系列1", "系列1", "系列1", "系列2", "系列2", "系列2")
)

gg = d.ggplot(E.aes(x: :x, y: :y, color: :type)) +
     R.geom_point() +
     R.xlim(R.c(0, 6)) +
     R.ylim(R.c(0, 60)) +
     R.geom_smooth(method: "glm", se: false) +
     R.ggtitle("タイトル") +
     R.xlab("x軸ラベル") +
     R.ylab("y軸ラベル")

R.svg("sample.svg")
puts gg
R.dev__off
