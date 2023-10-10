// #import "reference.bib"
#let title = [
  Title of chapter 2
]

#let chaptnumber = 2

#let introduction = [
 // = this is a chapter <aaa>
  #lorem(20)
]
  
#let mainbody = [
  == subsetion test
  #lorem(50)
  $ F = m a $
  #lorem(400) 
  #cite("wilson1983superconducting")
  == subsection testtest
  $ 2+1 = beta $
  #lorem(500)

//   == Bibliography
//   #bibliography(title: none, "reference2.bib")
]
