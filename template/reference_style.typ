// import heading style
#import "global_style.typ": *

// make abstract page
#let referencepage(
    mainbody: "",
) = {

    set page(
        numbering: "I",
    )
    // counter(page).update(1)

    show: styleheading_head("Reference", mainbody)

    set page(
        margin: (x: 3cm, y:2.5cm),
        header: none
    )
    // mainbody
}