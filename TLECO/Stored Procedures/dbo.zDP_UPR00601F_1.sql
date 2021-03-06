SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00601F_1] (@EMPLOYID_RS char(15), @BENEFIT_RS char(7), @BORCDTYP_RS smallint, @BSDONCDE_RS char(7), @EMPLOYID_RE char(15), @BENEFIT_RE char(7), @BORCDTYP_RE smallint, @BSDONCDE_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, BENEFIT, BORCDTYP, BSDONCDE, DEX_ROW_ID FROM .UPR00601 ORDER BY EMPLOYID ASC, BENEFIT ASC, BORCDTYP ASC, BSDONCDE ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, BENEFIT, BORCDTYP, BSDONCDE, DEX_ROW_ID FROM .UPR00601 WHERE EMPLOYID = @EMPLOYID_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND BORCDTYP BETWEEN @BORCDTYP_RS AND @BORCDTYP_RE AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE ORDER BY EMPLOYID ASC, BENEFIT ASC, BORCDTYP ASC, BSDONCDE ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, BENEFIT, BORCDTYP, BSDONCDE, DEX_ROW_ID FROM .UPR00601 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND BORCDTYP BETWEEN @BORCDTYP_RS AND @BORCDTYP_RE AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE ORDER BY EMPLOYID ASC, BENEFIT ASC, BORCDTYP ASC, BSDONCDE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00601F_1] TO [DYNGRP]
GO
