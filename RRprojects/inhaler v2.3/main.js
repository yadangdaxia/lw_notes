
console.log('hello world');


function checker(entries) {
    entries.forEach(entry => {
        console.log(entry);
    });
}

const sections = document.querySelectorAll('section');

const options = {
    threshold: 0.7
};

let observer = new IntersectionObserver(navCheck, options);

function navCheck(entries) {
    entries.forEach(entry => {
        const className = entry.target.className;
            console.log(className);
    });
}

sections.forEach(section => {
    observer.observe(section);
})




// function activeLinkControl() {
//    $('.navigation ul li a').click(function() {
//        //remove active class from any nav-item
//        $(this).closest('nav-item').siblings().removeClass('active')
//        // add active class to clicked item at li
//        $(this).closest('nav-item').addClass('active')
//    })
// }


