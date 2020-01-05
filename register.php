
<!DOCTYPE html>
<html>
<head>
  <title>Registration</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
  
  	<h2>Registration</h2>
  </div>
	
  <form method="post" action="model.php">
  	<div class="input-group">
  	  <label>First Name</label>
  	  <input type="text" name="First_Name" value=" ">
  	</div>
	<div class="input-group">
  	  <label>Last Name</label>
  	  <input type="text" name="Last_Name" value=" ">
  	</div>
   <!-- <div class="input-group"> -->
      <label>Gender</label>
      <div>
      Male<input type="radio" name="Gender" value="Male" checked=""></div><br>
      <div>
      Female<input type="radio" name="Gender" value="Female" checked="">
    </div><br>
    </div>
	<div class="input-group">
  	  <label>Designation</label>
  	  <input type="text" name="Designation" value=" ">
  	</div>
    <div class="input-group">
      <label>Faculty</label>
     <select name="Faculty" class="drop-down">
     <option selected hidden value=" "> Select the Faculty </option>
     <option> Faculty of Applied Science</option>
     <option> Faculty of Animal Science & Export Agriculture</option>
     <option> Faculty of Management<option>
      <option>Faculty of Technological Studies</option>
    </select>
  </div>
  <div class="input-group">
      <label>Department</label>
    <select name="Department" class="drop-down">
     <option selected hidden value=" "> Select the Department </option>
     <option> Department of Computer Science and Informatics</option>
     <option> Department of Science and Technology</option>
     <option> Department of Animal Science</option>
     <option> Department of Export Agriculture</option>
     <option> Department of Management Science</option>
     <option> Department of Tourism Studies</option>
     <option> Department of Public Administration</option>
     <option> Department of Biosystems Technology</option>
     <option> Department of Engineering Technology</option>
    </select>

    </div>
	<div class="input-group">
  	  <label>Username</label>
  	  <input type="text" name="Username" value=" ">
  	</div>
     <div class="input-group">
      <label>Password</label>
      <input type="password" name="password_1">
    </div>
    <div class="input-group">
      <label>Confirm password</label>
      <input type="password" name="password_2">
    </div>
  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="email" name="email" value=" ">
  	</div>
   <div class="input-group">
      <label>Address</label>
      <textarea name="address"rows="4"></textarea>
    </div>
	
  
  	<div class="input-group">
	<button type="submit" class= "btn btn-primary" name="userRegister">Register</button>
  	<p>
  		Already a member? <a href="Login FORM.html">Sign in</a>
  	</p>
  </form>
</body>
</html>