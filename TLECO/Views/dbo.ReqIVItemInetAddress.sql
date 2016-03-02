SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqIVItemInetAddress] AS 
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
	Messenger_Address, 
	EmailToAddress, 
	EmailCcAddress, 
	EmailBccAddress 
from 
	SY01200 
where 
	Master_Type = 'ITM' 
GO
GRANT SELECT ON  [dbo].[ReqIVItemInetAddress] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqIVItemInetAddress] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqIVItemInetAddress] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqIVItemInetAddress] TO [DYNGRP]
GO
