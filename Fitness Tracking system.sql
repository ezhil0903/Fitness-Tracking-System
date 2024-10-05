use fitnesstrackingsystem

CREATE TABLE Users (
    user_id INT PRIMARY KEY ,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10)
);

CREATE TABLE Workouts (
    workout_id INT PRIMARY KEY ,
    user_id INT,
    date DATE,
    workout_type VARCHAR(50),
    duration INT,
    calories_burned INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

ALTER TABLE Workouts ADD day varchar(20);
ALTER TABLE Workouts DROP day;

CREATE TABLE Diets (
    Diets_id INT PRIMARY KEY ,
    user_id INT,
    date DATE,
    meal_type VARCHAR(50),
    calories INT,
    carbs FLOAT,
    proteins FLOAT,
    fats FLOAT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
ALTER TABLE Diets DROP Diets_id;

CREATE TABLE Goals (
    goal_id INT PRIMARY KEY ,
    user_id INT,
    goal_type VARCHAR(50),
    target_weight FLOAT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


ALTER TABLE Goals DROP goal_id;



CREATE TABLE Progress (
    progress_id INT PRIMARY KEY ,
    user_id INT,
    date DATE,
    weight FLOAT,
    body_fat_percentage FLOAT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


ALTER TABLE Progress DROP progress_id;

-- Inserting Users
INSERT INTO Users (user_id, username, email, password, date_of_birth, gender) VALUES
(1, 'john', 'john@gmail.com', 'john123', '1990-01-15', 'Male'),
(2, 'jane', 'jane@gmail.com', 'jane456', '1992-05-22', 'Female'),
(3, 'alice', 'alice@gmail.com', 'alice789', '1988-11-30', 'Female'),
(4, 'bob', 'bob@gmail.com', 'bob101', '1995-02-14', 'Male'),
(5, 'charlie', 'charlie@gmail.com', 'charlie102', '1993-07-19', 'Male'),
(6, 'daisy', 'daisy@gmail.com', 'daisy103', '1985-03-28', 'Female'),
(7, 'evegreen', 'eve@gmail.com', 'eve104', '1991-09-04', 'Female'),
(8, 'frank', 'frank@gmail.com', 'frank105', '1989-12-12', 'Male'),
(9, 'grace', 'grace@gmail.com', 'grace106', '1994-10-08', 'Female'),
(10, 'henry', 'henry@gmail.com', 'henry107', '1996-06-23', 'Male');


-- Inserting Workouts
INSERT INTO Workouts (workout_id, user_id, date, workout_type, duration, calories_burned) VALUES
(1, 1, '2024-01-01', 'Running', 30, 300),
(2, 1, '2024-01-03', 'Cycling', 45, 400),
(3, 2, '2024-01-02', 'Yoga', 60, 200),
(4, 3, '2024-01-04', 'Weightlifting', 45, 350),
(5, 4, '2024-01-05', 'Swimming', 30, 250),
(6, 5, '2024-01-06', 'Cardio', 25, 400),
(7, 6, '2024-01-07', 'yoga', 50, 220),
(8, 7, '2024-01-08', 'Running', 40, 350),
(9, 8, '2024-01-09', 'Cycling', 60, 500),
(10, 9, '2024-01-10', 'Boxing', 35, 300);



-- Inserting Diets
INSERT INTO Diets (user_id, date, meal_type, calories, carbs, proteins, fats) VALUES
(1, '2024-01-01', 'Breakfast', 350, 50, 20, 10),
(1, '2024-01-01', 'Lunch', 600, 70, 30, 25),
(1, '2024-01-01', 'Dinner', 500, 60, 40, 15),
(2, '2024-01-01', 'Breakfast', 400, 45, 30, 12),
(2, '2024-01-01', 'Lunch', 500, 60, 25, 15),
(2, '2024-01-01', 'Dinner', 600, 70, 40, 18),
(3, '2024-01-01', 'Breakfast', 300, 50, 10, 5),
(3, '2024-01-01', 'Lunch', 600, 70, 40, 20),
(3, '2024-01-01', 'Dinner', 550, 60, 30, 25),
(4, '2024-01-01', 'Breakfast', 350, 40, 15, 8),
(4, '2024-01-01', 'Lunch', 600, 75, 30, 22),
(4, '2024-01-01', 'Dinner', 500, 60, 40, 15),
(5, '2024-01-01', 'Breakfast', 400, 50, 30, 10),
(5, '2024-01-01', 'Lunch', 450, 55, 25, 15),
(5, '2024-01-01', 'Dinner', 500, 60, 35, 12),
(6, '2024-01-01', 'Breakfast', 300, 60, 20, 5),
(6, '2024-01-01', 'Lunch', 500, 75, 35, 15),
(6, '2024-01-01', 'Dinner', 550, 80, 40, 20),
(7, '2024-01-01', 'Breakfast', 350, 50, 20, 10),
(7, '2024-01-01', 'Lunch', 600, 70, 30, 25),
(7, '2024-01-01', 'Dinner', 500, 60, 40, 15),
(8, '2024-01-01', 'Breakfast', 400, 45, 30, 12),
(8, '2024-01-01', 'Lunch', 500, 60, 25, 15),
(8, '2024-01-01', 'Dinner', 600, 70, 40, 18),
(9, '2024-01-01', 'Breakfast', 300, 50, 10, 5),
(9, '2024-01-01', 'Lunch', 600, 70, 40, 20),
(9, '2024-01-01', 'Dinner', 550, 60, 30, 25),
(10, '2024-01-01', 'Breakfast', 350, 40, 15, 8),
(10, '2024-01-01', 'Lunch', 600, 75, 30, 22),
(10, '2024-01-01', 'Dinner', 500, 60, 40, 15);




-- Inserting Goals
INSERT INTO Goals (user_id, goal_type, target_weight, start_date, end_date) VALUES
(1, 'Weight Loss', 150, '2024-01-01', '2024-04-01'),
(2, 'Muscle Gain', 180, '2024-01-15', '2024-06-15'),
(3, 'Weight Maintenance', 160, '2024-01-10', '2024-07-10'),
(4, 'Weight Loss', 145, '2024-01-05', '2024-03-05'),
(5, 'Muscle Gain', 175, '2024-01-20', '2024-05-20'),
(6, 'Weight Loss', 140, '2024-01-08', '2024-04-08'),
(7, 'Weight Maintenance', 150, '2024-01-12', '2024-08-12'),
(8, 'Muscle Gain', 190, '2024-01-25', '2024-07-25'),
(9, 'Weight Loss', 155, '2024-01-11', '2024-05-11'),
(10, 'Muscle Gain', 170, '2024-01-30', '2024-06-30');

-- Inserting Progress
INSERT INTO Progress (user_id, date, weight, body_fat_percentage) VALUES
(1, '2024-01-01', 80, 17.5),
(2, '2024-02-01', 75, 15.8),
(3, '2024-03-01', 90, 20.5),
(4, '2024-01-15', 67, 11.0),
(5, '2024-02-15', 73, 15.5),
(6, '2024-03-15', 88, 19.0),
(7, '2024-01-10', 95, 20.0),
(8, '2024-02-10', 65, 10.5),
(9, '2024-03-10', 70, 12.0),
(10, '2024-01-05', 68, 14.0);


SELECT 
    u.username,
    u.email,
    w.date AS workout_date,
    w.workout_type,
    w.duration,
    w.calories_burned,
    d.date AS diet_date,
    d.meal_type,
    d.calories AS diet_calories,
    g.goal_type,
    g.target_weight,
    p.date AS progress_date,
    p.weight,
    p.body_fat_percentage
FROM 
    Users u
INNER JOIN 
    Workouts w ON u.user_id = w.user_id
INNER JOIN 
    Diets d ON u.user_id = d.user_id AND w.date = d.date
INNER JOIN 
    Goals g ON u.user_id = g.user_id
INNER JOIN 
    Progress p ON u.user_id = p.user_id
WHERE 
    u.user_id = 1;  
    
    
    
DELIMITER //

CREATE PROCEDURE GetUserFitnessInfo(IN userId INT)
BEGIN
    SELECT 
        u.username,
        u.email,
        w.date AS workout_date,
        w.workout_type,
        w.duration,
        w.calories_burned,
        d.date AS diet_date,
        d.meal_type,
        d.calories AS diet_calories,
        g.goal_type,
        g.target_weight,
        p.date AS progress_date,
        p.weight,
        p.body_fat_percentage
    FROM 
        Users u
    LEFT JOIN 
        Workouts w ON u.user_id = w.user_id
    LEFT JOIN 
        Diets d ON u.user_id = d.user_id AND w.date = d.date
    LEFT JOIN 
        Goals g ON u.user_id = g.user_id
    LEFT JOIN 
        Progress p ON u.user_id = p.user_id
    WHERE 
        u.user_id = userId;
END //

DELIMITER ;


CALL GetUserFitnessInfo(5);




