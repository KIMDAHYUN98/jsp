<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bootstrap.jsp</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script>
	$(function() {
		$('#liveToastBtn').on("click", function() {
			$('#liveToast').toast("show");
		});
		
		$('.btn').tooltip();
		
		$('#btnRegister').on("click", function() {
		  $('.modal').modal('show');
			
		})
	});
</script>
</head>
<body>
	<div class="container">
		<!-- Content here -->
		<div class="row">
			<div class="col-2 border">
				<a href="#" class="btn btn-outline-primary" data-toggle="tooltip"
					data-placement="bottom" title="로그인페이지로이동">로그인</a> 
					<span class="btn btn-outline-success" id="btnRegister">회원가입</span>
				<button class="btn btn-primary">게시판</button>
			</div>
			<div class="col-8 border">

				<button type="button" class="btn btn-primary" id="liveToastBtn">Show
					live toast</button>
			</div>
			<div class="col-2 border">second</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-12 border">
				<table class="table table-bordered">
					<thead class="table-dark">
						<tr>
							<td>번호</td>
							<td>이름</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>a</td>
						</tr>
						<tr>
							<td>2</td>
							<td>b</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-6 col-md-12 border">
				
			</div>
		</div>
		<div class="col-lg-6 col-md-12 border">dd</div>
		<div class="alert alert-secondary" role="alert">A simple
			secondary alert—check it out!</div>
		<div class="row">
			<div class="card mr-5  pt-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card mr-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
		<!-- end of row -->
		<!-- toast start -->
		<div class="position-fixed bottom-0 right-0 p-3"
			style="z-index: 5; right: 0; top: 0;">
			<!-- left, right, top, bottom -->
			<div id="liveToast" class="toast hide" role="alert"
				aria-live="assertive" aria-atomic="true" data-delay="2000">
				<div class="toast-header">
					<img src="..." class="rounded mr-2" alt="..."> <strong
						class="mr-auto">Bootstrap</strong> <small>11 mins ago</small>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">Hello, world! This is a toast message.
				</div>
			</div>
		</div>
		<!-- toast end -->
		<!-- modal start -->
		<div class="modal hide" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control-plaintext"
								id="staticEmail" value="email@example.com">
						</div>
					</div>
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-2 col-form-label">CheckBox</label>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox1" value="option1"> <label
								class="form-check-label" for="inlineCheckbox1">1</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox"
								id="inlineCheckbox2" value="option2"> <label
								class="form-check-label" for="inlineCheckbox2">2</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="inlineCheckbox3"
								value="option3" disabled> <label
								class="form-check-label" for="inlineCheckbox3">3
								(disabled)</label>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword">
						</div>
					</div>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="gridRadios1" value="option1" checked> <label
								class="form-check-label" for="gridRadios1"> First radio
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="gridRadios2" value="option2"> <label
								class="form-check-label" for="gridRadios2"> Second radio
							</label>
						</div>
						<div class="form-check disabled">
							<input class="form-check-input" type="radio" name="gridRadios"
								id="gridRadios3" value="option3" disabled> <label
								class="form-check-label" for="gridRadios3"> Third
								disabled radio </label>
						</div>
					</div>
					<div class="form-group row justify-content-center">
						<button type="button" class="btn btn-info">등록</button>
						<button type="button" class="btn btn-warning">취소</button>
					</div>
				</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal end -->
	</div>
	<!-- end of content -->
</body>
</html>