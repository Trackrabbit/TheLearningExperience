SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510080SS_1] (@MJW_Offering_ID char(21), @MJW_Series_ID char(21), @MJW_Series_Address_Code char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_ID, MJW_Series_ID, MJW_Series_Address_Code, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, FAXNUMBR, DEX_ROW_ID FROM .B0510080 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Series_ID = @MJW_Series_ID AND MJW_Series_Address_Code = @MJW_Series_Address_Code ORDER BY MJW_Offering_ID ASC, MJW_Series_ID ASC, MJW_Series_Address_Code ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510080SS_1] TO [DYNGRP]
GO
