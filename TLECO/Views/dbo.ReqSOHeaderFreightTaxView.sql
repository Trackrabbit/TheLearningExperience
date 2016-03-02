SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SO Header Freight Tax View SOP10105 and restricting by Ord = maxint-1 (2,147,483,646) 
-- Freight Taxes ord is set to maxint-1 
-- Misc Taxes ord is set to maxint-2 
 
CREATE VIEW [dbo].[ReqSOHeaderFreightTaxView] AS 
 
select 
	SOPTYPE, 
	SOPNUMBE, 
	LNITMSEQ, 
	TAXDTLID, 
	GL00105.ACTNUMST, 
	BKOUTTAX, 
	TXABLETX, 
	FRTTXAMT, 
	ORFRTTAX, 
	TAXDTSLS, 
	ORTOTSLS, 
	TDTTXSLS, 
	ORTXSLS, 
	TXDTOTTX, 
	OTTAXPON 
from  
	SOP10105 join GL00105 on (SOP10105.ACTINDX = GL00105.ACTINDX) 
where 
	LNITMSEQ = 2147483646 
 
 
GO
GRANT SELECT ON  [dbo].[ReqSOHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSOHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSOHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSOHeaderFreightTaxView] TO [DYNGRP]
GO
