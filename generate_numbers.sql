DECLARE @from int = 1
DECLARE @to int = 100

;
WITH NQ AS (
	SELECT row_number() over (order by (select null)) rnk
	FROM (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) ones(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) tens(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) hundreds(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) thousands(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) hundredThousand(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) million(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) tenMillion(n)
)

--INSERT into dbo.table
SELECT * FROM NQ WHERE RNK between @from and @to;



