SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10301F_2] (@UPRBCHMK_RS tinyint, @MKDBYUSR_RS char(15), @BACHNUMB_RS char(15), @UPRBCHOR_RS smallint, @UPRBCHMK_RE tinyint, @MKDBYUSR_RE char(15), @BACHNUMB_RE char(15), @UPRBCHOR_RE smallint) AS  set nocount on IF @UPRBCHMK_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, UPRBCHOR, BCHCOMNT, UPRBCHFR, POSTEDDT, UPRBCHMK, MKDBYUSR, MSCBDINC, RECPSTGS, RCLPSTDT, NOFPSTGS, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, NOTEINDX, DEX_ROW_ID FROM .UPR10301 ORDER BY UPRBCHMK ASC, MKDBYUSR ASC, BACHNUMB ASC, UPRBCHOR ASC END ELSE IF @UPRBCHMK_RS = @UPRBCHMK_RE BEGIN SELECT TOP 25  BACHNUMB, UPRBCHOR, BCHCOMNT, UPRBCHFR, POSTEDDT, UPRBCHMK, MKDBYUSR, MSCBDINC, RECPSTGS, RCLPSTDT, NOFPSTGS, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, NOTEINDX, DEX_ROW_ID FROM .UPR10301 WHERE UPRBCHMK = @UPRBCHMK_RS AND MKDBYUSR BETWEEN @MKDBYUSR_RS AND @MKDBYUSR_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND UPRBCHOR BETWEEN @UPRBCHOR_RS AND @UPRBCHOR_RE ORDER BY UPRBCHMK ASC, MKDBYUSR ASC, BACHNUMB ASC, UPRBCHOR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, UPRBCHOR, BCHCOMNT, UPRBCHFR, POSTEDDT, UPRBCHMK, MKDBYUSR, MSCBDINC, RECPSTGS, RCLPSTDT, NOFPSTGS, CNTRLTRX, CTRLEMPCT, APPROVL, APPRVLDT, APRVLUSERID, NOTEINDX, DEX_ROW_ID FROM .UPR10301 WHERE UPRBCHMK BETWEEN @UPRBCHMK_RS AND @UPRBCHMK_RE AND MKDBYUSR BETWEEN @MKDBYUSR_RS AND @MKDBYUSR_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND UPRBCHOR BETWEEN @UPRBCHOR_RS AND @UPRBCHOR_RE ORDER BY UPRBCHMK ASC, MKDBYUSR ASC, BACHNUMB ASC, UPRBCHOR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10301F_2] TO [DYNGRP]
GO
