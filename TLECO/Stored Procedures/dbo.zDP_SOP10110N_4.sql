SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10110N_4] (@BS int, @STRTDATE datetime, @ENDDATE datetime, @PRCSHID char(15), @DEX_ROW_ID int, @STRTDATE_RS datetime, @ENDDATE_RS datetime, @PRCSHID_RS char(15), @STRTDATE_RE datetime, @ENDDATE_RE datetime, @PRCSHID_RE char(15)) AS  set nocount on IF @STRTDATE_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE ( STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND DEX_ROW_ID > @DEX_ROW_ID OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID > @PRCSHID OR STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR STRTDATE > @STRTDATE ) ORDER BY STRTDATE ASC, ENDDATE ASC, PRCSHID ASC, DEX_ROW_ID ASC END ELSE IF @STRTDATE_RS = @STRTDATE_RE BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE STRTDATE = @STRTDATE_RS AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND ( STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND DEX_ROW_ID > @DEX_ROW_ID OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID > @PRCSHID OR STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR STRTDATE > @STRTDATE ) ORDER BY STRTDATE ASC, ENDDATE ASC, PRCSHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND ( STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID = @PRCSHID AND DEX_ROW_ID > @DEX_ROW_ID OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND PRCSHID > @PRCSHID OR STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR STRTDATE > @STRTDATE ) ORDER BY STRTDATE ASC, ENDDATE ASC, PRCSHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10110N_4] TO [DYNGRP]
GO
