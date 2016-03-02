SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003L_7] (@POA_Created_By_RS char(15), @POA_PO_Approval_Status_RS smallint, @DOCDATE_RS datetime, @POA_Created_By_RE char(15), @POA_PO_Approval_Status_RE smallint, @DOCDATE_RE datetime) AS  set nocount on IF @POA_Created_By_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 ORDER BY POA_Created_By DESC, POA_PO_Approval_Status DESC, DOCDATE DESC, DEX_ROW_ID DESC END ELSE IF @POA_Created_By_RS = @POA_Created_By_RE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_Created_By = @POA_Created_By_RS AND POA_PO_Approval_Status BETWEEN @POA_PO_Approval_Status_RS AND @POA_PO_Approval_Status_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY POA_Created_By DESC, POA_PO_Approval_Status DESC, DOCDATE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_Created_By BETWEEN @POA_Created_By_RS AND @POA_Created_By_RE AND POA_PO_Approval_Status BETWEEN @POA_PO_Approval_Status_RS AND @POA_PO_Approval_Status_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY POA_Created_By DESC, POA_PO_Approval_Status DESC, DOCDATE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003L_7] TO [DYNGRP]
GO