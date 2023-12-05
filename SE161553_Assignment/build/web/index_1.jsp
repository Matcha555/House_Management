<!-- Trang dùng de login-->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap 4 Login Modal Example</title>
        <!-- Bootstrap CSS -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
        <!-- Font Awesome CSS -->
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.3.1/css/all.css'>
        <!-- Style CSS -->
        <link rel="stylesheet" href="login/css/style.css">
        <!-- Demo CSS -->
        <link rel="stylesheet" href="login/css/demo.css">

    </head>
    <body>
        <header class="intro">
            <h1> Login </h1>
            <p> You don't want to log in? </p>
            <div class="action">
                <a href="homePage.jsp" title="Back to download and tutorial page" class="btn back">Back to home page</a>
            </div>

        </header>

        <main>
            <article>
                <p>The following is the example of Bootstrap 4 modal popup login form. </p>

                <!-- partial:index.partial.html -->
                <div class="container">
                    <button type="button" class="btn btn-info btn-round" data-toggle="modal" data-target="#loginModal">
                        Login
                    </button>  
                </div>

                <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header border-bottom-0">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-title text-center">
                                    <h4>Login</h4>
                                </div>
                                <div class="d-flex flex-column text-center">
                                    <form action="MainController" method="POST">
                                        <div class="form-group">
                                            <input class="form-control" type="text" name="userID" placeholder="Your user id...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="password" placeholder="Your password...">
                                        </div>
                                        <input type="submit" name="action" value="Login" class="btn btn-info btn-block btn-round" /> 
                                    </form>
                                    <br/>
                                    ${requestScope.ERROR}
                                    <div class="text-center text-muted delimiter">or use a social network</div>
                                    <div class="d-flex justify-content-center social-buttons">
                                        <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8084/My_Assignment/LoginGoogleController&response_type=code
                                           &client_id=857429839712-s5qi8r9ooabhq9e2jcfh01asbpn7b36d.apps.googleusercontent.com&approval_prompt=force"
                                           class="btn btn-secondary btn-round"><i class="fab fa-google"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- partial -->


            </article>
        </main>

        <footer class="credit">Author: Cristina - Distributed By: <a title="Awesome web design code & scripts" href="https://www.codehim.com?source=demo-page" target="_blank">CodeHim</a></footer>
        <!-- jQuery -->
        <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
        <!-- Popper JS -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
        <!-- Bootstrap JS -->
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'></script>
        <!-- Custom Script -->      
        <script src="login/js/script.js"></script>

    </body>
</html>