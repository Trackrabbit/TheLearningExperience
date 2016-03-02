SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Prospects] AS select rtrim(['Sales Prospect Master'].[PROSPID]) as 'Prospect ID', rtrim(['Sales Prospect Master'].[CUSTNAME]) as 'Customer Name', rtrim(['Sales Prospect Master'].[ADDRESS1]) as 'Address 1', rtrim(['Sales Prospect Master'].[ADDRESS2]) as 'Address 2', rtrim(['Sales Prospect Master'].[CITY]) as 'City', rtrim(['Sales Prospect Master'].[STATE]) as 'State', rtrim(['Sales Prospect Master'].[ZIP]) as 'Zip', rtrim(['Sales Prospect Master'].[PHONE1]) as 'Phone 1',  rtrim(['Sales Prospect Master'].[ADDRESS3]) as 'Address 3', rtrim(['Sales Prospect Master'].[CNTCPRSN]) as 'Contact Person', rtrim(['Sales Prospect Master'].[COUNTRY]) as 'Country', ['Sales Prospect Master'].[CREATDDT] as 'Created Date', rtrim(['Sales Prospect Master'].[CUSTCLAS]) as 'Customer Class', rtrim(['Sales Prospect Master'].[FAX]) as 'Fax', ['Sales Prospect Master'].[MODIFDT] as 'Modified Date', ['Sales Prospect Master'].[NOTEINDX] as 'Note Index', rtrim(['Sales Prospect Master'].[PHONE2]) as 'Phone 2', rtrim(['Sales Prospect Master'].[PHONE3]) as 'Phone 3', rtrim(['Sales Prospect Master'].[PRCLEVEL]) as 'PriceLevel', rtrim(['Sales Prospect Master'].[SHIPMTHD]) as 'Shipping Method', rtrim(['Sales Prospect Master'].[TAXSCHID]) as 'Tax Schedule ID', rtrim(['Sales Prospect Master'].[USERDEF1]) as 'User Defined 1', rtrim(['Sales Prospect Master'].[USERDEF2]) as 'User Defined 2', rtrim(['Sales Prospect Master'].[USER2ENT]) as 'User To Enter'           from [SOP00200] as ['Sales Prospect Master'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[Prospects] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[Prospects] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[Prospects] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[Prospects] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[Prospects] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[Prospects] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[Prospects] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[Prospects] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[Prospects] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[Prospects] TO [rpt_project manager]
GO
GRANT SELECT ON  [dbo].[Prospects] TO [rpt_sales manager]
GO
