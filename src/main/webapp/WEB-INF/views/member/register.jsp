<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>로그인 / 회원가입 폼 템플릿</title>
    <style>       
    * {
margin: 0;
padding: 0;
font-family: sans-serif;
}

<%-- 뒷배경 --%>
.wrap {
height: 100%;
width: 100%;
background-image: url(/resources/img/register/background.png);
background-position: center;
background-size: cover;
position: absolute;
}
<%-- 회원등록 상자--%>
.form-wrap {
width: 380px;
height: 700px;
position: relative;
margin: 6% auto;
background: #fff;
padding: 5px;
overflow: hidden;
<%--상자 반투명으로 할거면 background-color: rgba( 255, 255, 255, 0.5 );  추가 --%>
}

<%-- 회원등록 상자 상단 색 --%>
.button-wrap {
width: 230px;
margin: 35px auto;
position: relative;
box-shadow: 0 0 600px 9px #fcae8f;
border-radius: 30px;
}
<%-- 로그인 회원가입 토글 크기 --%>
.togglebtn {
padding: 10px 30px;
cursor: pointer;
background: transparent;
border: 0;
outline: none;
position: relative;
}
<%-- 회원등록 상자 버튼 --%>
#btn {
top: 0;
left: 0;
position: absolute;
width: 110px;
height: 100%;
background: linear-gradient(to right, #ffad06, #F2F5A9);
border-radius: 30px;
transition: .5s;
}
<%-- 소셜 아이콘 위치 --%>
.social-icons {
margin: 30px auto;
text-align: center;
}

<%-- 소셜 아이콘 크기 --%>
.social-icons img {
width: 30px ;
cursor: pointer;
}
<%-- 정보 입력창 길이 --%>
.input-group {
top: 250px;
position: absolute;
width: 280px;
transition: .5s;
}
<%-- 정보 입력창 두께 색상 --%>
.input-field {
width: 100%;
padding: 10px 0;
margin: 5px 0;
border: none;
border-bottom: 1px solid #999;
outline: none;
background: transparent;
}
<%-- 로그인/회원가입 가입 버튼 색상 --%>
.submit {
width: 85%;
padding: 10px 30px;
cursor: pointer;
display: block;
margin: auto;
background: linear-gradient(to right, #ffad06, #F2F5A9);
border: 0;
outline: none;
border-radius: 30px;
}


#login {
left: 50px;
}
#register {
left: 450px;
}
#signOut {
left: 50px;

}
.g-signin2{
width: 30px;
height: 30px;
}
#customBtn {
    display: inline-block;
    background: white;
    color: #444;
    width: 170px;
    border-radius: 5px;
    border: thin solid #888;
    box-shadow: 1px 1px 1px grey;
    background: linear-gradient(to right, #ffad06, #F2F5A9);
    white-space: nowrap;
}
#customBtn:hover {
    cursor: pointer;
}
span.buttonText {
    display: inline-block;
    vertical-align: middle;
    padding-right: 40px;
    font-size: 15px;
    font-weight: bold;
    /* Use the Roboto font that is loaded in the <head> */
    font-family: 'Roboto', sans-serif;
}
    span.icon {
    background: url('/resources/img/register/gl.png') no-repeat;
    background-size: cover;
    display: inline-block;
    vertical-align: middle;
    width: 42px;
    height: 42px;
}
    span.icon2 {
    background: url('/resources/img/register/fb.png') no-repeat;
    background-size: cover;
    display: inline-block;
    vertical-align: middle;
    width: 42px;
    height: 42px;
}

    </style>
    
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
<script src="https://apis.google.com/js/api:client.js"></script>
<meta name="google-signin-client_id" content="226135461647-m9itkm2lhft2dqursuhg0s607m7l053t.apps.googleusercontent.com">
<script>
// 구글 로그인
    function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); 
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail());
    }
// 로그아웃
    function signOut() { 
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                    console.log('유저 로그아웃.');
                });
            FB.logout(function(response) {
                });
            auth2.disconnect();
        }
    var googleUser = {};
    var startApp = function() {
        gapi.load('auth2', function(){
        auth2 = gapi.auth2.init({
            client_id: '226135461647-m9itkm2lhft2dqursuhg0s607m7l053t.apps.googleusercontent.com',
            cookiepolicy: 'single_host_origin',
        });
        attachSignin(document.getElementById('customBtn'));
        });
    };
    function attachSignin(element) {
        console.log(element.id);
        auth2.attachClickHandler(element, {},
            function(googleUser) {
                document.getElementById('name').innerText = "로그인된 이름: " +
                    googleUser.getBasicProfile().getName();
            }, function(error) {
                alert(JSON.stringify(error, undefined, 2));
            });
        }
    
</script>

</head>

<body>

    
    <div class="wrap">
        <div class="form-wrap">
            <div class="button-wrap">
                <div id="btn"></div>
                <button type="button" class="togglebtn" onclick="login()">로그인</button>
                <button type="button" class="togglebtn" onclick="register()">회원가입</button>
            </div>
