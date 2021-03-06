SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510106N_1] (@BS int, @MJW_Investor_Group_ID char(41), @VENDORID char(15), @MJW_Investor_Group_ID_RS char(41), @VENDORID_RS char(15), @MJW_Investor_Group_ID_RE char(41), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Investor_Group_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Investor_Group_ID, VENDORID, MJW_Default_CB, DEX_ROW_ID FROM .B0510106 WHERE ( MJW_Investor_Group_ID = @MJW_Investor_Group_ID AND VENDORID > @VENDORID OR MJW_Investor_Group_ID > @MJW_Investor_Group_ID ) ORDER BY MJW_Investor_Group_ID ASC, VENDORID ASC END ELSE IF @MJW_Investor_Group_ID_RS = @MJW_Investor_Group_ID_RE BEGIN SELECT TOP 25  MJW_Investor_Group_ID, VENDORID, MJW_Default_CB, DEX_ROW_ID FROM .B0510106 WHERE MJW_Investor_Group_ID = @MJW_Investor_Group_ID_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( MJW_Investor_Group_ID = @MJW_Investor_Group_ID AND VENDORID > @VENDORID OR MJW_Investor_Group_ID > @MJW_Investor_Group_ID ) ORDER BY MJW_Investor_Group_ID ASC, VENDORID ASC END ELSE BEGIN SELECT TOP 25  MJW_Investor_Group_ID, VENDORID, MJW_Default_CB, DEX_ROW_ID FROM .B0510106 WHERE MJW_Investor_Group_ID BETWEEN @MJW_Investor_Group_ID_RS AND @MJW_Investor_Group_ID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( MJW_Investor_Group_ID = @MJW_Investor_Group_ID AND VENDORID > @VENDORID OR MJW_Investor_Group_ID > @MJW_Investor_Group_ID ) ORDER BY MJW_Investor_Group_ID ASC, VENDORID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510106N_1] TO [DYNGRP]
GO
