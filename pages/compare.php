<?php
session_start();
include("../includes/db.php");

if (!isset($_GET['id'])) {
    die("Book not found.");
}

$product_id = $_GET['id'];

// Fetch selected book
$stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
$stmt->execute([$product_id]);
$product = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$product) {
    die("Book not found.");
}

// Fetch all prices
$stmt = $conn->prepare("
SELECT platform, price, purchase_url
FROM book_prices
WHERE product_id = ?
ORDER BY price ASC
");
$stmt->execute([$product_id]);
$prices = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>Compare Prices | ZYPP</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{

    font-family:Arial,sans-serif;

    background:
    linear-gradient(
        180deg,
        #eef2ff 0%,
        #f8f9ff 40%,
        #f4f6fb 100%
    );

    min-height:100vh;

    display:flex;

    justify-content:center;

    align-items:center;

    padding:30px;

}

.container{

    width:100%;

    max-width:720px;

    background:
    rgba(255,255,255,.70);

    backdrop-filter:blur(10px);

    border-radius:20px;

    padding:30px;

    box-shadow:
    0 10px 25px rgba(0,0,0,.08);

}

.top{

    display:flex;

    gap:30px;

    align-items:center;

    margin-bottom:25px;

}

.book-image{

    width:140px;

    height:200px;

    object-fit:cover;

    border-radius:12px;

    box-shadow:
    0 8px 20px rgba(0,0,0,.15);

}

.book-details{

    flex:1;

}

.book-details h1{

    color:#2c3e50;

    margin-bottom:12px;

    font-size:30px;

}

.book-details p{

    color:#666;

    line-height:1.6;

}

.back{

    display:inline-block;

    margin-bottom:25px;

    color:#667eea;

    text-decoration:none;

    font-weight:bold;

    transition:.3s;

}

.back:hover{

    color:#764ba2;

}

.seller{

    display:flex;

    justify-content:space-between;

    align-items:center;

    background:white;

    border-radius:15px;

    padding:15px 20px;

    margin-bottom:15px;

    box-shadow:
    0 5px 15px rgba(0,0,0,.08);

    transition:.3s;

}

.seller:hover{

    transform:translateY(-3px);

}

.left{

    display:flex;

    flex-direction:column;

}

.platform{

    font-size:18px;

    font-weight:bold;

    color:#2c3e50;

    margin-bottom:6px;

}

.price{

    font-size:22px;

    font-weight:bold;

    color:#27ae60;

}

.buy{

    background:
    linear-gradient(
        135deg,
        #ff9966,
        #ff5e62
    );

    color:white;

    text-decoration:none;

    padding:10px 18px;

    border-radius:10px;

    font-weight:bold;

    transition:.3s;

}

.buy:hover{

    transform:translateY(-2px);

    box-shadow:
    0 8px 18px rgba(255,94,98,.35);

}

.price-note{

    margin-top:20px;

    background:#eef7ff;

    border-left:5px solid #2196f3;

    padding:15px;

    border-radius:10px;

    color:#555;

    line-height:1.6;

    font-size:14px;

}

@media(max-width:768px){

.top{

    flex-direction:column;

    text-align:center;

}

.book-image{

    width: 115px;

    height: 165px;

}

.seller{

    flex-direction:column;

    gap:15px;

}

.buy{

    width:100%;

    text-align:center;

}

}

</style>

</head>

<body>

<div class="container">

<a
href="../index.php"
class="back">

← Back to Home

</a>

<div class="top">

<img
src="../images/<?= htmlspecialchars($product['image']); ?>"
alt="<?= htmlspecialchars($product['name']); ?>"
class="book-image">

<div class="book-details">

<h1>

<?= htmlspecialchars($product['name']); ?>

</h1>

<p>

<?= htmlspecialchars($product['description']); ?>

</p>

</div>

</div>

<?php foreach($prices as $row): ?>

<div class="seller">

    <div class="left">

        <div class="platform">

            <?= htmlspecialchars($row['platform']); ?>

        </div>

        <div class="price">

            ₹<?= number_format($row['price'],2); ?>

        </div>

    </div>

    <a
        href="<?= htmlspecialchars($row['purchase_url']); ?>"
        target="_blank"
        class="buy">

        Buy Now

    </a>

</div>

<?php endforeach; ?>

<div class="price-note">

<strong>ℹ️ Note</strong><br><br>

Prices displayed are for comparison purposes and may vary on the retailer's website due to discounts, offers, or price updates. Please verify the latest price on the retailer's website before purchasing.

</div>

</div>

</body>

</html>