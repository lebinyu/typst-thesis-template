// import heading style
#import "global_style.typ": *

#let chapterpage(
    chapterheading: "",
    chaptnumber: int,
    introduction: "",
    mainbody: "",
    reference: "",
    title:""
) = {
  

  
    set page(
        margin: (x: 3cm, y:3cm),
        numbering: "1",
    )
 


    set page(footer: {
        counter(page).display((n) => {
            let side = if calc.rem(n, 2) == 0 { left } else { right }
            align(side, numbering("1", n))
        })
    })

    styleheading_chapter(chapterheading,chaptnumber)

    align(bottom)[#text(introduction)]

    pagebreak(weak: true)  



    set page(header: {
        counter(page).display((n) => {
            let side = if calc.rem(n, 2) == 0 { left } else { right }
            let headtext = if calc.rem(n, 2) == 0 { chapterheading } else { title }
            align(side, text(baseline: 10pt)[#headtext])
            line(length: 100%)
        })
    })

    mainbody
  
    pagebreak(weak: true)
    reference
}