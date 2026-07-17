<?php
session_start();
include 'includes/db.php';

// Fetch products
$stmt = $conn->query("SELECT * FROM products");
$products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ZYPP</title>

<link rel="stylesheet" href="css/style.css">

</head>
<body>

<header>
    <div class="header-container">

        <h1>ZYPP</h1>
<h4>A Book Price Comparison Platform</h4>
        <nav>

<?php if(isset($_SESSION['user_id'])): ?>

    <a href="pages/logout.php" class="logout-button">
        Logout
    </a>

<?php else: ?>

    <a href="pages/login.php">Login</a>

    <a href="pages/register.php">Register</a>

<?php endif; ?>

</nav>

    </div>
</header>

<div class="hero-section">

    <h2>Compare Book Prices Instantly</h2>

    <p>
        Find the lowest price for your favourite books across Amazon, Flipkart and Bookswagon.
    </p>

</div>

<div class="main-container">

    <main>

        <h2>Here You Go!</h2>
        <div class="product-list">

            <?php if(empty($products)): ?>

                <p>No books available.</p>

            <?php else: ?>

                <?php foreach($products as $product): ?>
                    <?php

                        $priceStmt = $conn->prepare("
                            SELECT
                                MIN(price) AS min_price,
                                MAX(price) AS max_price
                            FROM book_prices
                            WHERE product_id = ?
                        ");

                        $priceStmt->execute([$product['id']]);
                        $priceData = $priceStmt->fetch(PDO::FETCH_ASSOC);

                        ?>

                    <div class="product">

                        <?php if(!empty($product['image'])): ?>

                            <div class="image-container">

                                <img
                                    src="images/<?= htmlspecialchars($product['image']); ?>"
                                    alt="<?= htmlspecialchars($product['name']); ?>"
                                    class="product-image">

                            </div>

                        <?php endif; ?>

                        <h3>
                            <?= htmlspecialchars($product['name']); ?>
                        </h3>

                        <p class="price">
                            <?php if($priceData['min_price']) : ?>
                                ₹<?= number_format($priceData['min_price'],2); ?> -
                                ₹<?= number_format($priceData['max_price'],2); ?>
                            <?php else : ?>
                                ₹<?= number_format($product['price'],2); ?>
                            <?php endif; ?>
                            </p>
                        <p>
                            <?= htmlspecialchars($product['description']); ?>
                        </p>

                        <a href="pages/compare.php?id=<?= $product['id']; ?>"
                            class="add-to-cart-button">
                            Compare Prices </a>

                    </div>

                <?php endforeach; ?>

            <?php endif; ?>

        </div>

    </main>

</div>

<footer>

<p>

© <?= date('Y'); ?> ZYPP |
Book Price Comparison Platform

</p>

</footer>


</body>
</html>