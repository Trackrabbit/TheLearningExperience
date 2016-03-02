SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SO Header Misc Tax View on SOP10105 and restricting by Ord = maxint-2 (2,147,483,645) 
-- Freight Taxes ord is set to maxint-1 
-- Misc Taxes ord is set to maxint-2 
 
CREATE VIEW [dbo].[ReqSOHeaderMiscTaxView] AS 
select 
	SOPTYPE, 
	SOPNUMBE, 
	LNITMSEQ, 
	TAXDTLID, 
	GL00105.ACTNUMST, 
	BKOUTTAX, 
	TXABLETX, 
	MSCTXAMT, 
	ORMSCTAX, 
	TAXDTSLS, 
	ORTOTSLS, 
	TDTTXSLS, 
	ORTXSLS, 
	TXDTOTTX, 
	OTTAXPON 
 
from  
	SOP10105 join GL00105 on (SOP10105.ACTINDX = GL00105.ACTINDX) 
where 
	LNITMSEQ = 2147483645 
	 
GO
GRANT SELECT ON  [dbo].[ReqSOHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSOHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSOHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSOHeaderMiscTaxView] TO [DYNGRP]
GO
