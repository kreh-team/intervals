detach_overlaps <- function(x) {
  # Replicate plot.Intervals() processing
  x <- as(x, "Intervals_full")

  # Call C++ routine to get non-overlapping groups
  groups <- .Call("_plot_overlap", x@.Data, closed(x), is(x, "Intervals_full"))

  return(groups)
}
