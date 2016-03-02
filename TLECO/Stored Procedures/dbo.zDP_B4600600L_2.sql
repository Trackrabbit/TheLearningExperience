SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600600L_2] (@BSSI_Description_RS char(51), @BSSI_Description_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Description, BSSI_Portfolio_Type_ID, ACCTSEG1, BSSI_Contact_ID, BSSI_Aquisition_Date, BSSI_Portfolio_Status, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, BSSI_Consolidate, DEX_ROW_ID FROM .B4600600 ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Description_RS = @BSSI_Description_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Description, BSSI_Portfolio_Type_ID, ACCTSEG1, BSSI_Contact_ID, BSSI_Aquisition_Date, BSSI_Portfolio_Status, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, BSSI_Consolidate, DEX_ROW_ID FROM .B4600600 WHERE BSSI_Description = @BSSI_Description_RS ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Description, BSSI_Portfolio_Type_ID, ACCTSEG1, BSSI_Contact_ID, BSSI_Aquisition_Date, BSSI_Portfolio_Status, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, BSSI_Consolidate, DEX_ROW_ID FROM .B4600600 WHERE BSSI_Description BETWEEN @BSSI_Description_RS AND @BSSI_Description_RE ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600600L_2] TO [DYNGRP]
GO
