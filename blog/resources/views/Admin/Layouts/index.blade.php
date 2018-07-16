<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>{{ config('app.name', 'Laravel') }}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        	

        <script src="/admin/plugins/jquery-1.11.3.min.js"></script>
        <!-- App css -->
        <link href="/admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="/admin/assets/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="/admin/assets/css/style.css" rel="stylesheet" type="text/css" />

        <script src="/admin/assets/js/modernizr.min.js"></script>
        
        <script type="text/javascript" charset="utf-8" src="/uedit/ueditor.config.js"></script>
	    <script type="text/javascript" charset="utf-8" src="/uedit/ueditor.all.min.js"> </script>
	    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	    <script type="text/javascript" charset="utf-8" src="/uedit/lang/zh-cn/zh-cn.js"></script>
       

    </head>


    <body>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">

                <div class="slimscroll-menu" id="remove-scroll">

                    <!-- LOGO -->
                    <div class="topbar-left">
                        <a href="/admin/index" class="logo">
                            <span>
                                <img src="/Uploads/images/logo.jpg" alt="" height="70">
                            </span>
                            <i>
                                <img src="/Uploads/images/logo.jpg" alt="" height="80">
                            </i>
                        </a>
                    </div>

                    <!-- User box -->
                    <div class="user-box">
                        <div class="user-img">
                            <img src="/Uploads/images/touxiang.jpg" alt="user-img" title="Mat Helme" class="rounded-circle img-fluid">
                        </div>
                        <h5><a href="#">{{ Auth::user()->name }}</a> </h5>
                        <p class="text-muted">一个程序员</p>
                    </div>

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">

                        <ul class="metismenu" id="side-menu">

                            <!--<li class="menu-title">Navigation</li>-->

                            <li>
                                <a href="/admin/index">
                                    <i class="fi-air-play"></i><span> 仪表盘 </span>
                                </a>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><i class="fi-layers"></i> <span> 个人信息 </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="/admin/info">个人信息</a></li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="javascript: void(0);"><i class="fa-clipboard"></i> <span> 板块管理 </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="/admin/type">板块分区</a></li>
                                    <li><a href="/admin/list">板块管理</a></li>
                                    <li><a href="/admin/post">发表文章</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><i class="fi-mail"></i><span> 留言管理 </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="/admin/article">文章留言</a></li>
                                    <li><a href="/admin/message">网站留言</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);"><i class="fi-bar-graph-2"></i><span> 网站设置 </span> <span class="menu-arrow"></span></a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="/admin/set">网站设置</a></li>
                                    <li><a href="/admin/major">管理员设置</a></li>
                                </ul>
                            </li>

                           
                        </ul>

                    </div>
                    <!-- Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->

            <div class="content-page">

                <!-- Top Bar Start -->
                <div class="topbar">

                    <nav class="navbar-custom">

                        <ul class="list-unstyled topbar-right-menu float-right mb-0">
                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle nav-user" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    <img src="/Uploads/images/touxiang.jpg" alt="user" class="rounded-circle"> <span class="ml-1">{{ Auth::user()->name }}<i class="mdi mdi-chevron-down"></i> </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated profile-dropdown ">
                                    <!-- item-->
                                    <div class="dropdown-item noti-title">
                                        <h6 class="text-overflow m-0">Welcome !</h6>
                                    </div>

                                    <!-- item-->
                                    <a href="/admin/info" class="dropdown-item notify-item">
                                        <i class="fi-head"></i> <span>管理员信息</span>
                                    </a>

                                    <!-- item-->
                                    <a href="/admin/set" class="dropdown-item notify-item">
                                        <i class="fi-cog"></i> <span>网站设置</span>
                                    </a>

                                    <!-- item-->
                                    <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" class="dropdown-item notify-item">
                                                     <i class="fi-outbox"></i>退出
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>

                                </div>
                            </li>

                        </ul>

                        <ul class="list-inline menu-left mb-0">
                            <li class="float-left">
                                <button class="button-menu-mobile open-left disable-btn">
                                    <i class="dripicons-menu"></i>
                                </button>
                            </li>
                            <li>
                                <div class="page-title-box">
                                    <h4 class="page-title">@yield('title')</h4>
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item active">@yield('slogan')</li>
                                    </ol>
                                </div>
                            </li>

                        </ul>

                    </nav>

                </div>
                <!-- Top Bar End -->



                <!-- Start Page content -->
                <div class="content continer">
                	@section('content')
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="card-box">
                                    <h2>欢迎来到后台主页！</h2>
                                    <h3>现在的时间是：<?= date('Y-m-d H:i:s') ?></h3>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                    </div> <!-- container -->
				@show
                </div> <!-- content -->

                <footer class="footer text-right">
                    2018 © 支子花. - www.about1990s.com
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->



        <!-- jQuery  -->
           <script src="/admin/assets/js/jquery.min.js"></script>
           <script src="/admin/assets/js/popper.min.js"></script>
           <script src="/admin/assets/js/bootstrap.min.js"></script>
           <script src="/admin/assets/js/metisMenu.min.js"></script>
           <script src="/admin/assets/js/waves.js"></script>
           <script src="/admin/assets/js/jquery.slimscroll.js"></script>

        <!-- Flot chart -->
           <script src="/admin/plugins/flot-chart/jquery.flot.min.js"></script>
           <script src="/admin/plugins/flot-chart/jquery.flot.time.js"></script>
           <script src="/admin/plugins/flot-chart/jquery.flot.tooltip.min.js"></script>
           <script src="/admin/plugins/flot-chart/jquery.flot.resize.js"></script>
           <script src="/admin/plugins/flot-chart/jquery.flot.pie.js"></script>
           <script src="/admin/plugins/flot-chart/jquery.flot.crosshair.js"></script>
           <script src="/admin/plugins/flot-chart/curvedLines.js"></script>
           <script src="/admin/plugins/flot-chart/jquery.flot.axislabels.js"></script>

        <!-- KNOB JS -->
        <!--[if IE]>
        <script type="text/javascript" src="../plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
           <script src="/admin/plugins/jquery-knob/jquery.knob.js"></script>

        <!-- Dashboard Init -->
           <script src="/admin/assets/pages/jquery.dashboard.init.js"></script>

        <!-- App js -->
           <script src="/admin/assets/js/jquery.core.js"></script>
           <script src="/admin/assets/js/jquery.app.js"></script>
           
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('content');
    

</script>
    </body>
    
</html>