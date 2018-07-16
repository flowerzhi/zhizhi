@extends("Admin/Layouts/index")
@section('title', '板块分区管理')
@section('slogan', '您已进入板块分区页面！')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<div class="card-box">
				<h4 class="header-title m-t-0">编辑分区</h4>
				<p class="text-muted font-14 m-b-20">
					在此页面编辑分区板块。
				</p>
				<form action="/admin/type/{{$res->id}}" method="post">
					{{csrf_field()}}
					{{method_field('PUT')}}
					<div class="form-group">
						<label for="name" >分区名<span class="text-danger">*</span></label>
						<input type="text" value="{{$res->name}}" name="name" parsley-trigger="change" required="" placeholder="输入您要添加的分区名" class="form-control" id="userName">
					</div>
					<div class="form-group">
						<label for="dataName" >板块英文昵称<span class="text-danger">*</span></label>
						<input type="text" value="{{$res->dataName}}" name="dataName" parsley-trigger="change" required="" placeholder="输入您要添加的板块英文昵称" class="form-control" id="userName">
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