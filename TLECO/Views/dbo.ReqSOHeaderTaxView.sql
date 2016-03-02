SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SO Header Tax View on SOP10105 restricting by Ord = 0 (header taxes only) 
 
CREATE VIEW [dbo].[ReqSOHeaderTaxView] AS 
select  
	SOPTYPE,  
	SOPNUMBE, 
	LNITMSEQ, 
	TAXDTLID, 
	GL00105.ACTNUMST, 
	BKOUTTAX, 
	TXABLETX, 
	STAXAMNT, 
	ORSLSTAX, 
	TAXDTSLS, 
	ORTOTSLS, 
	TDTTXSLS, 
	ORTXSLS, 
	TXDTOTTX, 
	OTTAXPON  
from 
	SOP10105 join GL00105 on (SOP10105.ACTINDX = GL00105.ACTINDX) 
where 
	LNITMSEQ = 0 
 
 
GO
GRANT SELECT ON  [dbo].[ReqSOHeaderTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSOHeaderTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSOHeaderTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSOHeaderTaxView] TO [DYNGRP]
GO
