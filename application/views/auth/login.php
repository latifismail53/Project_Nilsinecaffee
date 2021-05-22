<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="id-ID">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo get_store_name(); ?> | LOGIN </title>
    <link href="<?php echo get_theme_uri('custom/auth/login/css/style.css'); ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo get_theme_uri('custom/auth/login/css/fontawesome-all.css'); ?>" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
</head>
<body>
    <div class="container"><h1>UNIVERSITAS NUSA MANDIRI</h1></div>
    <div class="">
        <div class="container">
            <div class="row">
                <div class="w3l-login-form">
                    <h2>Login Akun</h2>
                    <?php if ($flash_message) : ?>
                        <div class="flash-message">
                            <?php echo $flash_message; ?>
                        </div>
                    <?php endif; ?>

                    <?php if ($redirection) : ?>
                        <div class="flash-message">
                            Silahkan login untuk melanjutkan...
                        </div>
                    <?php endif; ?>

                    <?php echo form_open('auth/login/do_login'); ?>

                    <div class=" w3l-form-group">
                        <label>Username:</label>
                        <div class="group">
                            <i class="fas fa-user"></i>
                            <input type="text" name="username" value="<?php echo set_value('username', $old_username); ?>" class="form-control" placeholder="Username" minlength="4" maxlength="16" required>
                        </div>
                        <?php echo form_error('username'); ?>
                    </div>
                    <div class=" w3l-form-group">
                        <label>Password:</label>
                        <div class="group">
                            <i class="fas fa-unlock"></i>
                            <input type="password" name="password" id="pswrd" class="form-control" placeholder="Password" required>
                            <a href="#" class="text-dark" id="klik">
                                <i class="fa fa-eye" id="icon"></i>
                            </a>
                        </div>
                        <?php echo form_error('password'); ?>
                    </div>
                    <div class="forgot">
                        <?php echo anchor('auth/register', 'Belum Punya Akun?'); ?>
                        <p><input type="checkbox" name="remember_me" value="1">Ingat saya</p>
                    </div>
                    <button type="submit">Login</button>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p class="copyright-agileinfo"> &copy; <script>document.write(new Date().getFullYear());</script> <?php echo anchor(base_url(), get_store_name()); ?></p>
    </footer>

</body>
<script type="text/javascript">
    $(document).ready(function(){
        // alert('hello');
        $("#klik").click(function(){
            $("#icon").toggleClass('fa-eye-slash');

            var input = $("#pswrd");
            if (input.attr("type") === "password") {
                input.attr("type", "text");
            }else{
                input.attr("type", "password");
            }
        });
    });
</script>
</html>