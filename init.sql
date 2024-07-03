CREATE TABLE IF NOT EXISTS cars (
    id INT NOT NULL AUTO_INCREMENT,
    model text,
    brand text,
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
    PRIMARY KEY (id)
);

insert into cars (model, brand) values 
    ('Civic', 'Honda'),
    ('Corolla', 'Toyota'),
    ('Fusion', 'Ford'),
    ('Focus', 'Ford'),
    ('Cruze', 'Chevrolet'),
    ('Malibu', 'Chevrolet'),
    ('Accord', 'Honda'),
    ('Camry', 'Toyota'),
    ('Sentra', 'Nissan'),
    ('Altima', 'Nissan');
