
import './page.css';

const apiBaseUrl = "http://localhost:8080/api/products";

// Load products and display on the homepage
async function loadProducts() {
    const response = await fetch(apiBaseUrl);
    const products = await response.json();

    const tableBody = document.querySelector("#productTable tbody");
    tableBody.innerHTML = "";
    products.forEach(product => {
        const row = `
            <tr>
                <td>${product.productID}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.quantity}</td>
                <td>
                    <button onclick="editProduct(${product.productID})">Edit</button>
                    <button onclick="deleteProduct(${product.productID})">Delete</button>
                </td>
            </tr>
        `;
        tableBody.innerHTML += row;
    });
}

// Redirect to add/edit product page
function loadAddProductPage() {
    window.location.href = "addProduct.html";
}

// Save product (Add or Update)
async function saveProduct(event) {
    event.preventDefault();

    const productId = document.getElementById("productId").value;
    const product = {
        name: document.getElementById("productName").value,
        description: document.getElementById("productDescription").value,
        quantity: document.getElementById("productQuantity").value,
        lastSoldDate: document.getElementById("productLastSoldDate").value,
        supplierID: document.getElementById("productSupplierID").value,
    };

    const method = productId ? "PUT" : "POST";
    const url = productId ? `${apiBaseUrl}/${productId}` : apiBaseUrl;

    await fetch(url, {
        method,
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(product),
    });

    window.location.href = "index.html";
}

// Edit product
async function editProduct(productId) {
    const response = await fetch(`${apiBaseUrl}/${productId}`);
    const product = await response.json();

    window.location.href = "addProduct.html";
    document.getElementById("productId").value = product.productID;
    document.getElementById("productName").value = product.name;
    document.getElementById("productDescription").value = product.description;
    document.getElementById("productQuantity").value = product.quantity;
    document.getElementById("productLastSoldDate").value = product.lastSoldDate;
    document.getElementById("productSupplierID").value = product.supplierID;
}

// Delete product
async function deleteProduct(productId) {
    await fetch(`${apiBaseUrl}/${productId}`, { method: "DELETE" });
    loadProducts();
}

// Load products on page load
if (window.location.pathname.includes("index.html")) {
    loadProducts();
}
