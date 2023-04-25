-- Insert Statements for Games
INSERT INTO Games VALUES 
  ('9:00','123 Springfield Ave, Springfield, NJ',3,'10-MAR-2023','2.5','James Smith','Cougars', 'Jaguars');

INSERT INTO Games VALUES 
  ('10:00','456 West Ave, Houston, TX',2,'12-OCT-2022','2.5','James Johnston','Bees', 'Stingrays');

INSERT INTO Games VALUES 
  ('11:30','892 Main St, Baltimore, MD',1,'14-APR-2023','2.5','Ronald Jones','Marlins', 'Pandas');

-- Insert Statements for Teams
INSERT INTO Teams VALUES 
  ('Marlins', 'Marlin', 15, 'Springfield, NJ', 3);

INSERT INTO Teams VALUES 
  ('Cougars', 'Cougar', 14, 'Baltimore, MD', 2);

INSERT INTO Teams VALUES 
  ('Bees', 'Bee', 17, 'Boston, MA', 1);

-- Insert Statements for Coaches 
INSERT INTO Coaches VALUES 
  ('John Smith', 13, 'John Smith', 'Marlins');

INSERT INTO Coaches VALUES 
  ('Jane Smith', 3, 'Jane Smith', 'Marlins');

INSERT INTO Coaches VALUES 
  ('Joey Park', 5, 'Joey Park', 'Marlins');

INSERT INTO Coaches VALUES 
  ('Sarah Josh', 7, 'Sarah Josh', 'Cougars');

INSERT INTO Coaches VALUES 
  ('Tince Buggli', 8, 'Tince Muggli', 'Cougars');

INSERT INTO Coaches VALUES
  ('Vana White', 9, 'Vana White', 'Bees');

-- Insert Statements for Vendors 
INSERT INTO Vendors VALUES
  ('Pepsi', 3.50, 'soda', 'Providence, RI', '9:00', '123 Springfield Ave, Springfield, NJ', 3);

INSERT INTO Vendors VALUES
  ('Wawa', 6.00, 'sandwich', 'Philadelphia, PA', '10:00', '456 West Ave, Houston, TX', 2);

INSERT INTO Vendors VALUES
  ('Burger King', 4.00, 'Fries', 'New York City, NY', '11:30', '892 Main St, Baltimore, MD', 1);

--Nathaniel Bevins
--Insert Statements for Players
INSERT INTO Players VALUES
  (31, 'Cedric Mullins', 28, 'CF', 'Marlins');
INSERT INTO Players VALUES
  (5, 'Brooks Robinson', 29, '3B', 'Bees');
INSERT INTO Players VALUES
  (3, 'Babe Ruth', 31, 'P', 'Cougars');

--Insert Statements for Team_Plays
INSERT INTO Team_Plays VALUES
  ('Cougars', '9:00', '123 Springfield Ave, Springfield, NJ', 3, '10-MAR-2023' );
INSERT INTO Team_Plays VALUES
  ('Bees', '10:00', '456 West Ave, Houston, TX', 2, '12-OCT-2022');
INSERT INTO Team_Plays VALUES
  ('Marlins', '11:30', '892 Main St, Baltimore, MD', 1, '14-APR-2023');