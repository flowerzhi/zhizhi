@extends("Admin/Layouts/index")
@section('title', '板块分区管理')
@section('slogan', '您已进入板块分区页面！')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<div class="card-box">
				<h4 class="header-title m-t-0">添加分区</h4>
				<p class="text-muted font-14 m-b-20">
					在此页面添加板块分区。
				</p>
				<form action="/admin/list" method="post">
					{{csrf_field()}}
					<div class="form-group">
						<label for="name" >分区名<span class="text-danger">*</span></label>
						<input type="text" name="name" parsley-trigger="change" required="" placeholder="输入您要添加的分区名" class="form-control" id="userName">
					</div>
					<div class="form-group">
						<label for="dataName" >板块英文昵称<span class="text-danger">*</span></label>
						<input type="text" name="dataName" parsley-trigger="change" required="" placeholder="输入您要添加的板块英文昵称" class="form-control" id="userName">
					</div>
					<div class="form-group row">
						<label class="col-1 col-form-label">选择父类</label>
						<div class="col-11">
							<select class="form-control" name="pid">
								<option value="0">请选择</option>
								@foreach($type as $v)
									<option value="{{$v->id}}">{{$v->name}}</option>
								@endforeach
							</select>
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
	<!-- end row -->
</div>
@endsection