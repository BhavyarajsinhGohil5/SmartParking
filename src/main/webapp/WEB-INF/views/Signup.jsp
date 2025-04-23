<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%---- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sign up</h1>
<form action="saveuser" method="post">

       FirstName: <input type="text" name="firstName"/> <br> <br>
       LastName: <input type="text" name="lastName"/> <br> <br>
       Gender:Male<input type="radio" name="gender" value="male"/><br><br>
       		Female<input type="radio" name="gender" value="female" /><br><br>
       Email: <input type="email" name="email"/> <br> <br>
       Contact.no: <input type="tel" name="contactNum" maxlength="10" pattern="[0-9]{10}" required/> <br><br>
       password:<input type="password" name="password"/> <br> <br>
       Confirm Password: <input type="password" name="confirmpassword"/> <br><br>
       City: <input type="text" name="city"/> <br><br>
       <%----  Role: <input type="text" name="role"/> <br><br> 
       
       <input type="submit" value="Sign Up"/>
       <br><br>

</form>

<a href="login">Login</a>

</body>
</html> --%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" >
  <title>SmartParking | Registration Page</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/icheck-bootstrap/3.0.1/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.2.0/css/adminlte.min.css">
  <!-- Bootstrap Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
   <style>
    .register-box {
      width: 100%;
      max-width: 600px;
      margin:100%;
      
      padding-top: 20px;
    }
    .card-body {
      overflow-y: hidden;
      height: 575px;
    }
    body.hold-transition.register-page {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 120vh;
      margin: 0;
    }
  </style>
 <script data-cfasync="false" nonce="aba8404c-8360-425e-a40f-7bb97505873a">try{(function(w,d){!function(j,k,l,m){if(j.zaraz)console.error("zaraz is loaded twice");else{j[l]=j[l]||{};j[l].executed=[];j.zaraz={deferred:[],listeners:[]};j.zaraz._v="5850";j.zaraz._n="aba8404c-8360-425e-a40f-7bb97505873a";j.zaraz.q=[];j.zaraz._f=function(n){return async function(){var o=Array.prototype.slice.call(arguments);j.zaraz.q.push({m:n,a:o})}};for(const p of["track","set","debug"])j.zaraz[p]=j.zaraz._f(p);j.zaraz.init=()=>{var q=k.getElementsByTagName(m)[0],r=k.createElement(m),s=k.getElementsByTagName("title")[0];s&&(j[l].t=k.getElementsByTagName("title")[0].text);j[l].x=Math.random();j[l].w=j.screen.width;j[l].h=j.screen.height;j[l].j=j.innerHeight;j[l].e=j.innerWidth;j[l].l=j.location.href;j[l].r=k.referrer;j[l].k=j.screen.colorDepth;j[l].n=k.characterSet;j[l].o=(new Date).getTimezoneOffset();if(j.dataLayer)for(const t of Object.entries(Object.entries(dataLayer).reduce(((u,v)=>({...u[1],...v[1]})),{})))zaraz.set(t[0],t[1],{scope:"page"});j[l].q=[];for(;j.zaraz.q.length;){const w=j.zaraz.q.shift();j[l].q.push(w)}r.defer=!0;for(const x of[localStorage,sessionStorage])Object.keys(x||{}).filter((z=>z.startsWith("_zaraz_"))).forEach((y=>{try{j[l]["z_"+y.slice(7)]=JSON.parse(x.getItem(y))}catch{j[l]["z_"+y.slice(7)]=x.getItem(y)}}));r.referrerPolicy="origin";r.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(j[l])));q.parentNode.insertBefore(r,q)};["complete","interactive"].includes(k.readyState)?zaraz.init():j.addEventListener("DOMContentLoaded",zaraz.init)}}(w,d,"zarazData","script");window.zaraz._p=async bs=>new Promise((bt=>{if(bs){bs.e&&bs.e.forEach((bu=>{try{const bv=d.querySelector("script[nonce]"),bw=bv?.nonce||bv?.getAttribute("nonce"),bx=d.createElement("script");bw&&(bx.nonce=bw);bx.innerHTML=bu;bx.onload=()=>{d.head.removeChild(bx)};d.head.appendChild(bx)}catch(by){console.error(`Error executing script: ${bu}\n`,by)}}));Promise.allSettled((bs.f||[]).map((bz=>fetch(bz[0],bz[1]))))}bt()}));zaraz._p({"e":["(function(w,d){})(window,document)"]});})(window,document)}catch(e){throw fetch("/cdn-cgi/zaraz/t"),e;};</script></head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="card card-outline card-primary">
   <div class="card-header text-center" style="background: linear-gradient(to right, #6a11cb, #2575fc); padding: 20px; border-radius: 0;">
  <a href="../../index2.html" class="h1 text-white" style="text-decoration: none; font-family: 'Arial', sans-serif;">
   <!--  <img src="assets/img/logoparking.png"  style="height: 40px; margin-right: 10px;"> -->
    <b>Smart</b>Parking
  </a>
</div>

    <div class="card-body">
      <p class="login-box-msg">Register a new user</p>

      <form action="saveuser" method="post"  enctype="multipart/form-data">
        <div class="row">
          <div class="col-md-6">
            <div class="input-group mb-3">
              <input type="text" class="form-control" name="firstName" placeholder="First Name" required>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-user"></span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="input-group mb-3">
              <input type="text" class="form-control" name="lastName" placeholder="Last Name" required>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-user"></span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="email" class="form-control" name="email" placeholder="Email" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="tel" class="form-control" name="contactNum" placeholder="Contact Number" maxlength="10" pattern="[0-9]{10}" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="text" class="form-control" name="city" placeholder="City" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-city"></span>
            </div>
          </div>
          <%--- <div class="invalid-feedback">
                    Please provide a valid city.
                  </div>--%>
        </div>

        <%-----<div class="input-group mb-3">
          <div class="form-group clearfix">
            <div class="icheck-primary d-inline">
              Gender :
              <input type="radio" id="malegender" name="gender" value="Male">
              <label for="malegender">
                Male
              </label>
            </div>
            <div class="icheck-primary d-inline ml-3">
              <input type="radio" id="femalegender" name="gender" value="Female">
              <label for="femalegender">
                Female
              </label>
            </div>
          </div>
        </div> --%>
<fieldset class="d-inline align-items-center mb-3 gap-3" >
  Gender : 
  <div class="form-check form-check-inline ">
    <input class="form-check-input" type="radio" name="gender" id="malegender" value="Male" required>
    <label class="form-check-label" for="malegender">Male</label>
  </div>
  <div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" name="gender" id="femalegender" value="Female" required>
    <label class="form-check-label" for="femalegender">Female</label>
  </div>
</fieldset>

<div class="input-group mb-3">
          <input type="file" class="form-control" name="profilePic" placeholder="Profile" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="bi bi-person-bounding-box"></span>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="input-group mb-3">
              <input type="password" class="form-control" name="password" placeholder="Password" required>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-lock"></span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="input-group mb-3">
              <input type="password" class="form-control" name="confirmpassword" placeholder="Confirm Password" required>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-lock"></span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
                I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <div class="social-auth-links text-center">
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          Sign up using Google+
        </a>
      </div>

      <a href="login" class="text-center">I already have a user account</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>
