SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602000F_1] (@VENDORID_RS char(15), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, BSSI_Landlord_TypeID, BSSI_Rev_Sharing_Type, DEX_ROW_ID FROM .B4602000 ORDER BY VENDORID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, BSSI_Landlord_TypeID, BSSI_Rev_Sharing_Type, DEX_ROW_ID FROM .B4602000 WHERE VENDORID = @VENDORID_RS ORDER BY VENDORID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, BSSI_Landlord_TypeID, BSSI_Rev_Sharing_Type, DEX_ROW_ID FROM .B4602000 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY VENDORID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602000F_1] TO [DYNGRP]
GO
