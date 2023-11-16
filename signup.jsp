<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter mobile Number" required>
	<select name="securityQuestion" required>
	<option value="What was your first car?">What was your first car?</option>
	<option value="What is the name of your first pet?">What is the name of your first pet? </option>
	<option value="What elementry school did you attend?">What elementry school did you attend? </option>
	<option value="What is the name of the town where you born?">What is the name of the town where you born? </option>
	</select>
	<input type="text" name="answer" placeholder="Enter answer" required>
	<input type="password" name="password" placeholder="Enter Password" required>	    
    <input type="Submit" value="SignUp">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
 String msg=request.getParameter("msg");
if("valid".equals(msg))
{
 %>	
 <h1>Successfully Registered !!..</h1>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h1>Something Went Wrong! Try Again !</h1>
<%}%>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>