function loadCart() {
  const cart = JSON.parse(localStorage.getItem("cart")) || [];
  const itemsContainer = document.getElementById("cart-items");
  const totalContainer = document.getElementById("cart-total");
  let html = "";
  let total = 0;

  cart.forEach((item, index) => {
    html += `<p>${index + 1}. ${item.name} - ₹${item.price}</p>`;
    total += item.price;
  });

  itemsContainer.innerHTML = html || "<p>Your cart is empty.</p>";
  totalContainer.innerHTML = `<h3>Total: ₹${total}</h3>`;
}
loadCart();

async function downloadInvoice() {
  const cart = JSON.parse(localStorage.getItem("cart")) || [];
  if (!cart.length) return alert("Cart is empty!");

  const { jsPDF } = window.jspdf;
  const doc = new jsPDF();

  doc.setFontSize(16);
  doc.text("Jain Vastr Bhandar - Invoice", 20, 20);

  let y = 40;
  let total = 0;
  cart.forEach((item, i) => {
    doc.text(`${i + 1}. ${item.name} - ₹${item.price}`, 20, y);
    total += item.price;
    y += 10;
  });

  doc.text(`Total Amount: ₹${total}`, 20, y + 10);
  doc.save("invoice.pdf");
}
