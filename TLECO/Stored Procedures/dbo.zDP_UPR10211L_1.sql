SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10211L_1] (@PYRNTYPE_RS smallint, @BLDCHDID_RS char(15), @PYRLRTYP_RS smallint, @PAYROLCD_RS char(7), @PYRNTYPE_RE smallint, @BLDCHDID_RE char(15), @PYRLRTYP_RE smallint, @PAYROLCD_RE char(7)) AS  set nocount on IF @PYRNTYPE_RS IS NULL BEGIN SELECT TOP 25  PYRNTYPE, BLDCHDID, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR10211 ORDER BY PYRNTYPE DESC, BLDCHDID DESC, PYRLRTYP DESC, PAYROLCD DESC END ELSE IF @PYRNTYPE_RS = @PYRNTYPE_RE BEGIN SELECT TOP 25  PYRNTYPE, BLDCHDID, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR10211 WHERE PYRNTYPE = @PYRNTYPE_RS AND BLDCHDID BETWEEN @BLDCHDID_RS AND @BLDCHDID_RE AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY PYRNTYPE DESC, BLDCHDID DESC, PYRLRTYP DESC, PAYROLCD DESC END ELSE BEGIN SELECT TOP 25  PYRNTYPE, BLDCHDID, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR10211 WHERE PYRNTYPE BETWEEN @PYRNTYPE_RS AND @PYRNTYPE_RE AND BLDCHDID BETWEEN @BLDCHDID_RS AND @BLDCHDID_RE AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY PYRNTYPE DESC, BLDCHDID DESC, PYRLRTYP DESC, PAYROLCD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10211L_1] TO [DYNGRP]
GO