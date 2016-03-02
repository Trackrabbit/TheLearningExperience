SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqIVLineBinDetailView] AS 
select  
	1 "TrxState", -- WORK 
	IVDOCNBR, 
	LNSEQNBR, 
	QUANTITY, 
	BIN, 
	TOBIN, 
	SEQNUMBR, 
	IVDOCTYP 
 
from 
	IV10003 
 
union all 
 
select  
	3 "TrxState", -- HISTORY 
	DOCNUMBR AS IVDOCNBR, 
	LNSEQNBR, 
	QTYSLCTD AS QUANTITY, 
	BIN, 
	TOBIN, 
	SEQNUMBR, 
	DOCTYPE 
from 
	IV30302 
GO
GRANT SELECT ON  [dbo].[ReqIVLineBinDetailView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqIVLineBinDetailView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqIVLineBinDetailView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqIVLineBinDetailView] TO [DYNGRP]
GO
