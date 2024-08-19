select c.CustID,CustName,CustStatus,OrderNo,[status],[desc],Quant,s.Freq
from Subscription as s join Customers as c
on s.CustID = c.CustID
join items as i
on i.Code = s.Code
where c.CustID = 3 -- your input