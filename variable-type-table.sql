DECLARE @TABLE1 TABLE (
	[ID] INT,
	[Name] VARCHAR(20)
);

DECLARE @TABLE2 TABLE (
	[ID] INT,
	[Name] VARCHAR(20)
);

INSERT INTO @TABLE1 (ID, [Name])
SELECT 1, 'User T1 1'
UNION
SELECT 2, 'User T1 2'
INSERT INTO @TABLE2 (ID, [Name])
VALUES (1, 'User T2 1');

SELECT  T1.*
FROM    @TABLE1 AS T1
        LEFT JOIN @TABLE2 AS T2 ON T1.ID = T2.ID
WHERE	T2.ID IS NULL
