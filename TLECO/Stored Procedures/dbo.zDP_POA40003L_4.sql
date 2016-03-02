SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003L_4] (@POA_PO_Approval_Status_RS smallint, @STATGRP_RS smallint, @POA_Created_By_RS char(15), @REMSUBTO_RS numeric(19,5), @POA_PO_Approval_Status_RE smallint, @STATGRP_RE smallint, @POA_Created_By_RE char(15), @REMSUBTO_RE numeric(19,5)) AS  set nocount on IF @POA_PO_Approval_Status_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 ORDER BY POA_PO_Approval_Status DESC, STATGRP DESC, POA_Created_By DESC, REMSUBTO DESC, DEX_ROW_ID DESC END ELSE IF @POA_PO_Approval_Status_RS = @POA_PO_Approval_Status_RE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_PO_Approval_Status = @POA_PO_Approval_Status_RS AND STATGRP BETWEEN @STATGRP_RS AND @STATGRP_RE AND POA_Created_By BETWEEN @POA_Created_By_RS AND @POA_Created_By_RE AND REMSUBTO BETWEEN @REMSUBTO_RS AND @REMSUBTO_RE ORDER BY POA_PO_Approval_Status DESC, STATGRP DESC, POA_Created_By DESC, REMSUBTO DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE POA_PO_Approval_Status BETWEEN @POA_PO_Approval_Status_RS AND @POA_PO_Approval_Status_RE AND STATGRP BETWEEN @STATGRP_RS AND @STATGRP_RE AND POA_Created_By BETWEEN @POA_Created_By_RS AND @POA_Created_By_RE AND REMSUBTO BETWEEN @REMSUBTO_RS AND @REMSUBTO_RE ORDER BY POA_PO_Approval_Status DESC, STATGRP DESC, POA_Created_By DESC, REMSUBTO DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003L_4] TO [DYNGRP]
GO
