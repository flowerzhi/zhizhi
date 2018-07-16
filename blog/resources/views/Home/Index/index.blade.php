<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>{{$web->webname}}</title>

		<link rel="stylesheet" type="text/css" href="/css/bootstrap-3.3.4.css">
		<link rel='stylesheet' type='text/css' href="/css/linea.css">
		<link rel='stylesheet' type='text/css' href="/css/ionicons.min.css">
		<link rel='stylesheet' type='text/css' href="/css/owl.carousel.css">
		<link rel='stylesheet' type='text/css' href="/css/magnific-popup.css">
		<link rel='stylesheet' type='text/css' href="/css/style.css">

		<link rel="shortcut icon" href="/img/favicon.png">
			

	</head>
	<body>

		<div id='preloader'>
			<div class='loader'></div>
			<div class='left'></div>
			<div class='right'></div>
		</div>
		<div class='main-content'>

			<div class='page-border border-left'></div>
			<div class='page-border border-right'></div>
			<div class='page-border border-top'></div>
			<div class='page-border border-bottom'></div>

			<a href='#' class='menu-btn'>
				<span class='lines'> <span class='l1'></span> <span class='l2'></span> <span class='l3'></span> </span>
			</a>

			<div class='menu'>
				<div class='inner'>
					<ul class='menu-items'>
						<li>
							<a href='#' class='section-toggle' data-section='intro'>
								首页
							</a>
						</li>
						<li>
							<a href='/home/index/#about' class='section-toggle' data-section='about'>
								关于我
							</a>
						</li>
						<li>
							<a href='/home/index/#resume' class='section-toggle' data-section='resume'>
								过往
							</a>
						</li>
						<li>
							<a href='/home/index/#portfolio' class='section-toggle' data-section='portfolio'>
								blog
							</a>
						</li>
						<li>
							<a href='/home/index/#contact' class='section-toggle' data-section='contact'>
								联系我
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class='animation-block'></div>
			<div class='sections'>
				<section id='intro' class='section section-main active'>
					<div class='container-fluid'>
						<div class='v-align'>
							<div class='inner'>
								<div class='intro-text'>
									<h1>{{$web->webname}}</h1>
									<p>
										Some people change your life forever
									</p>
									<p>
										I'm IvanZhi
									</p>
									<div class='intro-btns'>
										<a href='#about' class='btn-custom section-toggle' data-section='about'>
											了解我
										</a>
										<a href='#contact' class='btn-custom section-toggle' data-section='contact'>
											联系我
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section id='about' class='section about-section border-d'>
					<div class='section-block about-block'>
						<div class='container-fluid'>
							<div class='section-header'>
								<h2>个人简介 <strong class='color'>I'm a Programmer</strong></h2>
							</div>
							<div class='row'>
								<div class='col-md-5'>
									<ul class='info-list'>
										<li>
											<strong>Name:</strong>
											<span>{{$intro->name}}</span>
										</li>
										<li>
											<strong>Job:</strong>
											<span>{{$intro->job}}</span>
										</li>
										<li>
											<strong>Age:</strong>
											<span>{{$intro->age}}</span>
										</li>
										<li>
											<strong>Hometown:</strong>
											<span>{{$intro->hometown}}</span>
										</li>
										<li>
											<strong>School:</strong>
											<span>{{$intro->school}}</span>
										</li>
										<li>
											<strong>Major:</strong>
											<span>{{$intro->major}}</span>
										</li>
									</ul>
								</div>
								<div class='col-md-7'>
									<div class='about-text' style="min-height: 300px;text-indent: 2em;padding: 30px;line-height: 25px;">
										<p>
											{{$intro->workintro}}
										</p>
									</div>
									<div class='about-btns' style="text-align: center;">
										<a href='/home/index/#portfolio' class='btn-custom btn-color'>
											博客
										</a>
										<a href='/home/index/#contact' class='btn-custom btn-color'>
											联系我
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class='section-block services-block'>
						<div class='container-fluid'>
							<div class='section-header'>
								<h2>人生足迹 <strong class='color'>Past Experience</strong></h2>
							</div>
							<div class='row'>
								@foreach($job as $v)
								<div class='col-md-4' style="margin-bottom: 10px;">
									<div class='service' style="min-height: 300px;">
										<div class='icon'>
											<i class='{{$v->logo}}'></i>
										</div>
										<div class='content'>
											<h4>{{$v->jobname}}</h4>
											<p>
												{{$v->intro}}
											</p>
										</div>
									</div>
								</div>
								@endforeach
							</div>
						</div>
					</div>
					<div class='section-block skills-block'>
						<div class='container-fluid'>
							<div class='section-header'>
								<h2>工作技能<strong class='color'> My Skills</strong></h2>
							</div>
							<div class='row'>
								<div class='col-md-6'>
									<div class='skill'>
										<h4>HTML/CSS 静态页面</h4>
										<div class='bar'>
											<div class='percent' style='width:95%;'></div>
										</div>
									</div>
									<div class='skill'>
										<h4>JavaScript / jQuery 动效</h4>
										<div class='bar'>
											<div class='percent' style='width:95%;'></div>
										</div>
									</div>
									<div class='skill'>
										<h4>Vue 前端框架</h4>
										<div class='bar'>
											<div class='percent' style='width:90%;'></div>
										</div>
									</div>
								</div>
								<div class='col-md-6'>
									<div class='skill'>
										<h4>PHP</h4>
										<div class='bar'>
											<div class='percent' style='width:85%;'></div>
										</div>
									</div>
									<div class='skill'>
										<h4>ThinkPHP</h4>
										<div class='bar'>
											<div class='percent' style='width:95%;'></div>
										</div>
									</div>
									<div class='skill'>
										<h4>Laravel</h4>
										<div class='bar'>
											<div class='percent' style='width:90%;'></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section id='resume' class='section resume-section border-d'>
					<div class='section-block timeline-block'>
						<div class='container-fluid'>
							<div class='section-header'>
								<h2>工作经历 <strong class='color'>Work Experience</strong></h2>
							</div>
							<ul class='timeline'>
								@foreach($work as $v)
								<li>
									<div class='timeline-content'>
										<h4 style="color: lightseagreen;">{{$v->company}} {{$v->time}}</h4>
										<span>{{$v->city}}</span><span>{{$v->job}}</span>
										<p>
											{{$v->intro}}
										</p>
									</div>
								</li>
								@endforeach
							</ul>
						</div>
					</div>
					<div class='section-block timeline-block'>
						<div class='container-fluid'>
							<div class='section-header'>
								<h2>教育信息 <strong class='color'>Education</strong></h2>
							</div>
							<ul class='timeline'>
								<li>
									<div class='timeline-content'>
										<h4 style="color: lightseagreen;">{{$intro->school}}</h4>
										<span>{{$intro->schooltime}}</span><span>{{$intro->major}}</span>
										<p>
											{{$intro->intro}}
										</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</section>

				<section id='portfolio' class='section portfolio-section border-d'>
					<div class='section-block portfolio-block'>
						<div class='container-fluid'>
							<div class='section-header'>
								<h2>My <strong class='color'>Project</strong></h2>
							</div>
							<ul class='portfolio-filters'>
								<li>
									<a href='#' class='active' data-group='all'>
										All
									</a>
								</li>
								@foreach($type as $tv)
								@if($tv->pid==0)
								<li>
									<a href='#' data-group='{{$tv->dataName}}'>
										{{$tv->name}}
									</a>
								</li>
								@endif
								@endforeach
							</ul>
							<ul class='portfolio-items'>
								@foreach($post as $v)
								<li data-groups='["{{$v->dataName}}"]'>
									<div class='inner'>
										<img src="/Uploads/images/{{$v->dataName}}.jpg" alt>
										<div class='overlay'>
											<a href='#popup-{{$v->id}}' class='view-project'>
												{{$v->title}}
											</a>
											<div id='popup-{{$v->id}}' class='popup-box zoom-anim-dialog mfp-hide'>
												<div class='content'>
													<h4>{{$v->title}}</h4>
													<p>发表时间：{{$v->ctime}}</p>
													<p class="realCont">{{$v->content}}</p>
													<input type="hidden" name="contentcode" class="contentcode" value="{{$v->content}}" />
												</div>
												<form style="padding: 20px;" id='contact-form' data-toggle='validator' method='post' action="/home/index">
													{{csrf_field()}}
													<div id='contact-form-result'></div>
													<div class='form-group'>
														<input type="hidden" name="ctime" id="" />
														<input type="hidden" name="pid" id="pid" value="{{$v->id}}" />
													</div>
													<div class='form-group'>
														<textarea class='form-control' placeholder='输入您的回复' name='content' rows='5' required></textarea>
													</div>
													<div class='form-group text-center'>
														<button type='submit' class='btn-custom btn-color'>
														Send Message / 发送
														</button>
													</div>
												</form>
												<div class='content'>
													<h4>TA们说</h4>
												</div>
												@foreach($reply as $vv)
												@if($vv->pid==$v->id)
												<div style="padding: 20px;">
												<ul class='timeline'>
													<li>
														<div class='timeline-content'>
															<div class="pic"><img style="width: 50px;float: left;" src="/img/touxiang.jpg"/></div>
															<h5 style="color: lightseagreen;">{{$vv->content}}</h5>
															<p>{{$vv->ctime}}</p>
														</div>
													</li>
												</ul>
												</div>
												@endif
												@endforeach
											</div>
										</div>
									</div>
								</li>
								@endforeach
							</ul>
						</div>
					</div>
				</section>

				<section id='contact' class='section contact-section border-d'>
					<div class='section-block contact-block'>
						<div class='container-fluid'>
							<div class='section-header'>
								<h2>联系我 <strong class='color'>Contact Me</strong></h2>
							</div>
							<div class='row'>
								<div class='col-md-12'>
									<div class='contact-form'>
										<form id='contact-form' data-toggle='validator' method='post' action="/home/index/insert">
											{{csrf_field()}}
											<div id='contact-form-result'></div>
											<div class='row'>
												<div class='col-md-6'>
													<div class='form-group'>
														<input type='text' class='form-control' placeholder='姓名' name='name' required>
														<div class='help-block with-errors'></div>
													</div>
												</div>
												<div class='col-md-6'>
													<div class='form-group'>
														<input type='email' class='form-control' placeholder='Email' name='email' required>
														<div class='help-block with-errors'></div>
													</div>
												</div>
												<div class='col-md-12'>
													<div class='form-group'>
														<input type='number' class='form-control' placeholder='请填写真实电话号码' name='phone' required>
														<div class='help-block with-errors'></div>
													</div>
												</div>
											</div>
											<div class='form-group'>
												<input type='text' class='form-control' placeholder='主题' name='title' required>
												<div class='help-block with-errors'></div>
											</div>
											<div class='form-group'>
												<textarea class='form-control' placeholder='输入您的内容' name='content' rows='5' required></textarea>
												<div class='help-block with-errors'></div>
											</div>
											<div class='form-group text-center'>
												<button type='submit' class='btn-custom btn-color'>
												Send Message / 发送
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<script src="/js/jquery-1.11.3.js"></script>
		<script src="/js/jquery.shuffle.min.js"></script>
		<script src="/js/owl.carousel.min.js"></script>
		<script src="/js/jquery.magnific-popup.min.js"></script>
		<script src="/js/validator.min.js"></script>
		<script src="/js/script.js"></script>
	</body>
</html>