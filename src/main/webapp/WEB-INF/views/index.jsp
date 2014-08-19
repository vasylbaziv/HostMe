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



    <section class="content-header">
    <h1>
        Dashboard <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
    </section>

    <section class="content"> 
    
     <!-- Main row -->
    <div class="row">

        <div class="col-md-12">
            <div class="box box-solid">
                <div class="box-header">
                    <h3 class="box-title">Carousel</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div id="carousel-example-generic"
                        class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic"
                                data-slide-to="0" class=""></li>
                            <li data-target="#carousel-example-generic"
                                data-slide-to="1" class="active"></li>
                            <li data-target="#carousel-example-generic"
                                data-slide-to="2" class=""></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item">
                                <img
                                    src="resources/images/index-hosting1.jpg"
                                    alt="First slide">
                                <div class="carousel-caption">
                                    First Slide</div>
                            </div>
                            <div class="item active">
                                <img
                                    src="resources/images/index-hosting2.jpg"
                                    alt="Second slide">
                                <div class="carousel-caption">
                                    Second Slide</div>
                            </div>
                            <div class="item">
                                <img
                                    src="resources/images/index-hosting3.jpg"
                                    alt="Third slide">
                                <div class="carousel-caption">
                                    Third Slide</div>
                            </div>
                        </div>
                        <a class="left carousel-control"
                            href="#carousel-example-generic"
                            data-slide="prev"> <span
                            class="glyphicon glyphicon-chevron-left"></span>
                        </a> <a class="right carousel-control"
                            href="#carousel-example-generic"
                            data-slide="next"> <span
                            class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>


        <!-- Left col -->

        <!-- /.Left col -->

        <!-- right col -->

        <!-- right col -->
    </div>
    <!-- /.row (main row) --> 
    
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>150</h3>
                    <p>New Orders</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer"> More info <i
                    class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
                <div class="inner">
                    <h3>
                        53<sup style="font-size: 20px">%</sup>
                    </h3>
                    <p>Bounce Rate</p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer"> More info <i
                    class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>44</h3>
                    <p>User Registrations</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer"> More info <i
                    class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>65</h3>
                    <p>Unique Visitors</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer"> More info <i
                    class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <!-- ./col -->
    </div>
    <!-- /.row --> 
    
    </section>

    </aside>
</body>
</html>
