<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
 <%-- <jsp:include page="/include.head.jsp/>" --%>
 <%@ include file="/include/head.jsp" %>
 <body id= "page-top">
 <%@ include file="/include/header.jsp" %>
 <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">로그인</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- ID input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="id" id="userid" type="text" placeholder="id를 입력하세요" data-sb-validations="required" />
                                <label for="name">아이디</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">아이디 필수입력</div>
                            </div>
                            <!-- 비밀번호 address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" name="pw" id="userpw" type="password" placeholder="비번을 입력하세요" data-sb-validations="required,email" />
                                <label for="email">패스워드</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">패스워드 필수입력</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <a class="btn btn-primary btn-xl" onclick="login();">로그인</a>
                            
                            
                            
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@ include file="/include/footer.jsp" %>  
        
        <script type="text/javascript">
        	function login() {
        		//alert('눌림');
        		
        		//alert($('#userid').val()); 
        		console.log($('#userid').val());
        		console.log($('#userpw').val());
        		if($('#userid').val()==''){
        			alert('아이디를 입력해주세요!');
        			$('#userid').focus();
        			return;
        		}else if($('#userpw').val()==''){
        			alert('비밀번호를 입력해주세요!');
        			$('#userpw').focus();
        			return;
        		}
        		//jquery로 input type id에 입력 된 값을 alert이나 console로 찍어보기.
        		//여기까지 도착함 아이디 비번이 입력된 상태
        		//get방식으로 ajax비동기 통신을 통해서 servlet으로 데이터 전송(url):페이지 새록고침 없이 데이터만 요청.
        		$.ajax({
        			type: 'post', //요청 방식
        			url: 'login.mem', //요청ㅇ url
        			data: {id:$('#userid').val() , pw:$('#userpw').val()    }, //요청시보낼 파라메터 설정
        			success: function( response ){ //성공시 실행할 함수
        				alert('성공이요');
        				if(response==''){
        					alert('아이디 비번 다시 확인!'+ response);
        				}else{
        					alert('성공');
        				}
        			
        			}, error: function (req, text){ //실패시 실행할 함수
        				alert(text+':'+req.status);
        			}
        			
        			
        			
        			
        		});
        	}
        </script>
        
        
        
        
           
        </body>
        </html>