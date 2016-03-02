SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- SO Line Tax View on SOP10105. Line table will join to tax table on ORD column 
 
CREATE VIEW [dbo].[ReqSOLineTaxView] AS 
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
	SOP10105 left outer join GL00105 on (SOP10105.ACTINDX = GL00105.ACTINDX) 
 
 
GO
GRANT SELECT ON  [dbo].[ReqSOLineTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSOLineTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSOLineTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSOLineTaxView] TO [DYNGRP]
GO
