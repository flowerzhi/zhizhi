@extends("Admin/Layouts/index")
@section('title', '网站留言管理')
@section('slogan', '您已进入网页留言管理页面！')
@section('content')
<div class="row">
	<div class="col-12">
		<div class="card-box table-responsive">
			<h4 class="m-t-0 header-title">可执行留言的回复和删除</h4>
			<p class="text-muted font-14 m-b-30">
				文章留言管理
			</p>

			<div id="datatable_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
				<div class="row">
					<div class="col-sm-12">
						<table id="datatable" class="table table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
							<thead>
								<tr role="row">
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">id</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">姓名</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">邮箱</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">标题</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">内容</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">时间</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 100px;">操作</th>
								</tr>
							</thead>
							<tbody>
								@foreach($res as $v)
								<tr role="row">
									<td>{{$v->id}}</td>
									<td>{{$v->name}}</td>
									<td>{{$v->email}}</td>
									<td>{{$v->title}}</td>
									<td>{{$v->content}}</td>
									<td>{{$v->ctime}}</td>
									<td><a href="#" class="del" id="{{$v->id}}">删除</a></td>
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
<script type="text/javascript">
	$(".del").click(function(){
		var id=$(this).attr("id");
		$.post("/admin/message/"+id,{"_token":"{{csrf_token()}}","_method":"DELETE"},(data)=>{
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