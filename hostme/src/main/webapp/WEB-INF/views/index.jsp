<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Host me</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
    <div id="pageUp"></div>


    <!--Carousel-->
    <div id="myCarousel" class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0"
                class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" style="margin-top: 40px">
            <div class="item active">
                <div class="fill">
                    <img src="resources/images/picture.jpg" class="displayed">
                </div>
            </div>
            <div class="item">
                <div class="fill">
                    <img src="resources/images/picture2.jpg" class="displayed">
                </div>
            </div>
            <div class="item">
                <div class="fill">
                    <img src="resources/images/picture3.jpg" class="displayed">
                </div>
            </div>
            <div class="item">
                <div class="fill">
                    <img src="resources/images/picture4.jpg" class="displayed">
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel"
            data-slide="prev"> <span class="icon-prev"></span>
        </a> <a class="right carousel-control" href="#myCarousel"
            data-slide="next"> <span class="icon-next"></span>
        </a>
    </div>
    <!--Carousel-->

    <div class="container" style="text-align: justify;">

        <div class="row" style="margin-top: 10px">
            <div>
                <h1 class="col-md-7 col-md-offset-2">
                    <img src="resources/images/house_icon.jpg"
                        style="width: 40px; float: left; margin-left: 50px; margin-right: 100px"></img>Find
                    accommodation
                </h1>
            </div>
        </div>


        <div class="col-md-8 col-md-offset-2" id="article1">
            <h1>
                <small>Surfing tips</small>
            </h1>
            <ul>
                <li>Read the host's profile and send them a
                    thoughtful, personalized message</li>
                <li>Be clear about your expectations and plans</li>
                <li>Be a respectful guest and stay curious</li>
            </ul>
        </div>


        <div class="row">
            <div>
                <h1 class="col-md-7 col-md-offset-2">
                    <img src="resources/images/couch_icon.jpg"
                        style="width: 40px; padding-top: 8px; float: left; margin-left: 50px; margin-right: 100px"></img>Search
                    for hosts
                </h1>
            </div>
        </div>

