<?php
include('../includes/db.php');  // Include the database connection
session_start();

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Prepare the SQL query
    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user && password_verify($password, $user['password'])) {
        // Successful login
        $_SESSION['user_id'] = $user['id']; // Store user ID in session
        header("Location: ../index.php"); // Redirect to the main page
        exit();
    } else {
        // Invalid login
        $error_message = "Invalid email or password.";
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            padding: 35px;
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 420px;
            border: 1px solid rgba(255,255,255,0.2);
        }
        .logo {
            text-align: center;
            font-size: 3rem;
            font-weight: 900;
            letter-spacing: 4px;
            color: #FFD369;
            text-shadow:
                0 0 10px rgba(255,211,105,0.6),
                0 0 20px rgba(255,211,105,0.4);

            margin-bottom: 10px;
        }
        h2 {
            text-align: center;
            color: white;
            font-size: 2rem;
            margin-bottom: 25px;
        }
        label {
            color: white;
            font-size: 1rem;
            display: block;
            margin-bottom: 8px;
        }
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 14px;
            margin-bottom: 18px;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            box-sizing: border-box;
            outline: none;
        }
        input:focus {
            box-shadow: 0 0 10px rgba(255,255,255,0.6);
        }
        button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(
                135deg,
                #ff9966,
                #ff5e62
            );
            color: white;
            font-size: 1rem;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        button:hover {
            transform: translateY(-3px);
            box-shadow:
                0 8px 20px
                rgba(255,94,98,0.4);
        }
        .error-message {
            background: rgba(255,0,0,0.15);
            color: #ffcccc;
            padding: 10px;
            border-radius: 8px;
            text-align: center;
            margin-top: 15px;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
            color: white;
        }
        .register-link a {
            color: #FFD369;
            text-decoration: none;
            font-weight: bold;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
    <h1 class="logo">ZYPP</h1>
    <h2>Welcome Back</h2>

    <form method="POST">
        <label>Email</label>
        <input type="email" name="email" placeholder="Enter your email" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter your password" required>

        <button type="submit" name="login">Login</button>
    </form>

    <?php if (isset($error_message)): ?>
        <p class="error-message"><?= htmlspecialchars($error_message); ?></p>
    <?php endif; ?>

    <p class="register-link">
        New to ZYPP?
        <a href="register.php">Create Account</a>
    </p>
</div>
</body>
</html>