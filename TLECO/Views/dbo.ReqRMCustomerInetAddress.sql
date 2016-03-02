SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqRMCustomerInetAddress] AS 
select 
	INET1, 
	INET2, 
	INET3, 
	INET4, 
	INET5, 
	INET6, 
	INET7, 
	INET8, 
	INETINFO, 
	Master_ID,				 
	ADRSCODE, 
	Messenger_Address, 
	EmailToAddress, 
	EmailCcAddress, 
	EmailBccAddress 
from 
	SY01200 
where 
	Master_Type = 'CUS' 
GO
GRANT SELECT ON  [dbo].[ReqRMCustomerInetAddress] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRMCustomerInetAddress] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRMCustomerInetAddress] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRMCustomerInetAddress] TO [DYNGRP]
GO
