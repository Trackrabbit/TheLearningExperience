SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600600SI] (@BSSI_PortfolioID char(25), @BSSI_Description char(51), @BSSI_Portfolio_Type_ID char(25), @ACCTSEG1 char(9), @BSSI_Contact_ID char(25), @BSSI_Aquisition_Date datetime, @BSSI_Portfolio_Status smallint, @NOTEINDX numeric(19,5), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @BSSI_Consolidate tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600600 (BSSI_PortfolioID, BSSI_Description, BSSI_Portfolio_Type_ID, ACCTSEG1, BSSI_Contact_ID, BSSI_Aquisition_Date, BSSI_Portfolio_Status, NOTEINDX, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, BSSI_Consolidate) VALUES ( @BSSI_PortfolioID, @BSSI_Description, @BSSI_Portfolio_Type_ID, @ACCTSEG1, @BSSI_Contact_ID, @BSSI_Aquisition_Date, @BSSI_Portfolio_Status, @NOTEINDX, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @BSSI_Consolidate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600600SI] TO [DYNGRP]
GO
