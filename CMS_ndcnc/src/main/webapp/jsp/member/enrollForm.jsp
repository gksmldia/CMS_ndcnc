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
					<form class="form-horizontal" name="enrollForm"
						action="${pageContext.request.contextPath }/member/enroll.do"
						method="post" onsubmit="return checkForm()" autocomplete="off">
						<fieldset>
							<div class="row eLabel text-center">
								<strong>회원가입</strong>
							</div>
							<div class="form-group checkDiv" id="id-group">
								<label for="inputId" class="col-md-2 control-label"><strong>아이디</strong></label>
								<div class="col-md-offset-1 col-md-4">
									<input type="text" class="form-control col-md-12" id="inputId"
										placeholder="아이디 입력" name="id">
								</div>
								<div class="col-md-offset-1 col-md-2">
									<button type="button" class="btn btn-info col-md-12" id="check">중복체크</button>
								</div>
							</div>
							<div class="row">
								<span class="col-md-offset-3 paddingLeft20" id="email_eq"></span>
							</div>
							<div class="form-group checkDiv" id="password-group">
								<label for="inputPassword" class="col-md-2 control-label"><strong>비밀번호</strong></label>
								<div class="col-md-offset-1 col-md-8">
									<input type="password" class="form-control col-md-12" id="inputPassword" name="password" placeholder="비밀번호 입력">
								</div>
							</div>
							<div class="row">
								<span class="col-md-offset-3 paddingLeft20" id="regPasssword"></span>
							</div>
							<div class="form-group checkDiv" id="passwordCheck-group">
								<label for="inputPasswordCheck" class="col-md-2 control-label"><strong>비밀번호 확인</strong></label>
								<div class="col-md-offset-1 col-md-8">
									<input type="password" class="form-control col-md-12" id="inputPasswordCheck" name="passwordCheck" placeholder="비밀번호 확인">
								</div>
							</div>
							<div class="row">
								<span class="col-md-offset-3 paddingLeft20" id="password_eq"></span>
							</div>
							<div class="form-group">
								<label for="department" class="col-md-2 control-label"><strong>부서</strong></label>
								<div class="col-md-offset-1 col-md-8">
									<select class="form-control col-md-12" id="department"
										name="department">
										<option value="부서 선택" disabled selected>부서 선택</option>
										<c:forEach var="department" items="${ departmentList }">
											<option value="${ department.no }">${ department.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="inputName" class="col-md-2 control-label"><strong>이름</strong></label>
								<div class="col-md-offset-1 col-md-8">
									<input type="text" class="form-control col-md-12"
										id="inputName" name="name" placeholder="이름 입력">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label"><strong>성별</strong></label>
								<div class="col-md-offset-1 col-md-8">
									<div class="radio col-md-6">
										<label> <input type="radio" name="gender" id="gender1"
											value="M"> 남자
										</label>
									</div>
									<div class="radio col-md-6">
										<label> <input type="radio" name="gender" id="gender2"
											value="F"> 여자
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="inputBirth" class="col-md-2 control-label"><strong>생년월일</strong></label>
								<div class="col-md-offset-1 col-md-8">
									<input type="date" class="form-control col-md-12"
										id="inputBirth" name="birth">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPhone" class="col-md-2 control-label"><strong>휴대폰번호</strong></label>
								<div class="col-md-offset-1 col-md-2">
									<input type="text" class="form-control col-md-12"
										id="inputPhone1" name="phone1" placeholder="000">
								</div>
								<div class="col-md-1 text-center hyphen">-</div>
								<div class="col-md-2">
									<input type="text" class="form-control col-md-12"
										id="inputPhone2" name="phone2" placeholder="0000">
								</div>
								<div class="col-md-1 text-center hyphen">-</div>
								<div class="col-md-2">
									<input type="text" class="form-control col-md-12"
										id="inputPhone2" name="phone3" placeholder="0000">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmailId" class="col-md-2 control-label"><strong>이메일</strong></label>
								<div class="col-md-offset-1 col-md-2">
									<input type="text" class="form-control col-md-12"
										id="inputEmailId" name="emailId">
								</div>
								<div class="col-md-1 text-center hyphen">@</div>
								<div class="col-md-2">
									<input type="text" class="form-control col-md-12"
										id="inputEmail" name="emailAddr">
								</div>
								<div class="col-md-3">
									<select class="form-control col-md-12" id="selectEmail"
										onChange="javascript:fn_changeSelected(this);">
										<option selected="selected" value="직접입력">직접입력</option>
										<option value="naver.com">naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="nate.com">nate.com</option>
										<option value="gmail.com">gmail.com</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-11 col-md-offset-1">
									<button type="submit" class="btn btn-primary col-md-5">가입하기</button>
									<button type="reset"
										class="btn btn-default col-md-offset-1 col-md-5">취소</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</section>
	</div>

	<script type="text/javascript">
	
		$("#check").click(function(){
			var id = $('#inputId').val();
			
			if(id == '') {
				alert('ID를 입력해 주세요.');
				return false;
			}
		
			//아이디 체크
			$.ajax({
				type : "post",
				url : "${ pageContext.request.contextPath}/member/idCheck.do",
				data : {
					"id" : id
				}, 
				success : function(data) {
					if (data == 0) {
						$('#id-group').removeClass('has-error').addClass('has-success');
						$('#email_eq').html('<small>사용 가능한 ID입니다.</small>').removeClass('text-danger').addClass('text-success');
					} else {
						$('#id-group').removeClass('has-success').addClass('has-error');
						$('#email_eq').html('<small>이미 사용 중인 ID 입니다.</small>').removeClass('text-success').addClass('text-danger');
					}

				}, error:function(error){
					alert(error);	
				}
			});
		});
		
		$(document).ready(function() {
			
			document.enrollForm.id.focus();
			
			$('#inputPasswordCheck').keyup(function() {
				var password = $('#inputPassword').val();
				var checkword = $(this).val();

				
					if (checkword != password) {
						addDontMiss();
					} else {
						removeDontMiss();
					}
				
			});

			$('#inputPassword').keyup(function() {
				var password = $(this).val();
				var checkword = $('#inputPasswordCheck').val();

				if (checkword != '') {
					if (checkword != password) {
						$('#password-group').addClass('has-error');
						addDontMiss();
					} else {
						removeDontMiss();
					}
				} else {
					$('#password_eq').empty();
				}
			});

			function addDontMiss() {
				$('#passwordCheck-group').addClass('has-error');
				$('#password_eq').html('<small>비밀번호가 일치하지 않습니다.</small>').addClass('text-danger');

			}
			function removeDontMiss() {
				$('#password-group').removeClass('has-error');
				$('#passwordCheck-group').removeClass('has-error');
				$('#password_eq').empty();
			}

			$('#inputPassword').focusout(function() {
				var passsword = $(this).val();

				//특수문자, 영문(대소문자) , 숫자 포함 형태의 8~15자리 이내의 암호
				var regPasssword = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=-_]).*$/;

				if (!regPasssword.test(passsword)) {
					addHasError();
				} else {
					removeHasError();
				}
			});

			function addHasError() {
				$('#inputPassword').addClass('has-error');
				$('#regPasssword').html('<small>특수문자 ,문자,숫자 포함 형태의 8~15자리 이내의 암호를 작성해주세요.</small>').addClass('text-danger');
			}

			function removeHasError() {
				$('#inputPassword').removeClass('has-error');
				$('#regPasssword').empty().addClass('text-success');
			}
		});
		
		function fn_changeSelected(obj) {
			var getObj = obj[obj.selectedIndex].innerHTML;

			document.getElementById("inputEmail").value = getObj;
		}

		function checkForm() {

			var form = document.enrollForm;
			if (form.id.value == '') {
				alert('아이디를 입력해주세요.');
				form.id.focus();
				return false;
			} else if($("#id-group").hasClass("has-error") === true) {
				alert('아이디가 중복 됩니다.');
				form.id.focus();
				return false;
			} else if (form.password.value == '') {
				alert('비밀번호를 입력해주세요.');
				form.password.focus();
				return false;
			} else if($("#password-group").hasClass("has-error") === true) {
				alert('비밀번호를 형식에 맞게 다시 생성해 주세요.');
				form.password.focus();
				return false;
			} else if (form.passwordCheck.value == '') {
				alert('비밀번호 확인을 입력하세요');
				form.passwordCheck.focus();
				return false;
			} else if($("#passwordCheck-group").hasClass("has-error") === true) {
				alert('비밀번호가 일치 하지 않습니다.');
				form.password.focus();
				return false;
			} else if (form.department.options[0].selected) {
				alert('부서를 선택해주세요.');
				form.department.focus();
				return false;
			} else if (form.name.value == '') {
				alert('이름을 입력해주세요.');
				form.name.focus();
				return false;
			} else if (form.gender.value == '') {
				alert('성별을 체크해주세요.');
				return false;
			} else if (form.birth.value == '') {
				alert('생년월일을 입력해주세요.');
				form.birth.focus();
				return false;
			} else if (form.phone1.value == '') {
				alert('휴대폰 번호 앞 세자리를 입력해 주세요');
				form.phone1.focus();
				return false;
			} else if (form.phone2.value == '') {
				alert('휴대폰 가운데 번호를 입력해 주세요');
				form.phone2.focus();
				return false;
			} else if (form.phone3.value == '') {
				alert('휴대폰 마지막 번호를 네자리를 입력해 주세요');
				form.phone3.focus();
				return false;
			} else if (form.emailId.value == '') {
				alert('이메일 아이디를 입력해 주세요');
				form.emailId.focus();
				return false;
			} else if (form.emailAddr.value == '') {
				alert('이메일 도메인을 입력하시거나 선택해주세요.');
				form.emailAddr.focus();
				return false;
			}
			return true;
		}
	</script>
</body>
</html>