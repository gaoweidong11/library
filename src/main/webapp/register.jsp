<%--
  Created by IntelliJ IDEA.
  User: 高伟冬
  Date: 2017/6/15
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="js/jquery-3.2.1.js"></script>
    <script>
$(function () {
    $('#username').blur(function () {
        $.ajax({
            url:'user',
            method:'post',
            data:{'action':'isUsernameExist','username':$(this).val()},
            success:function (data) {
                console.log(data);
                if (data == 'true'){
                    $('span').css('color','#f00').text('用户名已存在');
                }else {
                    $('span').css('color','#0f0').text('用户名可以使用');
                }
            }
        });
    });
    $('form').submit(function (e) {
        $.ajax({
            url: 'user',
            method: 'post',
            data: {'action': 'isUsernameExist', 'username' :$('#username').val()},
            success: function (data) {
                if (data == 'true') {
                    $('span').css('color', '#f00').text('用户名已经存在');
                    e.preventDefault(); //
                    return false;
                } else {
                    $('span').css('color', '#0f0').text('用户名可以使用...');
                    return true;
                }
            }
        });
    });
})
    </script>
</head>
<body>
<h1>注册</h1>
<hr>
<form action="user" method="post">
    <input type="hidden" name="action" value="register">
    <input type="text" name="username" placeholder="用户名"><span></span><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="注册">
</form>
${requestScope.message}
</body>
</html>
