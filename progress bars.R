## Progress bars in purrr 

# the old dplyr version 
myfn <- function(pb){
  pb$tick()$print()
  #stuff
}

wrapper <- function(){
  # Pretend I have a dat argument to loop over
  pb <- dplyr::progress_estimated(1000)
  purrr::map(dat, .f = ~myfn, pb)
}

# The new way with package progress
myfn <- function(pb){
  pb$tick()
  #stuff
}

wrapper <- function(){
  # Pretend I have a dat argument to loop over
  pb <- progress::progress_bar$new()
  purrr::map(dat, .f = ~myfn, pb)
}