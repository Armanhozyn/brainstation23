<?php

function filterProducts($products, $categoryName) {
    $filteredProducts = [];

    foreach ($products as $product) {
        // Check if the product's category is the specified category or contains the category name
        if ($product['category'] == $categoryName || strpos($product['category'], $categoryName) !== false) {
            $filteredProducts[] = $product;
        }
    }

    return $filteredProducts;
}

// Example usage:
$products = [
    ['name' => 'Product A', 'price' => 29.99, 'category' => 'backend'],
    ['name' => 'Product B', 'price' => 19.99, 'category' => 'Clothing'],
    ['name' => 'Product C', 'price' => 39.99, 'category' => 'backend'],
    ['name' => 'Product D', 'price' => 14.99, 'category' => 'Accessories'],
    ['name' => 'Product E', 'price' => 49.99, 'category' => 'Electronics'],
];

$categoryName = 'backend';

$filteredProducts = filterProducts($products, $categoryName);

// Display the filtered products
print_r($filteredProducts);

?>