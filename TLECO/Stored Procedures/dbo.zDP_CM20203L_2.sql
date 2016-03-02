SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20203L_2] (@CHEKBKID_RS char(15), @SERIES_RS smallint, @EFT_Status_RS smallint, @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @CHEKBKID_RE char(15), @SERIES_RE smallint, @EFT_Status_RE smallint, @BCHSOURC_RE char(15), @BACHNUMB_RE char(15)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  CHEKBKID, BCHSOURC, BACHNUMB, POSTEDDT, NUMOFTRX, BCHTOTAL, USERID, EFTGenerationTimestamp, EFT_Status, SERIES, DEX_ROW_ID FROM .CM20203 ORDER BY CHEKBKID DESC, SERIES DESC, EFT_Status DESC, BCHSOURC DESC, BACHNUMB DESC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  CHEKBKID, BCHSOURC, BACHNUMB, POSTEDDT, NUMOFTRX, BCHTOTAL, USERID, EFTGenerationTimestamp, EFT_Status, SERIES, DEX_ROW_ID FROM .CM20203 WHERE CHEKBKID = @CHEKBKID_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND EFT_Status BETWEEN @EFT_Status_RS AND @EFT_Status_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY CHEKBKID DESC, SERIES DESC, EFT_Status DESC, BCHSOURC DESC, BACHNUMB DESC END ELSE BEGIN SELECT TOP 25  CHEKBKID, BCHSOURC, BACHNUMB, POSTEDDT, NUMOFTRX, BCHTOTAL, USERID, EFTGenerationTimestamp, EFT_Status, SERIES, DEX_ROW_ID FROM .CM20203 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND EFT_Status BETWEEN @EFT_Status_RS AND @EFT_Status_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY CHEKBKID DESC, SERIES DESC, EFT_Status DESC, BCHSOURC DESC, BACHNUMB DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20203L_2] TO [DYNGRP]
GO
