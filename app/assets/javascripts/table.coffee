$(document).on 'page:change', ->
#set marging for fixed nav so content is visible
    $(".menu-toggle").on "click", ->
        if  $(".tablet-menu .menu-toggle").hasClass("fa-bars")
            $(".tablet-menu .menu-toggle").removeClass("fa-bars").addClass("fa-times")
            $(".menu").slideToggle()
        else
            $(".tablet-menu .menu-toggle").addClass("fa-bars").fadeIn().removeClass("fa-times")
            $(".menu").slideToggle()

#on resize
#account for margin with fixed nav class
    $(window).resize ->
        if $('div').hasClass('menu-container fixed')
            $('.start-content').css 'margin-top', $('.menu-container').height() + 20
        if $(window).width() > 1023
            $('.menu').removeAttr('style');
            
    $(window).trigger 'resize'
    