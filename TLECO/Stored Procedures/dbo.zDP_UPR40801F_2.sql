SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40801F_2] (@BORCDTYP_RS smallint, @BSDONCDE_RS char(7), @BENEFIT_RS char(7), @BORCDTYP_RE smallint, @BSDONCDE_RE char(7), @BENEFIT_RE char(7)) AS  set nocount on IF @BORCDTYP_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, BORCDTYP, BSDONCDE, DEX_ROW_ID FROM .UPR40801 ORDER BY BORCDTYP ASC, BSDONCDE ASC, BENEFIT ASC END ELSE IF @BORCDTYP_RS = @BORCDTYP_RE BEGIN SELECT TOP 25  BENEFIT, BORCDTYP, BSDONCDE, DEX_ROW_ID FROM .UPR40801 WHERE BORCDTYP = @BORCDTYP_RS AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY BORCDTYP ASC, BSDONCDE ASC, BENEFIT ASC END ELSE BEGIN SELECT TOP 25  BENEFIT, BORCDTYP, BSDONCDE, DEX_ROW_ID FROM .UPR40801 WHERE BORCDTYP BETWEEN @BORCDTYP_RS AND @BORCDTYP_RE AND BSDONCDE BETWEEN @BSDONCDE_RS AND @BSDONCDE_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY BORCDTYP ASC, BSDONCDE ASC, BENEFIT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40801F_2] TO [DYNGRP]
GO