@extends("Admin/Layouts/index")
@section('title', '网站设置')
@section('slogan', '您已进入网站设置页面！')
@section('content')
<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="card-box">
					<h4 class="m-t-0 header-title">新增网站配置</h4>
					<p class="text-muted m-b-30 font-14">
						在这里新增网站配置。
					</p>
					<div class="row" style="margin-bottom: 20px;">
					<div class="col-sm-12">
						<table id="datatable" class="table table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
							<thead>
								<tr role="row">
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">id</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">网站名称</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">关键字</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">logo</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">版权信息</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">网站状态</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 100px;">操作</th>
								</tr>
							</thead>
							<tbody>
								@foreach($res as $v)
								<tr role="row">
									<td>{{$v->id}}</td>
									<td>{{$v->webname}}</td>
									<td>{{$v->keywords}}</td>
									<td>{{$v->logo}}</td>
									<td>{{$v->copy}}</td>
									<td>{{$v->status==1?'开启':'关闭'}}</td>
									<td><a href="#" class="del" id="{{$v->id}}">删除</a></td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
					<div class="row">
						<div class="col-12">
							<div class="p-20">
								<h2>网站设置</h2>
								<br />
								<form class="form-horizontal" role="form" method="post"  enctype="multipart/form-data" action="/admin/set">
									{{csrf_field()}}
									<div class="form-group row">
										<label class="col-2 col-form-label">网站标题</label>
										<div class="col-10">
											<input type="text" name="webname" class="form-control" value="">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-2 col-form-label">网站版权</label>
										<div class="col-10">
											<input type="text" name="copy" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-2 col-form-label">关键字</label>
										<div class="col-10">
											<input name="keywords" type="text" class="form-control" value="">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-2 col-form-label">上传网站logo</label>
										<div class="col-10">
											<input type="file" name="logo"><br>
											<img style="width:200px;margin: 10px 0;" src="" alt="">
											
											<div class="alert alert-info"><strong>注意！</strong> 上传图片功能仅支持IE10+, FF3.6+, Chrome6.0+ and Opera11.1+浏览器，在旧版本的浏览器中，无法选择图片上传。</div>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-2 col-form-label">网站状态</label>
										<div class="col-10">
											<select class="form-control" name="status">
												<option value="1">开启</option>
												<option value="0">关闭</option>
											</select>
										</div>
									</div>

									<div class="form-group text-right m-b-0">
										<button class="btn btn-custom waves-effect waves-light" type="submit">提交</button>
										<button type="reset" class="btn btn-light waves-effect m-l-5">取消</button>
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
	<script type="text/javascript">
	$(".del").click(function(){
		var id=$(this).attr("id");
		$.post("/admin/set/"+id,{"_token":"{{csrf_token()}}","_method":"DELETE"},(data)=>{
			if(data){
				alert("删除成功");
				$(this).parent().parent().remove();
			}else{
				alert("删除失败，请检查该网站设置的状态");
			}
		})
	})
</script>
@endsection