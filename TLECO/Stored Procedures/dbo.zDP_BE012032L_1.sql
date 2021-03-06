SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE012032L_1] (@COPAYCODE_I_RS char(15), @COPAYCODE_I_RE char(15)) AS  set nocount on IF @COPAYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COPAYCODE_I, COPAYDESCRIPTION_I, COPAYAMOUNT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .BE012032 ORDER BY COPAYCODE_I DESC END ELSE IF @COPAYCODE_I_RS = @COPAYCODE_I_RE BEGIN SELECT TOP 25  COPAYCODE_I, COPAYDESCRIPTION_I, COPAYAMOUNT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .BE012032 WHERE COPAYCODE_I = @COPAYCODE_I_RS ORDER BY COPAYCODE_I DESC END ELSE BEGIN SELECT TOP 25  COPAYCODE_I, COPAYDESCRIPTION_I, COPAYAMOUNT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .BE012032 WHERE COPAYCODE_I BETWEEN @COPAYCODE_I_RS AND @COPAYCODE_I_RE ORDER BY COPAYCODE_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE012032L_1] TO [DYNGRP]
GO
