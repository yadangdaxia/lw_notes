const sections = document.querySelectorAll('section');
const navLi = document.querySelectorAll('navigation .ul li');


//highlight navigation menu

window.addEventListener('scroll', ()=> {
    let current = '';

    sections.forEach( section => {
        const sectionTop = section.offsetTop;
        console.log(sectionTop)
    })

});