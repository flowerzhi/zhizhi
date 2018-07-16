@extends("Admin/Layouts/index")
@section('title', '管理员设置')
@section('slogan', '您已进入管理员设置页面！')
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
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 186px;">姓名</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 183px;">邮箱</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 251px;">头像</th>
										<th tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 386px;">操作</th>
									</tr>
								</thead>
								<tbody>
									@foreach($res as $v)
										<tr role="row" class="odd">
											<td>{{$v->id}}</td>
											<td>{{$v->name}}</td>
											<td>{{$v->email}}</td>
											<td>{{$v->photo}}</td>
											<td>
												<a href="/admin/major/{{$v->id}}/edit">
													编辑
												</a>
											</td>
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
</div>
@endsection