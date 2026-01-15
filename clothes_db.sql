DROP DATABASE IF EXISTS clothes_db;
CREATE DATABASE clothes_db;
USE clothes_db;

-- Create suits table
CREATE TABLE suits (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  fabric VARCHAR(255) NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert products (ALL PRODUCTS WITHOUT CUTTING ANY TEXT)
INSERT INTO suits (name, description, price, fabric, image_url) VALUES
('Ganga Maroon and Peach Printed Suit', 'A beautiful Crepe Silk printed co-ord set in a striking maroon and peach combination.', 3582.00, 'Crepe Silk', 'p1.png'),
('Beige and Sesame Linen Co-ord Set', 'Front open linen kurta with tapered bottom to style you perfect summer outing outfit.', 5516.00, 'Top: 100% linen, bottom: 100% cotton', 'p2.png'),
('Beige Mul-Chanderi Silk Set', 'This set includes kurta, cotton bottom and woven chanderi dupatta, kurta has hand embroidery on yoke with sequin detail and gathers under yoke, with wide leg bottom.', 6090.00, 'Top- Mul-Chanderi, Bottom- Pure Cotton, Dupatta- Woven Chanderi', 'p3.png'),
('Celestial Blue Embroidered Kurta Set', 'This set includes kurta, bottom and dupatta, kurta has intricate embroidered yoke with gathers and embroidered dupatta.', 6500.00, 'Top- Mul Chanderi, Bottom- 100% Cotton, Dupatta- Mul Chanderi', 'p4.png'),
('Black Embroided Kurta Set', 'This set includes kurta, bottom and dupatta, kurta has side yokes with intricade thread embroideries and has gathers, dupatta pallus are also beautifully done with thread embroidery.' , 7900.00, 'Top- Mul Chanderi, Bottom- 100% Cotton, Dupatta- Mul Chanderi', 'p5.png'),
('Pale Blush Embroidered and Woven Kurta Set', 'This set includes embroidered kurta, woven dupatta and cotton wide leg bottom. kurta has intricate multi-colour embroidery on yoke with panelled pattern enhanced with crochet laces.', 4500.00, 'Top- Mul Chanderi, Bottom- 100% Cotton, Dupatta- Chanderi Jackguard', 'p6.png'),
('Beige and Pink Woven Kurta', 'Tulip woven dupatta and embroidery kurta with intricated hand details, with laces. pair it with wide leg satin bottom.', 5670.00, 'Top- Viscose Chanderi, Bottom- Cotton Satin, Dupatta- Viscose Chanderi', 'p7.png'),
('Pastel Lilac Mul-Mul Kurta Set', 'This set includes delicate mirror embroideries and tassels on kurta and dupatta, it comes with cotton slawar.', 7800.00, 'Top- 100% Mul Cotton, Bottom- 100% Cotton, Dupatta- 100% Mul Cotton', 'p8.png'),
('Primrose Pink Woven Kurta Set', 'Multi-colour tiny floral woven jaal on kurta, detailed with thread embroidery, woven dupatta with lace pair it with wide leg bottom.', 6780.00, 'Top- Viscose Chanderi Linen, Bottom- Cotton Satin, Dupatta- Viscose Chanderi', 'p9.png'),
('Mineral Blue Woven Tissue Festive Kurta Set', 'Gota hand embroidery detail with beads on neck,tissue applique work on dupatta along gota trim,paired with tissue bottom.', 5600.00, 'Top- Woven Cotton Stripe Tissue, Bottom- Woven Cotton Plain Tissue, Dupatta- Organza', 'p10.png'),
('Marshmallow and Black Georgette Kurta Set', 'Straight kurta with thread and beads work on neckline, paired with floral printed dupatta and muslin bottom.', 4800.00, 'Top- Georgette, Bottom- Viscose Muslin, Dupatta- Georgette', 'p11.png'),
('Mauvewood Woven Silk Salwar Suit', 'Top- Intricated work detailing with zardosi, zari and beads on kurta with trims on edges, Bottom- Pallazzo style pant with pleat and zari detailing on hemline, Dupatta- Zari Embroidered dupatta with tassels.', 7830.00, 'Top- Woven Bemberg Silk, Bottom- Muslin, Dupatta- Organza Silk', 'p12.png'),
('Night Black and Golden Woven Silk Salwar Suit','Top- Beautiful crafted silk jacquard has metal zip detailing on back, Bottom- Scalloped bottom hemline, Dupatta- Scallop embroidered dupatta with mukaish work.', 5890.00, 'Top- Woven Viscose Silk, Bottom- Viscose Muslin, Dupatta- Organza', 'p13.png'),
('Cream Raw Silk Salwar Suit With Organza Dupatta', 'Cream colored beautiful raw silk kurta with maslin wide-leg pants.', 7500.00, 'Top- Raw Silk, Bottom- Modal Maslin, Dupatta- Organza', 'p14.png'),
('Henna Green Raw Silk Salwar Suit With Organza Dupatta', 'Component: Top, Bottom and Dupatta. Color- Henna Green.', 7360.00, 'Top- Raw Silk, Bottom- Cotton Satin, Dupatta- Organza.', 'p15.png'),
('Blue Raw Silk Salwar Suit With Organza Dupatta', 'Beautiful Blue raw silk suit with pink hand embroidery motifs.', 6599.00, 'Top- Raw Silk, Bottom- Modal Maslin, Dupatta- Organza, With Lining.', 'p16.png'),
('Wine Raw Silk Printed and Hand Detailed Festive Salwar Suit', 'Wine color raw silk suit hand embroided.', 8999.00, 'Top- Raw Silk, Bottom- Cotton Satin, Dupatta- Chinon Silk, With Lining', 'p17.png'),
('Toffee Zari Woven Festive Kurta Set', 'This set includes woven zari kurta with gathers under yoke, with silky print dupatta highlighted with zari detail on it, paired with wide leg flowy bottom.', 7999.00, 'Top- Zari Woven Mul-Mul, Bottom- Cotton, Dupatta- Silky Print', 'p18.png'),
('Black Zari Woven Mul-Chanderi Festive Co-ord Set', 'This set includes zari woven mul-chanderi with wide leg bottom with gota attachment on hem-line.', 4950.00, 'Top- Woven Mul-Chanderi, Bottom- Viscose Muslin.', 'p19.png'),
('Pistachio Woven Mul-Cotton Festive Kurta Set', 'This set includes dual zari woven mul cotton kurta with cotton bottom and orgenza dupatta. kurta has v-neckline and few gathers under yoke, with embroidered dupatta and cotton bottom.', 6700.00, 'Top- Zari Woven Mul Cotton, Bottom- 100% Cotton., Dupatta- Orgenza Silk.', 'p20.png'),
('Granite Green Festive Sharara Kurta Set', 'This set includes zari embroidered georgette kurta with pearl and sequins work, paired with georgette sharara, with embroidered dupatta with zari lace detail on it', 9000.00, 'Top- Georgette, Bottom- Georgette, Dupatta- Orgenza Silk.', 'p21.png'),
('Plum Bemberg Silk Festive Kurta Set', 'This set includes bemberg silk kurta, orgenza silk dupatta and muslin silk bottom. kurta has intricate butti embroidery along with beads on neck yoke, and zari fringes on dupatta border with wide leg bottom.', 6200.00, 'Top- Bemberg Silk., Bottom- Muslin Silk , Dupatta- Orgenza Silk' , 'p22.png'),
('Mehandi Green Silk Festive Kurta Set', 'This set includes taby silk kurta, kora silk dupatta with muslin silk bottom, kurta and dupatta has intricated zari embroidery with gota detail, with wide leg bottom.', 7500.00, ' Top- Taby Silk, Bottom- Muslin Silk, Dupatta- Kora Silk.', 'p23.png'),
('Rumba Red Tissue Silk Angrakha Festive Kurta Set', 'This set includes tissue silk angrakha pattern kurta, with kora silk dupatta and bottom, kurta and dupatta has detailed embroidery and handwork, with scalloped embroidered wide leg bottom.',6950.00, 'Top- Taby Silk, Bottom- Muslin Silk, Dupatta- Kora Silk.', 'p24.png');
 
 USE clothes_db;
SELECT COUNT(*) FROM suits;
SELECT * FROM suits;


CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  role ENUM('customer', 'admin') NOT NULL DEFAULT 'customer',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------
-- ADD A DEFAULT ADMIN USER
-- The password is 'admin123'
-- You MUST update this in a real application!
-- ---------------------------------
INSERT INTO users (email, password_hash, role) VALUES
('admin@jvb.com', '$2a$10$f/A.L./16U1T6s8w8m6vqudISiSihsQp9W.P/LR1hpO3v3b1mknS.', 'admin');



