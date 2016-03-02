SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600600SS_3] (@BSSI_Portfolio_Type_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Description, BSSI_Portfolio_Type_ID, ACCTSEG1, BSSI_Contact_ID, BSSI_Aquisition_Date, BSSI_Portfolio_Status, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, BSSI_Consolidate, DEX_ROW_ID FROM .B4600600 WHERE BSSI_Portfolio_Type_ID = @BSSI_Portfolio_Type_ID ORDER BY BSSI_Portfolio_Type_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600600SS_3] TO [DYNGRP]
GO