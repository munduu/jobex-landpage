$(document).ready(function () {
    $('.courseCarousel').slick({
        rows: 2,
        dots: false,
        infinite: true,
        speed: 300,
        autoplay: true,
        slidesToShow: 3,
        centerMode: true,
        slidesToScroll: 1,
        nextArrow: '<i class="fas fa-chevron-right nextArrow"></i>',
        prevArrow: '<i class="fas fa-chevron-left previousArrow"></i>',
        responsive: [
            {
                breakpoint: 1300,
                settings: {
                    rows: 1,
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 850,
                settings: {
                    rows: 1,
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    arrows: false,
                }
            },
            {
                breakpoint: 600,
                settings: {
                    rows: 1,
                    arrows: false,
                    centerMode: false,
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
});