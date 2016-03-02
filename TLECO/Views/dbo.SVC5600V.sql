SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[SVC5600V] AS select a.RTV_Number, a.RTV_Type, a.RTV_Return_Status, a.RTV_Status, a.RETDOCID, a.DSCRIPTN, a.VENDORID, a.VENDNAME, a.ADRSCODE,  a.ENTDTE, a.Shipped_Date, a.receiptdate, a.COMPDTE, a.OFFID, 0 as 'HISTORY',a.DEX_ROW_ID  from dbo.SVC05600 a union select b.RTV_Number, b.RTV_Type, b.RTV_Return_Status, b.RTV_Status, b.RETDOCID, b.DSCRIPTN, b.VENDORID, b.VENDNAME, b.ADRSCODE,  b.ENTDTE, b.Shipped_Date, b.receiptdate, b.COMPDTE, b.OFFID, 1 as 'HISTORY',b.DEX_ROW_ID + 1000000000  from dbo.SVC35600 b     
GO
GRANT SELECT ON  [dbo].[SVC5600V] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC5600V] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC5600V] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC5600V] TO [DYNGRP]
GO
