SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003F_1] (@PONUMBER_RS char(17), @PONUMBER_RE char(17)) AS  set nocount on IF @PONUMBER_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 ORDER BY PONUMBER ASC END ELSE IF @PONUMBER_RS = @PONUMBER_RE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE PONUMBER = @PONUMBER_RS ORDER BY PONUMBER ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time, DEX_ROW_ID FROM .POA40003 WHERE PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE ORDER BY PONUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003F_1] TO [DYNGRP]
GO
