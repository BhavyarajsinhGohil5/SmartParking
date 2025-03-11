<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
</head>
<h1>Change Password</h1>

<form action="updatepassword" method="post">

Email: <input type="text" name="email"/><br><br>
OTP: <input type="text" name="otp"/><br><br>

New Password: <input type="password" name="password"/><br><br>
Confirm Password: <input type="password" name="confirmpassword"/><br><br>
<input type="submit" value="Update Password"/>
</form> 
<br><br>
<a href="login">Return to Login</a>

</body>
</html>
--%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Recover Password (v2)</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/icheck-bootstrap/3.0.1/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.2.0/css/adminlte.min.css">
<script data-cfasync="false" nonce="3cba4fd2-3f4b-4f5e-a367-5db52c194d0c">try{(function(w,d){!function(j,k,l,m){if(j.zaraz)console.error("zaraz is loaded twice");else{j[l]=j[l]||{};j[l].executed=[];j.zaraz={deferred:[],listeners:[]};j.zaraz._v="5850";j.zaraz._n="3cba4fd2-3f4b-4f5e-a367-5db52c194d0c";j.zaraz.q=[];j.zaraz._f=function(n){return async function(){var o=Array.prototype.slice.call(arguments);j.zaraz.q.push({m:n,a:o})}};for(const p of["track","set","debug"])j.zaraz[p]=j.zaraz._f(p);j.zaraz.init=()=>{var q=k.getElementsByTagName(m)[0],r=k.createElement(m),s=k.getElementsByTagName("title")[0];s&&(j[l].t=k.getElementsByTagName("title")[0].text);j[l].x=Math.random();j[l].w=j.screen.width;j[l].h=j.screen.height;j[l].j=j.innerHeight;j[l].e=j.innerWidth;j[l].l=j.location.href;j[l].r=k.referrer;j[l].k=j.screen.colorDepth;j[l].n=k.characterSet;j[l].o=(new Date).getTimezoneOffset();if(j.dataLayer)for(const t of Object.entries(Object.entries(dataLayer).reduce(((u,v)=>({...u[1],...v[1]})),{})))zaraz.set(t[0],t[1],{scope:"page"});j[l].q=[];for(;j.zaraz.q.length;){const w=j.zaraz.q.shift();j[l].q.push(w)}r.defer=!0;for(const x of[localStorage,sessionStorage])Object.keys(x||{}).filter((z=>z.startsWith("_zaraz_"))).forEach((y=>{try{j[l]["z_"+y.slice(7)]=JSON.parse(x.getItem(y))}catch{j[l]["z_"+y.slice(7)]=x.getItem(y)}}));r.referrerPolicy="origin";r.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(j[l])));q.parentNode.insertBefore(r,q)};["complete","interactive"].includes(k.readyState)?zaraz.init():j.addEventListener("DOMContentLoaded",zaraz.init)}}(w,d,"zarazData","script");window.zaraz._p=async bs=>new Promise((bt=>{if(bs){bs.e&&bs.e.forEach((bu=>{try{const bv=d.querySelector("script[nonce]"),bw=bv?.nonce||bv?.getAttribute("nonce"),bx=d.createElement("script");bw&&(bx.nonce=bw);bx.innerHTML=bu;bx.onload=()=>{d.head.removeChild(bx)};d.head.appendChild(bx)}catch(by){console.error(`Error executing script: ${bu}\n`,by)}}));Promise.allSettled((bs.f||[]).map((bz=>fetch(bz[0],bz[1]))))}bt()}));zaraz._p({"e":["(function(w,d){})(window,document)"]});})(window,document)}catch(e){throw fetch("/cdn-cgi/zaraz/t"),e;};</script></head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="../../index2.html" class="h1"><b>Smart</b>Parking</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">You are only one step away from your new password, recover your password now.</p>
      <form action="updatepassword" method="post">
        <div class="input-group mb-3">
          <input type="email" class="form-control" name="email" placeholder="Email">
          
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          
        </div>
        <div class="input-group mb-3">
          <input type="number" class="form-control" name="otp" placeholder="OTP">
          
            <div class="input-group-text">
              <span class="fas fa-key"></span>
            </div>
          
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password">
          
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="confirmpassword" placeholder="Confirm Password">
          
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          
        </div>
        <div class="row">
          <div class="col-12">
            <button type="submit" class="btn btn-primary btn-block">Update password</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <p class="mt-3 mb-1">
        <a href="login">Login</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>
