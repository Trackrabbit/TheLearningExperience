SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123502L_2] (@CHEKBKID_RS char(15), @CHEKBKID_RE char(15)) AS  set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  PP_Number, CHEKBKID, DEX_ROW_ID FROM .ME123502 ORDER BY CHEKBKID DESC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  PP_Number, CHEKBKID, DEX_ROW_ID FROM .ME123502 WHERE CHEKBKID = @CHEKBKID_RS ORDER BY CHEKBKID DESC END ELSE BEGIN SELECT TOP 25  PP_Number, CHEKBKID, DEX_ROW_ID FROM .ME123502 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE ORDER BY CHEKBKID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123502L_2] TO [DYNGRP]
GO
