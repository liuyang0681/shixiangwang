#-------------------------------
# bidirectional MD to HTML to MD converter for Google Bookmark
library(rvest)
library(dplyr)

# HTML to Markdown Lists --------------------------------------------------
bookmark_page = read_html("./resources/bookmarks_2018_10_8.html")
bookmark_page

bookmark_page %>% html_nodes(xpath = "//DL")
 