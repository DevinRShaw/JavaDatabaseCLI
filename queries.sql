-- Find the total number of parts supplied by each supplier.

SELECT COUNT(*)
FROM Suppliers S, Parts P, Catalog C
WHERE S.sid = C.sid AND P.pid = C.pid 
GROUP BY S.sid;


-- Find the total number of parts supplied by each supplier who supplies at least 3 parts.

SELECT COUNT(*)
FROM Suppliers S, Parts P, Catalog C
WHERE S.sid = C.sid AND P.pid = C.pid 
GROUP BY S.sid, S.sname
HAVING COUNT(*) > 2;


-- For every supplier that supplies only green parts, print the name of the supplier and the total number of parts that he supplies.

SELECT COUNT(*), S.sname
FROM Suppliers S, Parts P, Catalog C
WHERE S.sid = C.sid AND P.pid = C.pid 
GROUP BY S.sid, s.sname 
HAVING NOT EXISTS (
    SELECT 1
    FROM Parts P2, Catalog C2
    WHERE C2.sid = S.sid
    AND C2.pid = P2.pid
    AND P2.color <> 'Green'
);



-- For every supplier that supplies green part and red part, print the name of the supplier and the price of the most expensive part that he supplies

SELECT S.sname, MAX(C.cost)
FROM Suppliers S, Parts P, Catalog C
WHERE S.sid = C.sid AND P.pid = C.pid AND EXISTS (
    SELECT 1
    FROM Parts P2, Catalog C2
    WHERE C2.sid = S.sid
    AND C2.pid = P2.pid
    AND P2.color = 'Green'
)
AND EXISTS (
    SELECT 1
    FROM Parts P3, Catalog C3
    WHERE C3.sid = S.sid
    AND C3.pid = P3.pid
    AND P3.color = 'Red'
)
GROUP BY S.sid, S.sname;
