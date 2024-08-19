select SuppDate,NoUnits,UnitPrice,TotAmount,[status]
from ExOrders as e join Invoices as i
on e.OrderNo = e.OrderNo
where [status] = 'Closed' and -- your input
SuppDate > '2024-08-01' and SuppDate < '2024-08-20' -- your input
and e.OrderNo = 2003 -- your input
order by SuppDate