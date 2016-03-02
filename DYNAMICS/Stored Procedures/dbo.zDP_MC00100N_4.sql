SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC00100N_4] (@BS int, @EXGTBLID char(15), @XCHGRATE numeric(19,7), @EXCHDATE datetime, @DEX_ROW_ID int, @EXGTBLID_RS char(15), @XCHGRATE_RS numeric(19,7), @EXCHDATE_RS datetime, @EXGTBLID_RE char(15), @XCHGRATE_RE numeric(19,7), @EXCHDATE_RE datetime) AS  set nocount on IF @EXGTBLID_RS IS NULL BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE ( EXGTBLID = @EXGTBLID AND XCHGRATE = @XCHGRATE AND EXCHDATE = @EXCHDATE AND DEX_ROW_ID > @DEX_ROW_ID OR EXGTBLID = @EXGTBLID AND XCHGRATE = @XCHGRATE AND EXCHDATE < @EXCHDATE OR EXGTBLID = @EXGTBLID AND XCHGRATE > @XCHGRATE OR EXGTBLID > @EXGTBLID ) ORDER BY EXGTBLID ASC, XCHGRATE ASC, EXCHDATE DESC, DEX_ROW_ID ASC END ELSE IF @EXGTBLID_RS = @EXGTBLID_RE BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE EXGTBLID = @EXGTBLID_RS AND XCHGRATE BETWEEN @XCHGRATE_RS AND @XCHGRATE_RE AND EXCHDATE BETWEEN @EXCHDATE_RE AND @EXCHDATE_RS AND ( EXGTBLID = @EXGTBLID AND XCHGRATE = @XCHGRATE AND EXCHDATE = @EXCHDATE AND DEX_ROW_ID > @DEX_ROW_ID OR EXGTBLID = @EXGTBLID AND XCHGRATE = @XCHGRATE AND EXCHDATE < @EXCHDATE OR EXGTBLID = @EXGTBLID AND XCHGRATE > @XCHGRATE OR EXGTBLID > @EXGTBLID ) ORDER BY EXGTBLID ASC, XCHGRATE ASC, EXCHDATE DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EXGTBLID, CURNCYID, EXCHDATE, TIME1, XCHGRATE, EXPNDATE, DEX_ROW_ID FROM .MC00100 WHERE EXGTBLID BETWEEN @EXGTBLID_RS AND @EXGTBLID_RE AND XCHGRATE BETWEEN @XCHGRATE_RS AND @XCHGRATE_RE AND EXCHDATE BETWEEN @EXCHDATE_RE AND @EXCHDATE_RS AND ( EXGTBLID = @EXGTBLID AND XCHGRATE = @XCHGRATE AND EXCHDATE = @EXCHDATE AND DEX_ROW_ID > @DEX_ROW_ID OR EXGTBLID = @EXGTBLID AND XCHGRATE = @XCHGRATE AND EXCHDATE < @EXCHDATE OR EXGTBLID = @EXGTBLID AND XCHGRATE > @XCHGRATE OR EXGTBLID > @EXGTBLID ) ORDER BY EXGTBLID ASC, XCHGRATE ASC, EXCHDATE DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00100N_4] TO [DYNGRP]
GO
