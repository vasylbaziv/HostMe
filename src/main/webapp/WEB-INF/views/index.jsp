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
