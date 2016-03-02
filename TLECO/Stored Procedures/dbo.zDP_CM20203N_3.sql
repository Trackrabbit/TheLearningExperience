SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20203N_3] (@BS int, @CHEKBKID char(15), @SERIES smallint, @BACHNUMB char(15), @BCHSOURC char(15), @CHEKBKID_RS char(15), @SERIES_RS smallint, @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @CHEKBKID_RE char(15), @SERIES_RE smallint, @BACHNUMB_RE char(15), @BCHSOURC_RE char(15)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CHEKBKID, BCHSOURC, BACHNUMB, POSTEDDT, NUMOFTRX, BCHTOTAL, USERID, EFTGenerationTimestamp, EFT_Status, SERIES, DEX_ROW_ID FROM .CM20203 WHERE ( CHEKBKID = @CHEKBKID AND SERIES = @SERIES AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR CHEKBKID = @CHEKBKID AND SERIES = @SERIES AND BACHNUMB > @BACHNUMB OR CHEKBKID = @CHEKBKID AND SERIES > @SERIES OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, SERIES ASC, BACHNUMB ASC, BCHSOURC ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CHEKBKID, BCHSOURC, BACHNUMB, POSTEDDT, NUMOFTRX, BCHTOTAL, USERID, EFTGenerationTimestamp, EFT_Status, SERIES, DEX_ROW_ID FROM .CM20203 WHERE CHEKBKID = @CHEKBKID_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( CHEKBKID = @CHEKBKID AND SERIES = @SERIES AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR CHEKBKID = @CHEKBKID AND SERIES = @SERIES AND BACHNUMB > @BACHNUMB OR CHEKBKID = @CHEKBKID AND SERIES > @SERIES OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, SERIES ASC, BACHNUMB ASC, BCHSOURC ASC END ELSE BEGIN SELECT TOP 25  CHEKBKID, BCHSOURC, BACHNUMB, POSTEDDT, NUMOFTRX, BCHTOTAL, USERID, EFTGenerationTimestamp, EFT_Status, SERIES, DEX_ROW_ID FROM .CM20203 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND ( CHEKBKID = @CHEKBKID AND SERIES = @SERIES AND BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR CHEKBKID = @CHEKBKID AND SERIES = @SERIES AND BACHNUMB > @BACHNUMB OR CHEKBKID = @CHEKBKID AND SERIES > @SERIES OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, SERIES ASC, BACHNUMB ASC, BCHSOURC ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20203N_3] TO [DYNGRP]
GO