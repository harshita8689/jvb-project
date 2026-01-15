

function addToCart(name, price) {
  let cart = JSON.parse(localStorage.getItem("cart")) || [];
  cart.push({ name, price });
  localStorage.setItem("cart", JSON.stringify(cart));
  alert(`${name} added to cart!`);
  updateCartCount();
}

function updateCartCount() {
  const cart = JSON.parse(localStorage.getItem("cart")) || [];
  document.getElementById("cart-count").innerText = cart.length;
}
updateCartCount();

function filterProducts() {
  const search = document.getElementById("searchInput").value.toLowerCase();
  const fabric = document.getElementById("fabricFilter").value;
  const all = document.querySelectorAll(".product");

  all.forEach(prod => {
    const nameMatch = prod.dataset.name.includes(search);
    const fabricMatch = !fabric || prod.dataset.fabric === fabric;
    prod.style.display = nameMatch && fabricMatch ? "block" : "none";
  });
}
let slideIndex = 0;

  function showSlides() {
    const slides = document.querySelectorAll(".slide");
    slides.forEach((slide) => slide.classList.remove("active"));

    slideIndex++;
    if (slideIndex > slides.length) {
      slideIndex = 1;
    }

    slides[slideIndex - 1].classList.add("active");
    setTimeout(showSlides, 2500); // Change every 2.5 seconds
  }

  document.addEventListener("DOMContentLoaded", showSlides);