SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqRMCustomerEmailRecipients] AS 
select 
	Email_Recipient, 
	Email_Type, 
	CUSTNMBR 
from 
	RM00106 
GO
GRANT SELECT ON  [dbo].[ReqRMCustomerEmailRecipients] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRMCustomerEmailRecipients] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRMCustomerEmailRecipients] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRMCustomerEmailRecipients] TO [DYNGRP]
GO
