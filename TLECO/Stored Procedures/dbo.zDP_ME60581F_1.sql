SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME60581F_1] (@VNDCLSID_RS char(11), @VNDCLSID_RE char(11)) AS /* 14.00.0084.000 */ set nocount on IF @VNDCLSID_RS IS NULL BEGIN SELECT TOP 25  VNDCLSID, ME_Signature_ID, DSCRIPTN, MENUMOFAPPROVERS, MEPRINTSIGWHEN, PAYABLESTHRESHOLD, DEX_ROW_ID FROM .ME60581 ORDER BY VNDCLSID ASC END ELSE IF @VNDCLSID_RS = @VNDCLSID_RE BEGIN SELECT TOP 25  VNDCLSID, ME_Signature_ID, DSCRIPTN, MENUMOFAPPROVERS, MEPRINTSIGWHEN, PAYABLESTHRESHOLD, DEX_ROW_ID FROM .ME60581 WHERE VNDCLSID = @VNDCLSID_RS ORDER BY VNDCLSID ASC END ELSE BEGIN SELECT TOP 25  VNDCLSID, ME_Signature_ID, DSCRIPTN, MENUMOFAPPROVERS, MEPRINTSIGWHEN, PAYABLESTHRESHOLD, DEX_ROW_ID FROM .ME60581 WHERE VNDCLSID BETWEEN @VNDCLSID_RS AND @VNDCLSID_RE ORDER BY VNDCLSID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME60581F_1] TO [DYNGRP]
GO