select e.[Date],suppdate,TotAmount,[Status]
from ExOrders as e join Invoices as i
on e.OrderNo = i.OrderNo
where [Status] = 'Not Shipped' or [status] = 'Not Sent'
order by SuppDate
