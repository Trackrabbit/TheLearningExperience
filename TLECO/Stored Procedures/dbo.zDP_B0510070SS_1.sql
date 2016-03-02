SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510070SS_1] (@MJW_Offering_ID char(21), @MJWOfferingAddressCode char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_ID, MJWOfferingAddressCode, BSSI_Offering_Contact, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAXNUMBR, MJW_Email1, MJW_Email_2, DEX_ROW_ID FROM .B0510070 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJWOfferingAddressCode = @MJWOfferingAddressCode ORDER BY MJW_Offering_ID ASC, MJWOfferingAddressCode ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510070SS_1] TO [DYNGRP]
GO
