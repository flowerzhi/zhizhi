@extends("Admin/Layouts/index")
@section('title', '板块列表')
@section('slogan', '您已进入板块内容管理页面！')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<div class="card-box">
				<h4 class="m-t-0 header-title">浏览全部分区</h4>
				<p class="text-muted font-14 m-b-20">
					通过此板块您可浏览论坛全部分区。
					若分区内的文章数不为0，则无法删除。
				</p>
				<div id="datatable_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
					<div class="row">
						<div class="col-sm-12">
							<table id="datatable" class="table table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
								<thead>
									<tr role="row">
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 99px;">编号</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 186px;">名称</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 251px;">pid</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 147px;">path</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 147px;">状态</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 147px;">文章数</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 386px;">操作</th>
									</tr>
								</thead>
								<tbody>
									@foreach($res as $v)
										<tr role="row" class="odd">
											<td>{{$v['id']}}</td>
											<td>{{$v['name']}}</td>
											<td>{{$v['pid']}}</td>
											<td>{{$v['path']}}</td>
											<td>{{$v['status']=='1'?'开启':'已关闭'}}</td>
											<td>{{$v['count']}}</td>
											<td>
												<a href="/admin/type/{{$v['id']}}/edit">
													编辑
												</a> |
												<a class="del" id='{{$v["id"]}}' href="#">
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
	<!-- end row -->
	
	
</div>
<script type="text/javascript">
	$(".del").click(function(){
		var id=$(this).attr("id");
		$.post("/admin/type/"+id,{"_token":"{{csrf_token()}}","_method":"DELETE"},(data)=>{
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
