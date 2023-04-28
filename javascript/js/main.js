const banner = document.getElementById("banner");
const img = document.getElementsByTagName("img");
const toggle = document.getElementById("toggle");

const banner_height = getComputedStyle(banner).height;
const cast = [];

function set_balloon(num) {
    let x, y, size, angle, speed;
    x = Math.floor(Math.random() * (500 - 10) + 10);
    y = Math.floor(Math.random() * (400 - 120) + 120);
    size = Math.floor(Math.random() * (200 - 100) + 100);
    angle = Math.floor(Math.random() * (360 - 0) + 0);
    speed = Math.random() * (2 - 0) + 0;

    cast[num] = {
        x: x,
        y: -y,
        size: size,
        angle: angle,
        speed: speed,
    };
}

function ball_init() {
    for (let i = 0; i < img.length; i++) {
        set_balloon(i);
        img[i].style.left = '-9999px'
        img[i].style.top = '-9999px'
    }
}

function animate_balloon() {
    for (let i = 0; i < img.length; i++) {
        img[i].style.left = cast[i].x + "px";
        img[i].style.top = cast[i].y + "px";
        img[i].style.transform = 'rotate(' + cast[i].angle + 'deg)';

        if (cast[i].y < parseInt(banner_height)) {
            cast[i].y += 1 + cast[i].speed;
            cast[i].angle += cast[i].speed;
        } else { // 벌룬이 밑으로 나가면
            set_balloon(i);
        }
    }
}

toggle.onclick = function () {
    let attr = banner.getAttribute("class");
    if (attr === "active") {
        banner.removeAttribute("class");
        toggle.innerHTML = "배너 열기";
        return false;
    } else {
        banner.setAttribute("class", "active");
        toggle.innerHTML = "배너 닫기"
        return false;
    }
}

ball_init();
setInterval(function () {
    animate_balloon();
}, 1000 / 30);