<?php
include('../includes/db.php');  // Database connection
session_start();

if (isset($_POST['register'])) {
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Hash the password
    $role = 'user'; // Default role for users

    // Check if the email already exists
    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        echo "<script>alert('Email is already registered!');</script>";
    } else {
        // Insert new user
        $stmt = $conn->prepare("INSERT INTO users (email, password, role) VALUES (?, ?, ?)");
        $stmt->execute([$email, $password, $role]);

        // Log the user in after successful registration
        $_SESSION['user_id'] = $conn->lastInsertId();
        header("Location: ../index.php"); // Redirect to the homepage
        exit();
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
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
        .register-container {
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
            font-weight: 500;
        }
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 14px;
            margin-bottom: 18px;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            background: rgba(255,255,255,0.9);
            box-sizing: border-box;
            outline: none;
            transition: all 0.3s ease;
        }
        input:focus {
            box-shadow: 0 0 10px rgba(255,255,255,0.6);
        }
        .login-link {
            text-align: center;
            margin-top: 15px;
            color: white;
        }
        .login-link a {
            color: #ffd369;
            text-decoration: none;
            font-weight: bold;
        }
        button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #ff9966, #ff5e62);
            color: white;
            font-size: 1rem;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(255,94,98,0.4);
        }
        .error-message {
            color: #e74c3c;
            font-size: 1em;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h1 class="logo">ZYPP</h1>
        <h2>Register</h2>
        <form method="POST">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email" required>
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter your password" required>
            <button type="submit" name="register">Register</button>
        </form>
        <p class="login-link">
            Already have an account?
            <a href="login.php">Login</a>
        </p>
        <?php if (isset($error_message)): ?>
            <p class="error-message"><?= htmlspecialchars($error_message); ?></p>
        <?php endif; ?>
    </div>
</body>
</html>