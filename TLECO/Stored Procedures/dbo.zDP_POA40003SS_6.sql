SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003SS_6] (@POA_Created_By char(15), @POA_PO_Approval_Status smallint, @VENDORID char(15)) AS  set nocount on SELECT TOP 1  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_Created_By = @POA_Created_By AND POA_PO_Approval_Status = @POA_PO_Approval_Status AND VENDORID = @VENDORID ORDER BY POA_Created_By ASC, POA_PO_Approval_Status ASC, VENDORID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003SS_6] TO [DYNGRP]
GO
