@extends("Admin/Layouts/index")
@section('title', '个人信息编辑')
@section('slogan', '您已进入个人信息编辑页面！')
@section('content')
<div class="row">
	<div class="col-lg-12">

		<div class="card-box">
			<h4 class="header-title m-t-0">编辑您的信息</h4>
			<p class="text-muted font-14 m-b-20">
				Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
			</p>

			<form action="/admin/infoedit/{{$res->id}}" method="post">
				{{csrf_field()}}
				{{method_field('PUT')}}
				<div class="form-group">
					<label for="name">姓名<span class="text-danger">*</span></label>
					<input type="text" name="name" required="" placeholder="输入您的姓名" class="form-control" value="{{$res->name}}">
				</div>
				<div class="form-group">
					<label for="job">工作<span class="text-danger">*</span></label>
					<input type="text" name="job" required="" placeholder="输入您的工作" class="form-control" value="{{$res->job}}">
				</div>
				<div class="form-group">
					<label for="age">年龄<span class="text-danger">*</span></label>
					<input type="number" name="age" required="" placeholder="输入您的年龄" class="form-control" value="{{$res->age}}">
				</div>
				<div class="form-group">
					<label for="hometown">家乡<span class="text-danger">*</span></label>
					<input type="text" name="hometown" required="" placeholder="输入您的家乡" class="form-control" value="{{$res->hometown}}">
				</div>
				<div class="form-group">
					<label for="school">学校<span class="text-danger">*</span></label>
					<input type="text" name="school" required="" placeholder="输入您的学校" class="form-control" value="{{$res->school}}">
				</div>
				<div class="form-group">
					<label for="major">专业<span class="text-danger">*</span></label>
					<input type="text" name="major" required="" placeholder="输入您的专业" class="form-control" value="{{$res->major}}">
				</div>
				<div class="form-group">
					<label for="schooltime">在校时间<span class="text-danger">*</span></label>
					<input type="text" name="schooltime" required="" placeholder="输入您的在校时间" class="form-control" value="{{$res->schooltime}}">
				</div>
				<div class="form-group">
					<label for="intro">在校介绍<span class="text-danger">*</span></label>
					<div>
						<textarea required="" class="form-control">{{$res->intro}}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="workintro">工作介绍<span class="text-danger">*</span></label>
					<div>
						<textarea required="" class="form-control">{{$res->workintro}}</textarea>
					</div>
				</div>
				<div class="form-group text-right m-b-0">
					<button class="btn btn-custom waves-effect waves-light" type="submit">
					提交
					</button>
					<button type="reset" class="btn btn-light waves-effect m-l-5">
					取消
					</button>
				</div>

			</form>
		</div>
		<!-- end card-box -->
	</div>
	<!-- end col -->

</div>
@endsection