let header = document.getElementById('header');
let up = document.getElementsByClassName("up")[0];

// header.style.backgroundColor = 'black';
//console.log(header);

let gallery_pic = document.get

//HeaderScroll
window.onscroll = function(){
    var scroll = window.pageYOffset;

    if (scroll>=50){
         header.style.padding = "20px 20px";
        header.style.backgroundColor = 'black';
        header.style.borderBottomColor = "black";
        up.style.padding = "40px 20px";
        up.style.backgroundColor = "black";
    } else{
        header.style.backgroundColor = "";
        header.style.padding = '40px 20px';
        header.style.borderBottomColor = "rgba(255, 255, 255, 0.35)";
        up.style.backgroundColor = "";
        up.style.padding = "60px 20px";

    }
};

function timer(player1,player2) {
    var op = 0;
    setTimeout(function func() {
        if (op > 1)
            return;
        document.getElementsByClassName(player1)[0].style.opacity = op;
        document.getElementsByClassName(player2)[0].style.opacity = op;
        op += 0.1;
        setTimeout (func, 60);
    }, 60);
}

//Banner
 window.onload = function (){
     setTimeout(() =>timer('morant','embiid'),0);
     setTimeout(() =>timer('harden','davis'),1000);
     setTimeout(() =>timer('tatum','provodnik'),2000);
 }

//Gallery
