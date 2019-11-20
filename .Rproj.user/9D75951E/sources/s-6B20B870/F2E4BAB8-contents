
  plot_test = function(index, N = 10000) {

    N = 10000
    data = rjh(N, index)
    x = seq(0, 1, by = 0.001)
    hist(rjh(N, index), breaks = 100, freq = FALSE)
    lines(x, djh(x, index))

    plot(ecdf(data))
    lines(x, pjh(x, index), col = "red")

  }

  plot_test(1)
  plot_test(15)