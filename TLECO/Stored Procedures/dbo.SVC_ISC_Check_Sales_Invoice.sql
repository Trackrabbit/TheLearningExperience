SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_ISC_Check_Sales_Invoice] ( @CUSTNMBR char(15) ) As SELECT DISTINCT SOPNUMBE, CUSTNMBR, DOCDATE,CSTPONBR FROM SVC3200V WHERE (SVC3200V.CUSTNMBR = @CUSTNMBR)  ORDER BY SVC3200V.SOPNUMBE return    
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Check_Sales_Invoice] TO [DYNGRP]
GO
