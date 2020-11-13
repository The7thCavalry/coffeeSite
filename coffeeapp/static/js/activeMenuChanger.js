$( document ).ready(function() {
        $('a.header-nav__link').click(function () {
            $('a.header-nav__link').removeClass("active");
            $(this).addClass("active");
        });
    });