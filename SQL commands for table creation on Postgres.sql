

-- Customers table
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Customer_Name VARCHAR(255),
    Phone_Number VARCHAR(200),
    Email VARCHAR(255),
    Customer_Type VARCHAR(200)
);

-- Branch table
CREATE TABLE Branch (
    Branch_ID SERIAL PRIMARY KEY,
    Branch_Name VARCHAR(255),
    Branch_Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Zip_Code VARCHAR(10)
);

-- Payment_Method table
CREATE TABLE Payment_Method (
    Payment_Method_ID SERIAL PRIMARY KEY,
    Payment_Type VARCHAR(50)
);

-- Menu_Items table
CREATE TABLE Menu_Items (
    Menu_Item_ID SERIAL PRIMARY KEY,
    Menu_Item_Name VARCHAR(255),
    Category VARCHAR(50),
    Price NUMERIC(10, 2)
);

-- Inventory table
CREATE TABLE Inventory (
    Inventory_ID SERIAL PRIMARY KEY,
    Branch_ID INT REFERENCES Branch(Branch_ID),
    Menu_Item_ID INT REFERENCES Menu_Items(Menu_Item_ID),
    Stock_Level INT
);

-- Orders table
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Order_Date DATE,
    Order_Time TIME,
    Branch_ID INT REFERENCES Branch(Branch_ID),
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Payment_Method_ID INT REFERENCES Payment_Method(Payment_Method_ID),
    Dining_Option VARCHAR(20)
);

-- Order_Items table
CREATE TABLE Order_Items (
    Order_Items_ID SERIAL PRIMARY KEY,
    Order_ID INT REFERENCES Orders(Order_ID),
    Menu_Item_ID INT REFERENCES Menu_Items(Menu_Item_ID),
    Quantity INT,
    Unit_Price NUMERIC(10, 2)
);
