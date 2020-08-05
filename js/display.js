/*<form name="loginform" onSubmit="return validateForm();" action="main.html" method="post">
      <label>User name</label>
      <input type="text" name="usr" placeholder="username"> 
      <label>Password</label>
      <input type="password" name="pword" placeholder="password">
      <input type="submit" value="Login" class="button"/>
  </form>*/

 
      function validateForm() {
          var un = document.loginform.usr.value;
          var pw = document.loginform.pword.value;
          var username = "username"; 
          var password = "password";
          if ((un == username) && (pw == password)) {
             return true;
         }
         else {
            alert ("Login was unsuccessful, please check your username and password");
            return false;
         }
      }