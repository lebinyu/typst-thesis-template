#import "template/cover_style.typ": *
// #import "chapter1.typ"
// #import "chapter2.typ"
// #import "abstract.typ"
#import "template/global_style.typ"
#import "template/abstract_style.typ": *
#import "template/tableofcontent_style.typ": *
#import "template/chapter_style.typ": *

// test import
#import "template/reference_style.typ": *

//import matadata
#import "thesis/metadata.typ": *
#import "thesis/abstract.typ"
#import "thesis/chapter1.typ"
#import "thesis/chapter2.typ"
// #include "chapter1_test.typ"
// #include "chapter2.typ"

#cover(
  title: title,
  supervisor: supervisor,
  group_name: group_name,
  institute: institute,
  author: author,
  ID: ID, 
  address: address, 
  email: email, 
  closing_date: closing_date,
)

#abstractpage(mainbody: abstract.mainbody)

#tableofcontent()





#referencepage(mainbody: bibliography("reference.bib", title: none))



#chapterpage(
  chapterheading: chapter1.title,
  chaptnumber: chapter1.chaptnumber,
  introduction:chapter1.introduction, 
  mainbody: chapter1.mainbody, 
  title: title
)


#chapterpage(
  chapterheading: chapter2.title,
  chaptnumber: chapter2.chaptnumber,
  introduction:chapter2.introduction, 
  mainbody: chapter2.mainbody, 
  title: title

)
