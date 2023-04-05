<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link rel="stylesheet" href="style.css">
</head>
<body>

	<nav>
		<div class="logo">@brayanmasc</div>
		<input type="checkbox" id="click"> <label for="click"
			class="menu-btn"> <i class="fas fa-bars"></i>
		</label>
		<ul style="position: fixed; right: 100px; top: 30px;">
			<li><a class="active" href="home.jsp">Home</a></li>

		</ul>
	</nav>

	<div class="container">
		<div class="forms">
			<div class="form login">
				<span class="title">Login</span>

				<form action="LoginServlet" method="post">
					<div class="input-field">
						<input type="text" placeholder="Email" class="password" id="email"
							name="email" required> <i class="uil uil-envelope icon"></i>
					</div>
					<div class="input-field">
						<input type="password" class="password" placeholder="Senha"
							id="Senha" name="senha" required> <i
							class="uil uil-lock icon"></i> <i
							class="uil uil-eye-slash showHidePw"></i>
					</div>

					<div class="checkbox-text">
						<div class="checkbox-content">
							<input type="checkbox" id="logCheck"> <label
								for="logCheck" class="text">Lembre-se de mim</label>
						</div>

						<a href="#" class="text">Esqueceu a senha?</a>
					</div>

					<div class="input-field button">
						<input type="submit" value="Entrar">
					</div>
				</form>

				<div class="login-signup">
					<span class="text">Não é membro? <a href="#"
						class="text signup-link">Faça seu cadastro</a>
					</span>
				</div>
			</div>

			<!-- Registration Form -->
			<div class="form signup">
				<span class="title">Registrar</span>

				<form action="#">
					<div class="input-field">
						<input type="text" class="password" placeholder="Nome completo"
							required> <i class="uil uil-user"></i>
					</div>
					<div class="input-field">
						<input type="text" class="password" placeholder="Email valido"
							required> <i class="uil uil-envelope icon"></i>
					</div>
					<div class="input-field">
						<input type="password" class="password" placeholder="Senha"
							required> <i class="uil uil-lock icon"></i>
					</div>
					<div class="input-field">
						<input type="password" class="password"
							placeholder="Confirmar senha" required> <i
							class="uil uil-lock icon"></i> <i
							class="uil uil-eye-slash showHidePw"></i>
					</div>

					<div class="checkbox-text">
						<div class="checkbox-content">
							<input type="checkbox" id="termCon"> <label for="termCon"
								class="text">Eu aceito todos os termos.</label>
						</div>
					</div>

					<div class="input-field button">
						<input type="button" value="Registrar-se">
					</div>
				</form>

				<div class="login-signup">
					<span class="text">Já é membro? <a href="#"
						class="text login-link">Entre agora</a>
					</span>
				</div>
			</div>
		</div>
	</div>
	<script> const container = document.querySelector(".container"),
        pwShowHide = document.querySelectorAll(".showHidePw"),
        pwFields = document.querySelectorAll(".password"),
        signUp = document.querySelector(".signup-link"),
        login = document.querySelector(".login-link");
  
      //   js code to show/hide password and change icon
      pwShowHide.forEach(eyeIcon =>{
          eyeIcon.addEventListener("click", ()=>{
              pwFields.forEach(pwField =>{
                  if(pwField.type ==="password"){
                      pwField.type = "text";
  
                      pwShowHide.forEach(icon =>{
                          icon.classList.replace("uil-eye-slash", "uil-eye");
                      })
                  }else{
                      pwField.type = "password";
  
                      pwShowHide.forEach(icon =>{
                          icon.classList.replace("uil-eye", "uil-eye-slash");
                      })
                  }
              }) 
          })
      })
  
      // js code to appear signup and login form
      signUp.addEventListener("click", ( )=>{
          container.classList.add("active");
      });
      login.addEventListener("click", ( )=>{
          container.classList.remove("active");
      });
  </script>
  <footer> Copyright ©copy 2023 </footer>
</body>
</html>