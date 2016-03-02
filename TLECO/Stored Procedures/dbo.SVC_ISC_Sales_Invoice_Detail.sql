SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_ISC_Sales_Invoice_Detail] ( @SOPNUMBE char(15) ) As select SOP30300.SOPTYPE,SOP30300.SOPNUMBE,SOP30300.LNITMSEQ,SOP30300.ITEMNMBR,ITEMDESC,UOFM,case when SOP10201.SERLTNUM is null then SOP30300.QUANTITY else 1 end QUANTITY,SOP30300.SOPNUMBE,isnull(SOP10201.SERLTNUM, '') SERLTNUM FROM SOP30300 LEFT OUTER JOIN   SOP10201 on (SOP10201.SOPTYPE = SOP30300.SOPTYPE) and (SOP10201.SOPNUMBE = SOP30300.SOPNUMBE)and  (SOP10201.LNITMSEQ = SOP30300.LNITMSEQ) and (SOP10201.CMPNTSEQ = SOP30300.CMPNTSEQ)  where (SOP30300.SOPNUMBE = @SOPNUMBE) return     
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Sales_Invoice_Detail] TO [DYNGRP]
GO
