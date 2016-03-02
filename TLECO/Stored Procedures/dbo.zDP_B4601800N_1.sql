SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601800N_1] (@BS int, @BSSI_Landlord_TypeID char(25), @BSSI_Landlord_TypeID_RS char(25), @BSSI_Landlord_TypeID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Landlord_TypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Landlord_TypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601800 WHERE ( BSSI_Landlord_TypeID > @BSSI_Landlord_TypeID ) ORDER BY BSSI_Landlord_TypeID ASC END ELSE IF @BSSI_Landlord_TypeID_RS = @BSSI_Landlord_TypeID_RE BEGIN SELECT TOP 25  BSSI_Landlord_TypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601800 WHERE BSSI_Landlord_TypeID = @BSSI_Landlord_TypeID_RS AND ( BSSI_Landlord_TypeID > @BSSI_Landlord_TypeID ) ORDER BY BSSI_Landlord_TypeID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Landlord_TypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601800 WHERE BSSI_Landlord_TypeID BETWEEN @BSSI_Landlord_TypeID_RS AND @BSSI_Landlord_TypeID_RE AND ( BSSI_Landlord_TypeID > @BSSI_Landlord_TypeID ) ORDER BY BSSI_Landlord_TypeID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601800N_1] TO [DYNGRP]
GO
