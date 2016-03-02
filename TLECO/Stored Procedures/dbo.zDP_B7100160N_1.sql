SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100160N_1] (@BS int, @MODULE1 smallint, @VNDCLSID char(11), @MODULE1_RS smallint, @VNDCLSID_RS char(11), @MODULE1_RE smallint, @VNDCLSID_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @MODULE1_RS IS NULL BEGIN SELECT TOP 25  MODULE1, VNDCLSID, DEX_ROW_ID FROM .B7100160 WHERE ( MODULE1 = @MODULE1 AND VNDCLSID > @VNDCLSID OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, VNDCLSID ASC END ELSE IF @MODULE1_RS = @MODULE1_RE BEGIN SELECT TOP 25  MODULE1, VNDCLSID, DEX_ROW_ID FROM .B7100160 WHERE MODULE1 = @MODULE1_RS AND VNDCLSID BETWEEN @VNDCLSID_RS AND @VNDCLSID_RE AND ( MODULE1 = @MODULE1 AND VNDCLSID > @VNDCLSID OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, VNDCLSID ASC END ELSE BEGIN SELECT TOP 25  MODULE1, VNDCLSID, DEX_ROW_ID FROM .B7100160 WHERE MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND VNDCLSID BETWEEN @VNDCLSID_RS AND @VNDCLSID_RE AND ( MODULE1 = @MODULE1 AND VNDCLSID > @VNDCLSID OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, VNDCLSID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100160N_1] TO [DYNGRP]
GO