@extends("Admin/Layouts/index")
@section('title', '发表文章')
@section('slogan', '您已进入发表文章页面,您若无板块，无法发表文章！')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<div class="card-box">
				<h4 class="m-t-0 header-title">文章列表管理</h4>
				<div id="datatable_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
					<div class="row">
						<div class="col-sm-12">
							<table id="datatable" class="table table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
								<thead>
									<tr role="row">
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 99px;">编号</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 186px;">标题</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 183px;">栏目</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 251px;">发表时间</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 386px;">操作</th>
									</tr>
								</thead>
								<tbody>
									@foreach($post as $v)
										<tr role="row" class="odd">
											<td>{{$v['id']}}</td>
											<td>{{$v['title']}}</td>
											<td>{{$v['tid']}}</td>
											<td>{{$v['ctime']}}</td>
											<td>
												<a href="/admin/post/{{$v['id']}}/edit">
													编辑
												</a> |
												<a class='aid' id="{{$v['id']}}" href="#">
													删除
												</a></td>
										</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<form action="/admin/post" method="post" enctype="multipart/form-data">
				{{csrf_field()}}
				<div class="card-box">
					<h4 class="header-title m-b-30">文章编辑</h4>
					<div class="row" style="margin-bottom: 10px;">
						<label class="col-1 col-form-label">选择分类</label>
						<div class="col-2">
							<select name="dataName" class="form-control">
								@foreach($type as $v)
								<option value="{{$v['dataName']}}">{{$v['name']}}</option>
								@endforeach
							</select>
						</div>
						<input class="form-control col-8" required="" type="text" name="title">
					</div>
				</div>
					<textarea  name="content" id="content" style="width: 100%;height: 300px;margin-bottom: 20px;border: 1px solid #ccc;border-radius:2px ;"></textarea>
						
					<button type="submit" class="btn btn-primary">
					提交
					</button>
					<button type="reset" class="btn btn-primary">
					取消
					</button>
					
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(".aid").click(function(){
		var id=$(this).attr("id");
		$.post("/admin/post/"+id,{"_token":"{{csrf_token()}}","_method":"DELETE"},(data)=>{
			if(data){
				alert("删除成功");
				$(this).parent().parent().remove();
			}else{
				alert("删除失败");
			}
		})
	})
</script>
@endsection