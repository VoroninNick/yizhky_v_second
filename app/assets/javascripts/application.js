// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require fancybox
//= require jquery.inview.min.js
//= require ckeditor/init
//= require owl.carousel
//= require_tree .


//$(function() {
//    $('a[href*=#]:not([href=#])').click(function() {
//        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
//            var target = $(this.hash);
//            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
//            if (target.length) {
//                $('html,body').animate({
//                    scrollTop: target.offset().top
//                }, 1000);
//                return false;
//            }
//        }
//    });
//});


//$(document).ready(function(e){
//
//
//    // User profile menu
//    var $li_user_profile = $(".dashboard-navigation ul li");
//    var $li_user_current = $(".dashboard-navigation ul .current");
//    var $ul_holder_user = $(".dashboard-navigation");
//
//    console.log("Dashboard has " + $li_user_profile.length + " menus to choose!");
//
//    //window.onresize = function(event) {
//        if(window.outerWidth < 720){
//            $ul_holder_user.click(function(e){
//                if($(this).height() == 61){
//                    $(this).height($li_user_profile.length*61);
//                    $li_user_profile.show();
//                }else{
//
//
//                    $li_user_profile.hide();
//                    $li_user_current.show();
//
//                    $(this).height('61');
//                }
//            });
//        }else{
//            $ul_holder_user.click(function(e){
//                //e.preventDefault();
//            });
//        }
//    //};
//
//
//
//    //$(".restoran-menu ul li button").click(function(){
//    //    if($(".restoran-menu ul li button").hasClass('active')){
//    //        $(".restoran-menu ul li").addClass('current');
//    //    }else{
//    //        $(".restoran-menu ul li").removeClass('current');
//    //    }
//    //});
//
//
//    $(window).scroll(function() {
//        //var url = $('.pagination .next_page').attr('href');
//        if ($(window).scrollTop() > $(document).height() - $(window).height() - 590) {
//            //swal("At the end!")
//        }
//    });





    //$(".recommended-item").bind('touchstart', function(e) {
    //    if($('.recommended-item .recommended-wrapper .product_item').hasClass('active_mob')){
    //        //alert('has!');
    //        $('.recommended-item .recommended-wrapper .product_item').removeClass('active_mob');
    //    }else{
    //        //alert('no!');
    //        $('.recommended-item .recommended-wrapper .product_item').addClass('active_mob');
    //    }
    //});

    //$('.recommended-item').bind('touchstart', function(event){
    //    event.stopPropagation(); //Make all touch events stop at the .filters ul.children container element
    //    event.preventDefault();
    //    if($('.recommended-item .recommended-wrapper .product_item').hasClass('rw-pi')){
    //        $('.recommended-item .recommended-wrapper .product_item').removeClass('rw-pi');
    //    }else{
    //       $('.recommended-item .recommended-wrapper .product_item').addClass('rw-pi');
    //    }
    //});





//});



$(function(){ $(document).foundation(); });
