CREATE DATABASE IF NOT EXISTS wedding;
USE wedding;

CREATE TABLE IF NOT EXISTS vendors (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    vendor_type VARCHAR(32) NOT NULL,
    business_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    contact_phone VARCHAR(64) NOT NULL,
    description TEXT NOT NULL,
    daily_rate DECIMAL(12, 2) NOT NULL,
    extra1 VARCHAR(255) NOT NULL,
    extra2 VARCHAR(64) NOT NULL
);
INSERT INTO vendors (id, vendor_type, business_name, contact_email, contact_phone, description, daily_rate, extra1, extra2) VALUES
(1, 'PHOTOGRAPHER', 'Lumière Studios', 'hello@lumiereweddings.com', '555-0201', 'Editorial and candid wedding photography with same-day previews.', 1800.00, 'Editorial natural light', '10'),
(2, 'CATERING', 'Tuscany Table Catering', 'events@tuscanytable.com', '555-0202', 'Family-style Italian feasts with seasonal antipasti and plated mains.', 4200.00, 'Italian', 'true'),
(3, 'DECORATION', 'Bloom & Lattice', 'studio@bloomlattice.com', '555-0203', 'Modern arches, candlescapes, and statement floral moments.', 2200.00, 'Modern minimalist', 'true'),
(4, 'PHOTOGRAPHER', 'Silver Frame Collective', 'booking@silverframe.co', '555-0204', 'Documentary storytelling with gentle direction for portraits.', 2100.00, 'Photojournalism', '8');