SELECT * FROM Parts WHERE color = 'Green';

SELECT S.sid, S.sname, P.pid, P.pname, P.color
FROM Suppliers S
JOIN Catalog C ON S.sid = C.sid
JOIN Parts P ON P.pid = C.pid
WHERE P.color = 'Green';


SELECT S.sid, S.sname, P.pid, P.pname, P.color, C.cost
FROM Suppliers S
JOIN Catalog C ON S.sid = C.sid
JOIN Parts P ON P.pid = C.pid;


SELECT sid, COUNT(*) as green_part_count
FROM Suppliers S
JOIN Catalog C ON S.sid = C.sid
JOIN Parts P ON P.pid = C.pid
WHERE P.color = 'Green'
GROUP BY sid;