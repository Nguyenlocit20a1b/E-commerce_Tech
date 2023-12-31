<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 5/14/2023
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
  <link rel="stylesheet" href="/static/css/slide_nav.css">
  <title>SideBAr</title>
</head>

<body>
<div class="navigation">
  <ul>
    <li>
      <a href="/admin">
        <span class="icon"><i class="fa-solid fa-house"></i></span>
        <span class="title">Home</span>
      </a>
    </li>
	<li>
      <a href="/">
        <span class="icon"><i  class="fa-solid fa-lock"></i></span>
        <span class="title">View Client</span>
      </a>
    </li>
    <li>
      <a href="#">
        <span class="icon"><i class="fa-solid fa-user"></i></span>
        <span class="title">Users</span>
      </a>
    </li>
    <li>
      <a href="/admin/product">
        <span class="icon"><i class="fa-solid fa-message"></i></span>
        <span class="title">Products</span>
      </a>
    </li>
    <li>
      <a href="#">
        <span class="icon"><i  class="fa-solid fa-lock"></i></span>
        <span class="title">Categories</span>
      </a>
    </li>
    <li>
      <a href="#">
        <span class="icon"><i class="fa-solid fa-gear"></i></span>
        <span class="title">Settings</span>
      </a>
    </li>
    <li>
      <a href="">
        <span class="icon"><i class="fa-solid fa-circle-info "></i></span>
        <span class="title">Help</span>
      </a>
    </li>
    <li>
      <a href="#">
        <span class="icon"><i class="fa-solid fa-right-from-bracket"></i></span>
        <span class="title">SignOut</span>
      </a>
    </li>
  </ul>
</div>

<div class="toggle" onclick="toggleMenu()"></div>
<script type="text/javascript">
  function toggleMenu() {
    let navigation = document.querySelector('.navigation');
    let toggle = document.querySelector('.toggle');
    navigation.classList.toggle('active');
    toggle.classList.toggle('active');
  }
</script>
</body>

</html>