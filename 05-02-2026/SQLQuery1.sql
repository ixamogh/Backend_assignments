CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number BIGINT NOT NULL
);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    order_number INT NOT NULL UNIQUE,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Suppliers(
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255),
    phone BIGINT,
    country VARCHAR(255)
);

CREATE TABLE Products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
	supplier_id INT,
	FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Order_Items(
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY(order_id, product_id),
    FOREIGN KEY(order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);


CREATE TABLE Department(
    dep_id INT PRIMARY KEY,
    dep_name VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE Employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(255) NOT NULL,
    emp_email VARCHAR(255) UNIQUE,
    dep_id INT NOT NULL,
    salary DECIMAL(10,2),
    manager_id INT NULL,
    FOREIGN KEY(dep_id) REFERENCES Department(dep_id),
    FOREIGN KEY(manager_id) REFERENCES Employees(emp_id)
);

insert into Customers values
(1,'Amogh','amogh@gmail.com',987654321),
(2,'jaideep','jaideep@gmail.com',987654322),
(3,'yuvraj','yuvraj@gmail.com',987654323),
(4,'snehith','snehith@gmail.com',987654324),
(5,'Rishab','rishab@gmail.com',987654325),
(6,'Aryan','aryan@gmail.com',987654326),
(7,'preetham','preetham@gmail.com',987654327),
(8,'varun','varun@gmail.com',987654328),
(9,'sathwik','sathwik@gmail.com',987654329),
(10,'suresh','suresh@gmail.com',987654330);

INSERT INTO Orders 
(order_id, order_number, customer_id, order_date, total_amount)
VALUES
(1,101,1,'2026-01-01',5000),
(2,102,2,'2026-01-02',6000),
(3,103,1,'2026-01-03',4500),
(4,104,1,'2026-01-04',3000),
(5,105,3,'2026-01-05',2500),
(6,106,1,'2026-01-06',7000),
(7,107,4,'2026-01-07',4000),
(8,108,5,'2026-01-08',3500),
(9,109,7,'2026-01-09',2000);


INSERT INTO Department VALUES
(1,'Engineering'),
(2,'Sales'),
(3,'Marketing'),
(4,'Human Resources'),
(5,'Finance');

INSERT INTO Employees VALUES
(101,'Amit','arjun@company.com',3,75000,NULL),    
(102,'Rohit','kiran@company.com',3,56000,101),      
(103,'Neha','meena@company.com',2,69000,NULL),     
(104,'Vikas','ravi@company.com',2,52000,103),        
(105,'Manoj','suresh@company.com',4,61000,NULL),   
(106,'Deepak','pradeep@company.com',4,45000,105),  
(107,'Pooja','ananya@company.com',1,58000,NULL),   
(108,'Kavya','disha@company.com',1,43000,107),     
(109,'Nikhil','tarun@company.com',5,67000,NULL),    
(110,'Sanjay','jai@company.com',5,42000,109);


INSERT INTO Suppliers VALUES
(1,'Prime Systems','contact@primesystems.com',9876543210,'UK'),
(2,'ElectroMart','support@electromart.com',9876501234,'Canada'),
(3,'NextGen Computers','info@nextgencomputers.com',9998887776,'Japan'),
(4,'Hardware Solutions','help@hardwaresolutions.com',9988776655,'France'),
(5,'Smart Digital','service@smartdigital.com',9877001122,'Singapore');


INSERT INTO Products VALUES
(1,'Computer',65000,1),
(2,'Mouse',500,2),
(3,'Keyboard',800,3),
(4,'Monitor',7000,4),
(5,'Headset',1200,2),
(6,'Cable',150,5),
(7,'Camera',2500,3);

INSERT INTO Order_Items VALUES
(1,2,3),   
(1,3,1),   
(2,1,1),   
(3,4,2),   
(4,5,2),   
(5,3,1),   
(6,1,1),   
(7,2,1),   
(8,4,1),  
(9,7,1);  


select *from Customers
select *from Orders
select *from Suppliers
select *from Products
select *from Order_Items
select *from Department
select *from Employees

create table students(
 student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
);

CREATE TABLE Student_Courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


INSERT INTO Students VALUES
(1,'Amogh'),
(2,'Jaideep'),
(3,'Yuvraj');

INSERT INTO Courses VALUES
(10,'SQL'),
(20,'Java'),
(30,'Python');

INSERT INTO Student_Courses VALUES
(1,10),
(1,20),
(2,10),
(3,30);

select  *from Student_Courses
