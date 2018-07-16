@extends("Admin/Layouts/index")
@section('title', '发表文章')
@section('slogan', '您已进入发表文章页面！')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12">
			<form action="/admin/post/{{$post['id']}}" method="post" enctype="multipart/form-data">
				{{csrf_field()}}
				{{method_field('PUT')}}
				<div class="card-box">
					<h4 class="header-title m-b-30">文章编辑</h4>
					<div class="row" style="margin-bottom: 10px;">
						<label class="col-1 col-form-label">选择分类</label>
						<div class="col-1">
							<select name="dataName" class="form-control">
								@foreach($type as $v)
								<option value="{{$v['dataName']}}">{{$v['name']}}</option>
								@endforeach
							</select>
						</div>
						<input class="form-control col-8" required="" type="text" value="{{$post['title']}}" name="title">
					</div>
				</div>
					<textarea  name="content" id="content" style="width: 1200px;height: 300px;margin-bottom: 20px;border: 1px solid #ccc;border-radius:2px ;">{{$post['content']}}</textarea>
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