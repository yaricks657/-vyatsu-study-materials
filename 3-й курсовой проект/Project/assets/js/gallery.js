var atlanta = document.getElementsByClassName("atlanta_img")[0];
var atlanta_text = document.getElementsByClassName("atlanta_text")[0];
var blur=0;
var font_size=100;
var reg = 0;
const kek = document.getElementById('kek');

function team_enter(team,text){
        setTimeout(function funct(){
            if (blur > 4)
                return;
            blur+=0.1;
            font_size+=1;
            team.style.filter = 'blur('+blur+'px)';
            text.style.fontSize=font_size+'px';
            setInterval(funct,30);
        },0);
};

function team_leave(team,text){

    setTimeout(function func(){
        if (blur <= 0)
            return;
        blur-=0.1;
        font_size-=1;
        team.style.filter = 'blur('+blur+'px)';
        text.style.fontSize=font_size+'px';
        setInterval(func,30);
    },0);
};

//if (reg==0){
//atlanta_text.onmouseover=team_enter(atlanta,atlanta_text)
//atlanta_text.onmouseout=team_leave(atlanta,atlanta_text)

function  handlerr(event){
  //  function team_enter(team,text){
        setTimeout(function funct(){
            if (blur > 4)
                return;
            blur+=0.1;
            font_size+=1;
            atlanta.style.filter = 'blur('+blur+'px)';
            atlanta_text.style.fontSize=font_size+'px';
            setInterval(funct,30);
        },0);
    //};
}

function handler(event){
 //   function team_leave(team,text){
//if (event=='mouseout'){
        setTimeout(function func(){
            if (blur <= 0)
                return;
            blur-=0.1;
            font_size-=1;
            atlanta.style.filter = 'blur('+blur+'px)';
            atlanta_text.style.fontSize=font_size+'px';
            setInterval(func,30);
        },0);//}
}

kek.addEventListener("mouseover",handlerr);
//reg=1;
//} else{
kek.addEventListener("mouseout",handler);
//reg=0;
//}


//document.getElementById("YarikPidor").addEventListener("mouseover",() => team_enter(atlanta, atlanta_text));
//document.getElementById("YarikPidor").addEventListener("mouseout",() => team_leave(atlanta, atlanta_text));