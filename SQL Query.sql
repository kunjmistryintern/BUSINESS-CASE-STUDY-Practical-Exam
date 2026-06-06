CREATE DATABASE ChurnAnalysis;
USE ChurnAnalysis;

CREATE TABLE CustomerSubscriptions (
    CustomerID VARCHAR(10),
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(20),
    SubscriptionType VARCHAR(20),
    SubscriptionDate DATE,
    LastLoginDate DATE,
    TotalSessions INT,
    FeedbackScore INT,
    IsChurned INT
);

select * from CustomerSubscriptions;

-- (1)

SELECT
    SubscriptionType,
    SUM(CASE WHEN IsChurned = 0 THEN 1 ELSE 0 END) AS ActiveCustomers,
    SUM(CASE WHEN IsChurned = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers
FROM CustomerSubscriptions
GROUP BY SubscriptionType;

-- (2)

SELECT
    SubscriptionType,
    Gender,
    ROUND(AVG(FeedbackScore),2) AS AverageFeedbackScore
FROM CustomerSubscriptions
GROUP BY SubscriptionType, Gender
ORDER BY SubscriptionType, Gender;

-- (3)

SELECT
    CustomerID,
    Name,
    TotalSessions,
    FeedbackScore
FROM CustomerSubscriptions
WHERE TotalSessions < 5
AND FeedbackScore < 5;

-- (4)

SELECT CustomerID, Name, LastLoginDate, DATEDIFF(CURDATE(), LastLoginDate) AS DaysInactive
FROM CustomerSubscriptions
WHERE DATEDIFF(CURDATE(), LastLoginDate) > 60;

-- (5)

SELECT SubscriptionType, COUNT(*) AS TotalCustomers, SUM(IsChurned) AS ChurnedCustomers,
ROUND((SUM(IsChurned) * 100.0) / COUNT(*), 2) AS ChurnRatePercent
FROM CustomerSubscriptions
GROUP BY SubscriptionType;

-- (6)

SELECT CustomerID, Name, SubscriptionType, SubscriptionDate
FROM CustomerSubscriptions
ORDER BY SubscriptionDate ASC
LIMIT 10;

-- (7)

SELECT CASE
WHEN Age BETWEEN 18 AND 25 THEN '18-25'
WHEN Age BETWEEN 26 AND 35 THEN '26-35'
WHEN Age BETWEEN 36 AND 45 THEN '36-45'
WHEN Age BETWEEN 46 AND 60 THEN '46-60'
ELSE '60+'
END AS AgeGroup,
COUNT(*) AS TotalCustomers, SUM(IsChurned) AS ChurnedCustomers, ROUND((SUM(IsChurned) * 100.0) / COUNT(*), 2) AS ChurnRatePercent
FROM CustomerSubscriptions
GROUP BY AgeGroup
ORDER BY AgeGroup;