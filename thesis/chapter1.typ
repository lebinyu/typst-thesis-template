#let title = [
  Title of Chapter 1
]

#let chaptnumber = 1

#let introduction = [
 // = this is a chapter <aaa>
  #lorem(20)
]
  
#let mainbody = [
  == subsetion test
  #lorem(50)  #cite("bruegge2004object")
  $ 1+1 = alpha $
  #lorem(400) #cite("allen1983theory")
  == subsection testtest
  $ 2+1 = beta $
  #lorem(500)

//   == Bibliography
//   #bibliography(title: none, "reference.bib")

]

// #let reference = [
//   == Bibliography
//   #bibliography(title: none, "reference.bib")
// ]
