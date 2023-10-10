// import heading style
#import "global_style.typ": *

// make abstract page
#let abstractpage(
    mainbody: "",
) = {

    set page(
        numbering: "I",
    )
    counter(page).update(1)

    show: styleheading_head("Abstract", mainbody)

    set page(
        margin: (x: 3cm, y:2.5cm),
        header: none
    )

}


// #set page(
//     numbering: "I",
//     margin: (x: 3cm, y:2.5cm),
//     header: none
// )
// #counter(page).update(1)

// #styleheading1([Abstract])

// #include "./abstract.typ"
