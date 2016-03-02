SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00500N_1] (@BS int, @BCHSOURC char(15), @BACHNUMB char(15), @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, SERIES, CURNCYID, CURRNIDX, ORIGCNTRLTOT, ORIGBTCHTOT, EXGTBLID, XCHGRATE, RATETPID, RTCLCMTD, TIME1, EXCHDATE, CHEKDATE, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .MC00500 WHERE ( BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, SERIES, CURNCYID, CURRNIDX, ORIGCNTRLTOT, ORIGBTCHTOT, EXGTBLID, XCHGRATE, RATETPID, RTCLCMTD, TIME1, EXCHDATE, CHEKDATE, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .MC00500 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC END ELSE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, SERIES, CURNCYID, CURRNIDX, ORIGCNTRLTOT, ORIGBTCHTOT, EXGTBLID, XCHGRATE, RATETPID, RTCLCMTD, TIME1, EXCHDATE, CHEKDATE, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .MC00500 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00500N_1] TO [DYNGRP]
GO
