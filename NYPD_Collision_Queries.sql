USE collisions;

-- Query 1: Borough, Vehicle Type, and Person Gender
DROP VIEW IF EXISTS borough_vehicle_gender;

CREATE VIEW borough_vehicle_gender AS
SELECT 
    li.Borough,
    v.`Vehicle Type`,
    p.Person_gender
FROM location_info li
JOIN vehicles v ON li.Location_ID = v.Location_ID
JOIN persons p ON v.Vehicle_ID = p.Vehicle_ID
WHERE li.Borough != 'UNKNOWN';

SELECT * FROM borough_vehicle_gender;

-- Query 2: Most Common Streets
DROP VIEW IF EXISTS streets;

CREATE VIEW streets AS
SELECT 
    li.Street_name,
    COUNT(*) AS Occurrences
FROM location_info li
WHERE li.Street_name IS NOT NULL
GROUP BY li.Street_name
ORDER BY Occurrences DESC;

SELECT * FROM streets;

-- Query 3: Gender Count
DROP VIEW IF EXISTS gender;

CREATE VIEW gender AS
SELECT 
    p.Person_gender,
    COUNT(*) AS Occurrences
FROM persons p
GROUP BY p.Person_gender
ORDER BY Occurrences DESC;

SELECT * FROM gender;

-- Query 4: Factor Description Occurrences
DROP VIEW IF EXISTS factor_occurrences;

CREATE VIEW factor_occurrences AS
SELECT 
    cf.`Factor Description`,
    COUNT(*) AS Occurrences
FROM contr_factors cf
WHERE cf.`Factor Description` != 'Unspecified'
GROUP BY cf.`Factor Description`
ORDER BY Occurrences DESC;

SELECT * FROM factor_occurrences;

-- Query 5: All Collision Factors by Vehicle Type
DROP VIEW IF EXISTS collision_view;

CREATE VIEW collision_view AS
SELECT 
    v.`Vehicle Type`,
    cf.`Factor Description`
FROM vehicles v
JOIN crash_vehicles cv ON v.Vehicle_ID = cv.Vehicle_ID
JOIN cause c ON cv.Collision_ID = c.Collision_ID
JOIN contr_factors cf ON c.`Contributing Factor ID` = cf.`Contributing Factor ID`;

-- Query 6: Specified Collision Factors Only
DROP VIEW IF EXISTS specified_factors_view;

CREATE VIEW specified_factors_view AS
SELECT 
    v.`Vehicle Type`,
    cf.`Factor Description`
FROM vehicles v
JOIN crash_vehicles cv ON v.Vehicle_ID = cv.Vehicle_ID
JOIN cause c ON cv.Collision_ID = c.Collision_ID
JOIN contr_factors cf ON c.`Contributing Factor ID` = cf.`Contributing Factor ID`
WHERE cf.`Factor Description` != 'Unspecified'
ORDER BY cf.`Factor Description` DESC;

SELECT * FROM specified_factors_view;

-- Query 7: Borough Occurrences
DROP VIEW IF EXISTS boroughs;

CREATE VIEW boroughs AS
SELECT 
    li.Borough,
    COUNT(*) AS Occurrences
FROM location_info li
WHERE li.Borough != 'UNKNOWN'
GROUP BY li.Borough
ORDER BY Occurrences DESC;

SELECT * FROM boroughs;

-- Query 8: Average Crash Hour by Factor
DROP VIEW IF EXISTS average_factor_hour;

CREATE VIEW average_factor_hour AS
SELECT 
    cf.`Factor Description`,
    ROUND(AVG(ci.`Crash Time`)) AS `Average Hour`
FROM contr_factors cf
JOIN cause c ON cf.`Contributing Factor ID` = c.`Contributing Factor ID`
JOIN collision_info ci ON c.Collision_ID = ci.Collision_ID
WHERE cf.`Factor Description` != 'Unspecified'
GROUP BY cf.`Factor Description`;

SELECT * FROM average_factor_hour;

-- Query 9: Alternative version of Specified Factors View (deduplicated and structured)
DROP VIEW IF EXISTS specified_factors_view_dedup;

CREATE VIEW specified_factors_view_dedup AS
SELECT 
    sq.`Vehicle Type`,
    sq.`Factor Description`
FROM (
    SELECT 
        v.`Vehicle Type`,
        cf.`Factor Description`
    FROM vehicles v
    JOIN crash_vehicles cv ON v.Vehicle_ID = cv.Vehicle_ID
    JOIN cause c ON cv.Collision_ID = c.Collision_ID
    JOIN contr_factors cf ON c.`Contributing Factor ID` = cf.`Contributing Factor ID`
    WHERE cf.`Factor Description` != 'Unspecified'
) AS sq
ORDER BY sq.`Factor Description` DESC;

SELECT * FROM specified_factors_view_dedup;
