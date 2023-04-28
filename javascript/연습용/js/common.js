(function (win, $) {
    $(function () {
        $(document).on("mouseover focus", "#gnb > ul > li > a", gnbPlay);

        function gnbPlay() {
            const $ts = $(this);
            $("#gnb ul ul:visible").slideUp(300);
            $ts.next().stop(true, true).slideDown(300);
        }
    });
}(window, jQuery));
