PageRank <- function (M, d, r, iter) {
  n <- ncol(M)
  v <- (M * d)  %*% r + rep((1-d)/n, 3)
  print(iter)
  print(v)
  if (iter > 0) {
    PageRank(M, d, v, iter-1)
  } else {
    v
  }
}

M <- matrix(c(0,0.5,0.5,0,0,1,0,0,1), 3,3)
r <- rep(1/3,3)
d <- 0.8
