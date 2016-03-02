SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003F_6] (@POA_Created_By_RS char(15), @POA_PO_Approval_Status_RS smallint, @VENDORID_RS char(15), @POA_Created_By_RE char(15), @POA_PO_Approval_Status_RE smallint, @VENDORID_RE char(15)) AS  set nocount on IF @POA_Created_By_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 ORDER BY POA_Created_By ASC, POA_PO_Approval_Status ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @POA_Created_By_RS = @POA_Created_By_RE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_Created_By = @POA_Created_By_RS AND POA_PO_Approval_Status BETWEEN @POA_PO_Approval_Status_RS AND @POA_PO_Approval_Status_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY POA_Created_By ASC, POA_PO_Approval_Status ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_Created_By BETWEEN @POA_Created_By_RS AND @POA_Created_By_RE AND POA_PO_Approval_Status BETWEEN @POA_PO_Approval_Status_RS AND @POA_PO_Approval_Status_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY POA_Created_By ASC, POA_PO_Approval_Status ASC, VENDORID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003F_6] TO [DYNGRP]
GO
