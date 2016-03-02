SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC00100N_3] (@BS int, @CURNCYID char(15), @EXCHDATE datetime, @DEX_ROW_ID int, @CURNCYID_RS char(15), @EXCHDATE_RS datetime, @CURNCYID_RE char(15), @EXCHDATE_RE datetime) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE ( CURNCYID = @CURNCYID AND EXCHDATE = @EXCHDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CURNCYID = @CURNCYID AND EXCHDATE < @EXCHDATE OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, EXCHDATE DESC, DEX_ROW_ID ASC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE CURNCYID = @CURNCYID_RS AND EXCHDATE BETWEEN @EXCHDATE_RE AND @EXCHDATE_RS AND ( CURNCYID = @CURNCYID AND EXCHDATE = @EXCHDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CURNCYID = @CURNCYID AND EXCHDATE < @EXCHDATE OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, EXCHDATE DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND EXCHDATE BETWEEN @EXCHDATE_RE AND @EXCHDATE_RS AND ( CURNCYID = @CURNCYID AND EXCHDATE = @EXCHDATE AND DEX_ROW_ID > @DEX_ROW_ID OR CURNCYID = @CURNCYID AND EXCHDATE < @EXCHDATE OR CURNCYID > @CURNCYID ) ORDER BY CURNCYID ASC, EXCHDATE DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00100N_3] TO [DYNGRP]
GO
