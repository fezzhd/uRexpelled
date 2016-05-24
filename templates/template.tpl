<!DOCTYPE html>
<html>
<head>
  <title>uRexpelled</title>
  <link rel="stylesheet" href="css/style.css" type="text/css">
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="css/font-awesome.css" type="text/css">
  <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css">
  <script src="js/jquery-1.12.2.js" type="text/javascript"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
  <div id="page">
    <header>
      <div class="header">
        <div class="middle">
          <div class="top_logo">
            <a href="/">uRexpelled</a>
          </div>
          <div class="top_menu">
          <div class="menu_opener"><i class="fa fa-bars"></i></div>
          <div class="top_login">
            <div class="top_login_icon"><a href="profile.php"><i class="fa fa-user"></i></a></div>
            <!-- {LOGIN}from here -->
            <div class="top_login_icon"  data-toggle="modal" data-target="#exampleModal" data-whatever="@fat"><i class="fa fa-user"></i></div>
            <div class="top_login_panel">
              <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="exampleModalLabel">Авторизация</h4>
                    </div>
                    <form action="phpWorking/workingForm.php" method="POST">
                    <div class="modal-body">
                        <div class="form-group">
                          <label for="recipient-name" class="control-label">Логин:</label>
                          <input type="text" class="form-control" id="login">
                        </div>
                        <div class="form-group">
                          <label for="recipient-name" class="control-label">Пароль:</label>
                          <input class="form-control" id="password" type="password">
                        </div>
                    </div>
                  </form>
                    <div class="modal-footer">
                      <input type="submit" id="forgetPassword" onclick="location.href='forgotPassword.php'" value="Забыли пароль" class="btn btn-default"/>
                      <input type="submit" id="registration" onclick="location.href='registration.php'" class="btn btn-default" value="Регистрация"/>
                      <button type="button" class="btn btn-default" data-dismiss="modal">Отмена</button>
                      <input type="submit" id="loginAccept" value="Вход" class="btn btn-primary"/>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- to here -->
          </div>
            <nav>
              <div class="menu_overflow">
                <ul class="menu">
                  {MENU_SELECTED}
                </ul>
            </div>
            </nav>
          </div>
        </div>
      </div>
    </header>
    <div style="clear:both;"></div>
    <div id="page_body">
      <div class="middle middle_content">
        <div class="content page_content">
          {CONTENT}
        </div>
      </div>
    </div>

    <footer class="footer">
      <div class="middle">
        <p class="text-muted">(C) Copyright by FezZ.</p>
      </div>
    </footer>
  </div>

  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="js/scripts.js" type="text/javascript"></script>
</body>
</html>
