select CrdtDept,e.OrderNo,RecNo,PymtDate,PaidAmt
from ExOrders as e join Receipt as r
on e.OrderNo = r.OrderNo
join Accounting as a
on a.OrderNo = r.OrderNo
where CrdtDept = 'credit' and
PymtDate > '2024-08-01' -- your date

select CrdtDept,e.OrderNo,RecNo,PymtDate,PaidAmt
from ExOrders as e join Receipt as r
on e.OrderNo = r.OrderNo
join Accounting as a
on a.OrderNo = r.OrderNo
where CrdtDept = 'debit' and
PymtDate > '2024-08-01' -- your date

select CrdtDept,sum(paidamt) as sum
from Receipt as r join Accounting as a
on a.OrderNo = r.OrderNo
where PymtDate > '2024-08-01' -- your date
group by CrdtDept 

select   sum(case when CrdtDept = 'credit' then PaidAmt else 0 end) 
    - SUM(case when CrdtDept = 'debit' then PaidAmt else 0 end) as Leftover
from Receipt as r join Accounting as a
on a.OrderNo = r.OrderNo
where PymtDate > '2024-08-01' -- your date