<!--구글 로그인 버튼 -->                
            <div class="social-icons">
            <div id="gSignInWrapper">                
            <div id="customBtn" class="customGPlusSignIn"> 
            <span class="icon" width="100%" src="/resources/img/register/gl2.png" alt="GOOGLE 아이디로 로그인"></span>
                <span class="buttonText">구글 회원가입</span>
            </div>    
            </div>
            <div id="name"></div>
            <script>startApp();</script>

<!-- 페이스북 로그인 버튼 -->

            <div class="social-icons">
            <div  id="customBtn" class="fb-login-button" scope="public_profile,email,publish_pages,manage_pages" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="true" data-use-continue-as="true" onlogin="fbLogin();">
            <span class="icon2"  width="100%" src="/resources/img/register/fb.png"></span>
            <span id="loginBtn" class="buttonText">페이스북 회원가입</span>
            </div>
            </div>

<!-- 페이스북 앱 -->

<div id="fb-root"></div>
<script>
function fbLogin() {
    FB.getLoginStatus(function(response) {

        if (response.status === 'connected') {
            FB.api('/me', function(res) {
                console.log("Success Login : " + response.name);
            });
        } else if (response.status === 'not_authorized') {
            alert('앱에 로그인해야 이용가능한 기능입니다.');
        } else {
            alert('페이스북에 로그인해야 이용가능한 기능입니다.');
        }
    }, true);
}
document.getElementById('loginBtn').addEventListener('click',function() {
    //do the login
    FB.login(function(response) {
        if (response.authResponse) {
            access_token = response.authResponse.accessToken;
            user_id = response.authResponse.userID;//get FB UID
            console.log('access_token = '+access_token);
            console.log('user_id = '+user_id);
            $("#access_token").text("접근 토큰 : "+access_token);
            $("#user_id").text("FB UID : "+user_id);

            getUserData();
        }
    }, {scope:'email,public_profile,user_birthday',
        return_scopes:true});
},false);

window.fbAsyncInit = function() {
    FB.init({
        appId   : '686895021998118',
        cookie  : true,
        xfbml   : true,
        version : 'v2.8'
    });
};

(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ko_KR/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

FB.logout(function(response) {
        // Person is now logged out
    });


</script>

<!-- 우편번호 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- 쇼핑몰 홈페이지 회원 가입 메서드 -->
<script>

//우편번호 API
function DaumPostCode(){
    new daum.Postcode({
        oncomplete: function(data) {
            var roadAddr = data.roadAddress;
            var address = data.address;
            
            document.getElementById("zipcode").value = data.zonecode;
            document.getElementById("address").value = roadAddr;
        }
    }).open();	
}

$(document).ready(function(){
    //비밀번호 입력 시 값이 같지 않을 때 경고창을 띄움
    $('.pw').focusout(function () {
        var pwd1 = $("#pw1").val();
        var pwd2 = $("#pw2").val();
    
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
            } else {
                alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
            }
        }
    });
});
</script>
        </div>
<script>
    $(document).ready(function(){
        console.log($("#re").text());
        if($("input[type=hidden]").val()== "result") alert("회원 가입을 축하드립니다.");
    });

</script>
    <c:if test = "${result eq 1 }">
        <input type="hidden" value="result"/>
    </c:if>

            <form id="login" action="login" class="input-group" method="post">
                <input type="text" name="email" class="input-field" placeholder="이메일주소 입력" required>
                <input type="password" name= "password" class="input-field" placeholder="패스워드 입력" required>
                <button class="submit">로그인</button><br>
                <button class="submit" onclick="signOut();">로그아웃</button>
            </form>

            <form id="register" action="register" class="input-group" method="post">       
                <input type="text" name="email" class="input-field" placeholder="아이디로 사용할 이메일 주소 입력" required>
                <input type="text" name="name" class="input-field" placeholder="이름" required>  
                <input type="password" name= "password" id="pw1" class="input-field" placeholder="패스워드 입력" required>
                <input type="password" id="pw2" class="input-field pw" placeholder="패스워드 확인" required>
                <input type= "text" name ="phone" class="input-field" placeholder="핸드폰번호 입력" >
                <input type= "text" name ="zipcode" id="zipcode" class="input-field" placeholder="우편번호 입력" required><input type="button" onclick="DaumPostCode()" value="우편번호 찾기"><br>
                <input type= "text" name ="address" id="address" class="input-field" placeholder="주소 입력" required>
                <input type= "text" name ="address2" class="input-field" placeholder="상세 주소 입력" required>
                <button class="submit">회원가입</button>
                
            </form>

        </div>
    </div>


    
    <script>
    var x = $("#login"); //id가 login인것을 찾아 jquery변수로 저장 
    var y = $("#register");
    var z = $("#btn");

    function login(){
        console.log("여기는 찍히겠지");
        x.css("left" ,"50px"); //x의 디자인 을 왼쪽 0부터 50px의 위치로 이동 
        y.css("left", "450px");
        z.css("left",  "0");
    }
    function register(){
        x.css("left" ,"-400px");
        y.css("left", "50px");
        z.css("left", "110px");
    }

        

    </script>
</body>
</html>