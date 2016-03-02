SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30400L_1] (@AUCTRLCD_RS char(13), @AUCTRLCD_RE char(13)) AS  set nocount on IF @AUCTRLCD_RS IS NULL BEGIN SELECT TOP 25  AUCTRLCD, POSTEDDT, USWHPSTD, HISTRMVD, BACHNUMB, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APRVLUSERID, APPRVLDT, DEX_ROW_ID FROM .UPR30400 ORDER BY AUCTRLCD DESC, DEX_ROW_ID DESC END ELSE IF @AUCTRLCD_RS = @AUCTRLCD_RE BEGIN SELECT TOP 25  AUCTRLCD, POSTEDDT, USWHPSTD, HISTRMVD, BACHNUMB, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APRVLUSERID, APPRVLDT, DEX_ROW_ID FROM .UPR30400 WHERE AUCTRLCD = @AUCTRLCD_RS ORDER BY AUCTRLCD DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  AUCTRLCD, POSTEDDT, USWHPSTD, HISTRMVD, BACHNUMB, NUMOFTRX, NUMOFEMP, CNTRLTRX, CTRLEMPCT, APPROVL, APRVLUSERID, APPRVLDT, DEX_ROW_ID FROM .UPR30400 WHERE AUCTRLCD BETWEEN @AUCTRLCD_RS AND @AUCTRLCD_RE ORDER BY AUCTRLCD DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30400L_1] TO [DYNGRP]
GO