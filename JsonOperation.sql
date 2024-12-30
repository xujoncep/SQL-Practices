-- Table for Json data
CREATE TABLE JsonData (
    id INT PRIMARY KEY,
    json_data NVARCHAR(MAX)
);

-- Insert dummy data
INSERT INTO JsonData (id, json_data)
VALUES 
    (1, N'{"name": "John Doe", "age": 30, "city": "New York"}'),
    (2, N'{"name": "Jane Smith", "age": 25, "city": "Los Angeles"}'),
    (3, N'{"name": "Mike Johnson", "age": 35, "city": "Chicago"}'),
    (4, N'{"name": "Emily Davis", "age": 28, "city": "Houston"}'),
    (5, N'{"name": "Chris Brown", "age": 40, "city": "Phoenix"}');

-- Retrive data
SELECT * FROM JsonData;

-- Data Parsing 
-- JSON_VALUE(columName,'$.TargetData') AS ComlumName
SELECT id,
JSON_VALUE(json_data,'$.name') AS Name,
JSON_VALUE(json_data,'$.age') AS Age
FROM JsonData;

-- Return rows contains valid JSON data
SELECT id, json_data
FROM JsonData
WHERE ISJSON(json_data) = 1

-- Retrun 1 for valid json
SELECT ISJSON('true', VALUE)
FROM JsonData
--WHERE ISJSON(json_data) = 1
WHERE ISJSON(id) = 1


--from geekforGeek
CREATE TABLE Authors (

    Id INT IDENTITY NOT NULL PRIMARY KEY,
    Name NVARCHAR(MAX),
    Age int,
    Skill NVARCHAR(MAX),
)


INSERT INTO Authors (Name, Age, Skill)
VALUES('alex', '13', 'Java,Python,GO')

SELECT * FROM Authors FOR JSON AUTO;

