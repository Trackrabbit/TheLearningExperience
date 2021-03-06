SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100500N_1] (@BS int, @BSSI_Order_Type_ID char(25), @BSSI_Order_Type_ID_RS char(25), @BSSI_Order_Type_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Order_Type_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Order_Type_ID, BSSI_Description, BSSI_Recog_Acct_Index, NOTEINDX, DEX_ROW_ID FROM .B7100500 WHERE ( BSSI_Order_Type_ID > @BSSI_Order_Type_ID ) ORDER BY BSSI_Order_Type_ID ASC END ELSE IF @BSSI_Order_Type_ID_RS = @BSSI_Order_Type_ID_RE BEGIN SELECT TOP 25  BSSI_Order_Type_ID, BSSI_Description, BSSI_Recog_Acct_Index, NOTEINDX, DEX_ROW_ID FROM .B7100500 WHERE BSSI_Order_Type_ID = @BSSI_Order_Type_ID_RS AND ( BSSI_Order_Type_ID > @BSSI_Order_Type_ID ) ORDER BY BSSI_Order_Type_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Order_Type_ID, BSSI_Description, BSSI_Recog_Acct_Index, NOTEINDX, DEX_ROW_ID FROM .B7100500 WHERE BSSI_Order_Type_ID BETWEEN @BSSI_Order_Type_ID_RS AND @BSSI_Order_Type_ID_RE AND ( BSSI_Order_Type_ID > @BSSI_Order_Type_ID ) ORDER BY BSSI_Order_Type_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100500N_1] TO [DYNGRP]
GO