<<<<<<< HEAD
			<div class="col-md-8 col-md-offset-2">
				<blockquote id="article1">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Donec semper est sed justo lacinia, ac
					sodales eros convallis. Vestibulum ante ipsum primis in faucibus
					orci luctus et ultrices posuere cubilia Curae; Aliquam at pharetra
					ligula, id molestie nisi. Vestibulum ante ipsum primis in faucibus
					orci luctus et ultrices posuere cubilia Curae; Quisque auctor
					sagittis augue. Proin a nulla a enim semper pharetra. Duis et
					eleifend eros. Suspendisse bibendum varius felis, id hendrerit quam
					egestas nec. Proin non ante massa. Pellentesque habitant morbi
					tristique senectus et netus et malesuada fames ac turpis egestas.
					Aliquam ut velit sit amet nibh commodo congue a ut ligula. Sed id
					nisi quis ligula dignissim luctus. Sed egestas urna feugiat aliquam
					euismod. Ut mattis mi non sollicitudin mattis. Fusce in neque quis
					massa tincidunt vestibulum. Ut ipsum dui, auctor tempor ante ut,
					hendrerit dapibus nulla. Aenean tincidunt nulla felis, et pharetra
					purus viverra eu. Sed viverra neque ut nibh fringilla faucibus vel
					eu odio. Cras at diam commodo, ornare urna cursus, hendrerit dui.
					Duis id nibh non mauris volutpat congue mattis a magna. Etiam
					euismod dui velit, non mattis purus auctor eu. Fusce non ante
					interdum, pretium risus ac, vehicula libero. Phasellus blandit
					velit felis, ac luctus ipsum ullamcorper id. Maecenas sagittis leo
					dui, non pharetra ante vehicula eu. Aliquam rutrum lacus sed mauris
					ullamcorper, nec lobortis mi faucibus. Sed at orci a urna consequat
					tempus. Nulla blandit ut nunc et pellentesque. Ut at tempus purus.
					In nec ipsum sit amet augue convallis fermentum quis vel tellus.
					Nunc ac nisl sit amet nulla sollicitudin iaculis a ac massa. Sed
					sed lacinia nibh. Cras eu magna dictum, dignissim mauris sed,
					placerat leo. Morbi enim arcu, porttitor vitae imperdiet commodo,
					dignissim ut justo. Fusce aliquet nulla nulla, et interdum ligula
					euismod ac. In elementum lectus a mauris egestas. lectus a mauris
					egestas. lectus a mauris egestas. lectus a mauris egestas. lectus a
					mauris egestas.</blockquote>
			</div>
			<div class="col-md-3 col-md-offset-5">
				<h1>Something else</h1>
			</div>
			<div class="col-md-8 col-md-offset-2">
				<blockquote id="article2">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Donec semper est sed justo lacinia, ac
					sodales eros convallis. Vestibulum ante ipsum primis in faucibus
					orci luctus et ultrices posuere cubilia Curae; Aliquam at pharetra
					ligula, id molestie nisi. Vestibulum ante ipsum primis in faucibus
					orci luctus et ultrices posuere cubilia Curae; Quisque auctor
					sagittis augue. Proin a nulla a enim semper pharetra. Duis et
					eleifend eros. Suspendisse bibendum varius felis, id hendrerit quam
					egestas nec. Proin non ante massa. Pellentesque habitant morbi
					tristique senectus et netus et malesuada fames ac turpis egestas.
					Aliquam ut velit sit amet nibh commodo congue a ut ligula. Sed id
					nisi quis ligula dignissim luctus. Sed egestas urna feugiat aliquam
					euismod. Ut mattis mi non sollicitudin mattis. Fusce in neque quis
					massa tincidunt vestibulum. Ut ipsum dui, auctor tempor ante ut,
					hendrerit dapibus nulla. Aenean tincidunt nulla felis, et pharetra
					purus viverra eu. Sed viverra neque ut nibh fringilla faucibus vel
					eu odio. Cras at diam commodo, ornare urna cursus, hendrerit dui.
					Duis id nibh non mauris volutpat congue mattis a magna. Etiam
					euismod dui velit, non mattis purus auctor eu. Fusce non ante
					interdum, pretium risus ac, vehicula libero. Phasellus blandit
					velit felis, ac luctus ipsum ullamcorper id. Maecenas sagittis leo
					dui, non pharetra ante vehicula eu. Aliquam rutrum lacus sed mauris
					ullamcorper, nec lobortis mi faucibus. Sed at orci a urna consequat
					tempus. Nulla blandit ut nunc et pellentesque. Ut at tempus purus.
					In nec ipsum sit amet augue convallis fermentum quis vel tellus.
					Nunc ac nisl sit amet nulla sollicitudin iaculis a ac massa. Sed
					sed lacinia nibh. Cras eu magna dictum, dignissim mauris sed,
					placerat leo. Morbi enim arcu, porttito ipsum dolor sit amet,
					consectetur adipiscing elit. Donec semper est sed justo lacinia, ac
					sodales eros convallis. Vestibulum ante ipsum primis in faucibus
					orci luctus et ultrices posuere cubilia Curae; Aliquam at pharetra
					ligula, id</blockquote>
			</div>
		</div>
		<script type="text/javascript">
			$('#myCarousel').carousel({
				interval : 5000
			});
		</script>
		<script>
			$('a[href*=#]:not([href=#myCarousel])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										&& location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body')
												.animate(
														{
															scrollTop : target
																	.offset().top - 50
														}, 1000);
										return false;
									}
								}
							});
			</script>


    <script>
                    $('a[href*=#]:not([href=#myCarousel])')
                            .click(
                                    function() {
                                        if (location.pathname
                                                .replace(/^\//, '') == this.pathname
                                                .replace(/^\//, '')
                                                && location.hostname == this.hostname) {
                                            var target = $(this.hash);
                                            target = target.length ? target
                                                    : $('[name='
                                                            + this.hash
                                                                    .slice(1)
                                                            + ']');
                                            if (target.length) {
                                                $('html,body')
                                                        .animate(
                                                                {
                                                                    scrollTop : target
                                                                            .offset().top - 50
                                                                }, 1000);
                                                return false;
                                            }
                                        }
                                    });
                    function createOverlay() {
                        var docHeight = $(document).height();

                        $("<div id='overlay'></div>").appendTo("#someElement")
                                .height(docHeight).css({
                                    'opacity' : 0.4,
                                    'position' : 'absolute',
                                    'top' : 0,
                                    'left' : 0,
                                    'background-color' : 'black',
                                    'width' : '25%',
                                    'height' : '25%',
                                    'z-index' : 5000
                                });
                    }
                </script>
</body>
</html>
