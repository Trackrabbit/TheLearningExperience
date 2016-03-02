SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603100L_2] (@BSSI_Rev_Sharing_Type_RS smallint, @BSSI_Rev_Sharing_ID_RS char(25), @BSSI_Rev_Sharing_Type_RE smallint, @BSSI_Rev_Sharing_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Rev_Sharing_Type_RS IS NULL BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, BSSI_Description, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4603100 ORDER BY BSSI_Rev_Sharing_Type DESC, BSSI_Rev_Sharing_ID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Rev_Sharing_Type_RS = @BSSI_Rev_Sharing_Type_RE BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, BSSI_Description, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4603100 WHERE BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type_RS AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE ORDER BY BSSI_Rev_Sharing_Type DESC, BSSI_Rev_Sharing_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, BSSI_Description, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4603100 WHERE BSSI_Rev_Sharing_Type BETWEEN @BSSI_Rev_Sharing_Type_RS AND @BSSI_Rev_Sharing_Type_RE AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE ORDER BY BSSI_Rev_Sharing_Type DESC, BSSI_Rev_Sharing_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603100L_2] TO [DYNGRP]
GO
