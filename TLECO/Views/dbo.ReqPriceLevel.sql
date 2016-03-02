SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[ReqPriceLevel] AS 
Select	 
	PRCLEVEL, 
	DSCRIPTN, 
	CREATDDT, 
	DEX_ROW_TS, 
	MODIFDT, 
	0 AS IsDeleted 
From 
	IV40800 
 
GO
GRANT SELECT ON  [dbo].[ReqPriceLevel] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPriceLevel] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPriceLevel] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPriceLevel] TO [DYNGRP]
GO
