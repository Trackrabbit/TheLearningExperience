SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003SS_4] (@POA_PO_Approval_Status smallint, @STATGRP smallint, @POA_Created_By char(15), @REMSUBTO numeric(19,5)) AS  set nocount on SELECT TOP 1  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_PO_Approval_Status = @POA_PO_Approval_Status AND STATGRP = @STATGRP AND POA_Created_By = @POA_Created_By AND REMSUBTO = @REMSUBTO ORDER BY POA_PO_Approval_Status ASC, STATGRP ASC, POA_Created_By ASC, REMSUBTO ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003SS_4] TO [DYNGRP]
GO