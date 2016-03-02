SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20203SS_3] (@CHEKBKID char(15), @SERIES smallint, @BACHNUMB char(15), @BCHSOURC char(15)) AS  set nocount on SELECT TOP 1  CHEKBKID, BCHSOURC, BACHNUMB, POSTEDDT, NUMOFTRX, BCHTOTAL, USERID, EFTGenerationTimestamp, EFT_Status, SERIES, DEX_ROW_ID FROM .CM20203 WHERE CHEKBKID = @CHEKBKID AND SERIES = @SERIES AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC ORDER BY CHEKBKID ASC, SERIES ASC, BACHNUMB ASC, BCHSOURC ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20203SS_3] TO [DYNGRP]
GO