#import "template.typ": *
#import "chapter1.typ"
#import "chapter2.typ"
#import "abstract.typ"



#let title = "This is the Title of this Thesis"
#titlepage(
  title: title,
  supervisor:("Prof. Dr. Tom DEF",),
  group_name: "Physics Group",
  institute: "Institute of Physics",
  author: "Jerry ABC",
  ID: "12-345-678", 
  address: ("Street 7", "Zurich"), 
  email: "Jerry.ABC@uzh.ch", 
  closing_date: "Feburary 30, 2077",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

#abstractpage(mainbody: abstract.mainbody)


#tableofcontent()


#abstractpage(mainbody: abstract.mainbody)
#abstractpage(mainbody: abstract.mainbody)

//#outline(indent: true,title: "Table of Content")

#set heading(numbering: "1.1")



#chapterpage(
  chapterheading: chapter1.title,
  introduction:chapter1.introduction, 
  mainbody: chapter1.mainbody, 
  title: title
)


#chapterpage(
  chapterheading: chapter2.title,
  introduction:chapter2.introduction, 
  mainbody: chapter2.mainbody, 
  title: title
)

#lorem(300)
== Theory A
#lorem(300)
== Theory B
#lorem(300)
=== Theory B b
#lorem(300)
== Theory C
#lorem(40)

#pagebreak()

= Experiment
#lorem(500)
  
//#pagebreak()

#set page(
  header: none)

//#lorem(5000)