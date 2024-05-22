#' use GET to get a single post from support.bioconductor.org API
#' @import httr
#' @param uid a character(1) identifier 'uid' in the support API
#' @examples
#' mp = getpost("5905")
#' cmp = httr::content(mp)
#' names(cmp)
#' cmp$title
#' @export
getpost = function(uid) {
  stopifnot(length(uid)==1L)
  httr::GET(sprintf("https://support.bioconductor.org/api/post/%s", uid))
}

