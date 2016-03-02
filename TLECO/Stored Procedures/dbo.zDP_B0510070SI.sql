SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510070SI] (@MJW_Offering_ID char(21), @MJWOfferingAddressCode char(15), @BSSI_Offering_Contact char(61), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @COUNTRY char(61), @PHONE1 char(21), @PHONE2 char(21), @PHONE3 char(21), @FAXNUMBR char(21), @MJW_Email1 char(51), @MJW_Email_2 char(51), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510070 (MJW_Offering_ID, MJWOfferingAddressCode, BSSI_Offering_Contact, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, MJW_Email1, MJW_Email_2) VALUES ( @MJW_Offering_ID, @MJWOfferingAddressCode, @BSSI_Offering_Contact, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY, @PHONE1, @PHONE2, @PHONE3, @FAXNUMBR, @MJW_Email1, @MJW_Email_2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510070SI] TO [DYNGRP]
GO
