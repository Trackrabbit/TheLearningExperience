SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50001F_4] (@USERID_RS char(15), @PRCSSQNC_RS smallint, @REPORTID_RS smallint, @ALRDYCAL_RS tinyint, @USERID_RE char(15), @PRCSSQNC_RE smallint, @REPORTID_RE smallint, @ALRDYCAL_RE tinyint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, ALRDYCAL, CNSOLDTD, MULCMPID, PRCSSQNC, DEX_ROW_ID FROM .AF50001 ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, ALRDYCAL ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, ALRDYCAL, CNSOLDTD, MULCMPID, PRCSSQNC, DEX_ROW_ID FROM .AF50001 WHERE USERID = @USERID_RS AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ALRDYCAL BETWEEN @ALRDYCAL_RS AND @ALRDYCAL_RE ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, ALRDYCAL ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, ALRDYCAL, CNSOLDTD, MULCMPID, PRCSSQNC, DEX_ROW_ID FROM .AF50001 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ALRDYCAL BETWEEN @ALRDYCAL_RS AND @ALRDYCAL_RE ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, ALRDYCAL ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50001F_4] TO [DYNGRP]
GO
