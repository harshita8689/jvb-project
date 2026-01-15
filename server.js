// Import necessary packages
const express = require("express");
const cors = require("cors");
const dbPool = require("./config.js");

// Create the Express app
const app = express();
const PORT = 3001;

// === MIDDLEWARE ===
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// === API ROUTES ===

// 1. Endpoint to get ALL products (NOW WITH SEARCH AND FILTER LOGIC)
app.get("/api/products", async (req, res) => {
  // Get search and fabric from the query parameters in the URL
  const { search, fabric } = req.query;

  let sql = "SELECT * FROM suits WHERE 1 = 1"; // Start with a base query
  const params = []; // An array to hold our query values safely

  // If a search term is provided, add a WHERE clause for the name
  if (search) {
    sql += " AND name LIKE ?";
    params.push(`%${search}%`); // Use % for partial matching
  }

  // If a fabric is selected, add a WHERE clause for the fabric
  if (fabric) {
    sql += " AND fabric = ?";
    params.push(fabric);
  }

  try {
    // Execute the dynamically built query with the safe parameters
    const [rows] = await dbPool.query(sql, params);
    res.json(rows);
  } catch (error) {
    console.error("Database query failed:", error);
    res.status(500).json({ error: "Failed to fetch products." });
  }
});

// 2. Endpoint to get a SINGLE product by its ID (no changes here)
app.get("/api/products/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const [rows] = await dbPool.query("SELECT * FROM suits WHERE id = ?", [id]);
    if (rows.length === 0) {
      return res.status(404).json({ error: "Product not found." });
    }
    res.json(rows[0]);
  } catch (error) {
    console.error("Database query for single product failed:", error);
    res.status(500).json({ error: "Failed to fetch product." });
  }
});

// 3. Endpoint to handle the contact form submission (no changes here)
app.post("/api/contact", (req, res) => {
  const { name, email, contact, rating, message } = req.body;
  console.log("New Contact Form Submission:", {
    name,
    email,
    contact,
    rating,
    message,
  });
  res.status(200).json({ message: "Thank you for your message!" });
});
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const SECRET_KEY = "jvb_secure_key"; // change later

app.post("/api/register", async (req, res) => {
  const { email, password } = req.body;

  try {
    const hash = await bcrypt.hash(password, 10);
    await pool.query("INSERT INTO users (email, password_hash) VALUES (?, ?)", [
      email,
      hash,
    ]);
    res.json({ message: "Registered successfully" });
  } catch (err) {
    res.status(500).json({ error: "Email already exists" });
  }
});

app.post("/api/login", async (req, res) => {
  const { email, password } = req.body;

  const [rows] = await pool.query("SELECT * FROM users WHERE email = ?", [
    email,
  ]);
  if (rows.length === 0)
    return res.status(401).json({ error: "Invalid email" });

  const user = rows[0];
  const match = await bcrypt.compare(password, user.password_hash);
  if (!match) return res.status(401).json({ error: "Invalid password" });

  const token = jwt.sign({ userId: user.id, role: user.role }, SECRET_KEY, {
    expiresIn: "1h",
  });

  res.json({ message: "Login successful", token, role: user.role });
});

// === START THE SERVER ===
app.listen(PORT, () => {
  console.log(
    `✅ Backend server is running and listening on http://localhost:${PORT}`
  );
});
