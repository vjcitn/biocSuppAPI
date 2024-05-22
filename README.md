# biocSuppAPI
interrogate the API of support.bioconductor.org

Primary function is `getpost` which operates on a post id
to retrieve metadata and post content.

```
> example(getpost)

getpst> mp = getpost("5905")

getpst> cmp = httr::content(mp)

getpst> names(cmp)
 [1] "answer_count"      "author"            "author_uid"       
 [4] "book_count"        "comment_count"     "content"          
 [7] "creation_date"     "has_accepted"      "id"               
[10] "lastedit_date"     "lastedit_user_uid" "parent_id"        
[13] "rank"              "reply_count"       "root_id"          
[16] "status"            "status_id"         "subs_count"       
[19] "tag_val"           "thread_score"      "title"            
[22] "type"              "type_id"           "uid"              
[25] "url"               "view_count"        "vote_count"       
[28] "xhtml"            

getpst> cmp$title
[1] "Human Genome U133 Plus 2.0 Array"
```
