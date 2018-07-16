@extends("Admin/Layouts/index")
@section('title', '个人信息管理')
@section('slogan', '您已进入个人信息管理页面首页！')
@section('content')
<div class="row">
	<div class="col-12">
		<div class="card-box table-responsive">
			<h4 class="m-t-0 header-title">可修改个人信息列表</h4>
			<p class="text-muted font-14 m-b-30">
				关系前台"about"板块，信息的修改和删除请谨慎。
			</p>

			<div id="datatable_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
				<div class="row">
					<div class="col-sm-12">
						<table id="datatable" class="table table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
							<thead>
								<tr role="row">
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">id</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">姓名</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 60px;">工作</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 50px;">年龄</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 80px;">所在地</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 100px;">在校时间</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 100px;">毕业院校</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 80px;">专业</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 240px;">学科介绍</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 250px;">工作经历</th>
									<th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 100px;">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr role="row">
									<td>{{$res->id}}</td>
									<td>{{$res->name}}</td>
									<td>{{$res->job}}</td>
									<td>{{$res->age}}</td>
									<td>{{$res->hometown}}</td>
									<td>{{$res->schooltime}}</td>
									<td>{{$res->school}}</td>
									<td>{{$res->major}}</td>
									<td>{{$res->intro}}</td>
									<td>{{$res->workintro}}</td>
									<td><a href="/admin/infoedit/{{$res->id}}/edit">编辑</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection