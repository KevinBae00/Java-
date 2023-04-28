const $banner = $("#banner");
const $img = $banner.find("img");
const $toggle = $("#toggle");

const $banner_height = $banner.css("height");
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
    $img.each(function (i) {
        set_balloon(i);
        $img.eq(i).css("left", "-9999px")
            .css("top", "-9999px");
    });
}

function animate_balloon() {
    $img.each(function (i) {
        $img.eq(i)
            .css('left', cast[i].x + 'px')
            .css('top', cast[i].y + 'px')
            .css('transform', 'rotate(' + cast[i].angle + 'deg)');

        if (cast[i].y < parseInt($banner_height)) {
            cast[i].y += 1 + cast[i].speed;
            cast[i].angle += cast[i].speed;
        } else { // 벌룬이 밑으로 나가면
            set_balloon(i);
        }
    });
}

$toggle.click(function () {
    $banner.toggleClass("active");
    if ($banner.hasClass("active")) {
        $(this).html("배너 닫기")
    } else {
        $(this).html("배너 열기")
    }
})

ball_init();
setInterval(function () {
    animate_balloon();
}, 1000 / 30)