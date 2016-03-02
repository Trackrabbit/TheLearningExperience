SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500300SS_2] (@CUSTNMBR char(15), @BSSI_Customer_Type smallint, @BSSI_Investor_Type smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  CUSTNMBR, BSSI_Customer_Type, BSSI_Investor_Type, DEX_ROW_ID FROM .B0500300 WHERE CUSTNMBR = @CUSTNMBR AND BSSI_Customer_Type = @BSSI_Customer_Type AND BSSI_Investor_Type = @BSSI_Investor_Type ORDER BY CUSTNMBR ASC, BSSI_Customer_Type ASC, BSSI_Investor_Type ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500300SS_2] TO [DYNGRP]
GO
