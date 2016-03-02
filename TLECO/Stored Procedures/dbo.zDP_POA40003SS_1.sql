SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003SS_1] (@PONUMBER char(17)) AS  set nocount on SELECT TOP 1  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE PONUMBER = @PONUMBER ORDER BY PONUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003SS_1] TO [DYNGRP]
GO