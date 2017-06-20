<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입_naedam</title>
<jsp:include page="/jsp/common/common.jsp" />
</head>
<body>
	<div class="container body">
		<jsp:include page="/jsp/common/menuBar.jsp" />
		<section class="container sectionContent minHeight">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 eFormDiv">
					<form class="form-horizontal">
						<fieldset>
							<legend class="eLabel text-center"><strong>회원가입</strong></legend>
							<div class="form-group">
								<label for="inputId" class="col-md-2 control-label"><strong>아이디</strong></label>
								<div class="col-md-offset-1 col-md-5">
									<input type="text" class="form-control col-md-12" id="inputId" placeholder="아이디를 입력하세요.">
								</div>
								<div class="col-md-offset-1 col-md-2">
									<button type="button" class="btn btn-info col-md-12">중복체크</button>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword" class="col-md-offset-1 col-md-2 control-label">비밀번호</label>
								<div class="col-md-10">
									<input type="password" class="form-control" id="inputPassword" placeholder="Password">
									<div class="checkbox">
										<label> <input type="checkbox"> Checkbox
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="textArea" class="col-lg-2 control-label">Textarea</label>
								<div class="col-lg-10">
									<textarea class="form-control" rows="3" id="textArea"></textarea>
									<span class="help-block">A longer block of help text
										that breaks onto a new line and may extend beyond one line.</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">Radios</label>
								<div class="col-lg-10">
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1" checked="">
											Option one is this
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> Option two can
											be something else
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="select" class="col-lg-2 control-label">Selects</label>
								<div class="col-lg-10">
									<select class="form-control" id="select">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select> <br> <select multiple="" class="form-control">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button type="reset" class="btn btn-default">Cancel</button>
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</section>
	</div>
</body>
</html>