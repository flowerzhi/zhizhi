@extends("Admin/Layouts/index")
@section('title', '网站设置')
@section('slogan', '您已进入网站设置页面！')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			<div class="p-20">
				<h2>管理员信息状态</h2>
				<br />
				<form class="form-horizontal" role="form" method="post"  enctype="multipart/form-data" action="/admin/major/{{$res->id}}">
					{{csrf_field()}}
					{{method_field('PUT')}}
					<div class="form-group row">
						<label class="col-2 col-form-label">姓名</label>
						<div class="col-10">
							<input type="text" name="name" class="form-control" value="{{$res->name}}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label">email</label>
						<div class="col-10">
							<input type="email" name="email" class="form-control" value="{{$res->email}}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label">头像</label>
						<div class="col-10">
							<input type="file" name="pic">
							<br>
							<img style="width: 100px;" src="/Uploads/{{$res->photo}}"/>
							<div class="alert alert-info">
								<strong>注意！</strong> 上传图片功能仅支持IE10+, FF3.6+, Chrome6.0+ and Opera11.1+浏览器，在旧版本的浏览器中，无法选择图片上传。
							</div>
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
		</div>

	</div>
	<!-- end row -->

</div>
<!-- end card-box -->
</div>
<!-- end col -->
</div>
<!-- end row -->

</div>
<script type="text/javascript">$(".del").click(function() {
	var id = $(this).attr("id");
	$.post("/admin/set/" + id, {
		"_token": "{{csrf_token()}}",
		"_method": "DELETE"
	}, (data) => {
		if(data) {
			alert("删除成功");
			$(this).parent().parent().remove();
		} else {
			alert("删除失败，请检查该网站设置的状态");
		}
	})
})</script>
@endsection