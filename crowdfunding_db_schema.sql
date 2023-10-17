CREATE DATABASE "Crowdfunding_DB"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE contacts
(
    contact_id numeric(10) NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    PRIMARY KEY (contact_id)
);

CREATE TABLE categories
(
    category_id VARCHAR(10) NOT NULL,
    category VARCHAR(50),    
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategories
(
    subcategory_id VARCHAR(10) NOT NULL,
    subcategory VARCHAR(50),    
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign
(
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal NUMERIC,
	pledged NUMERIC,
	outcome VARCHAR(15),
	backers_count INT,
	country VARCHAR(10),
	currency VARCHAR(10),
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Categories(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id),	
    PRIMARY KEY (cf_id)
);

---- Checking each table
SELECT * FROM contacts;
SELECT * FROM categories;
SELECT * FROM subcategories;
SELECT * FROM campaign;
--- They all look great!


