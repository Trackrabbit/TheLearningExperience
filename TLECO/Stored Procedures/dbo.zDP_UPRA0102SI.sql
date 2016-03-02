SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPRA0102SI] (@EMPLOYID char(15), @ADRSCODE char(15), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @COUNTY char(61), @COUNTRY char(61), @PHONE1 char(21), @PHONE2 char(21), @PHONE3 char(21), @FAX char(21), @Foreign_Address tinyint, @Foreign_StateProvince char(23), @Foreign_Postal_Code char(15), @CCode char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPRA0102 (EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode) VALUES ( @EMPLOYID, @ADRSCODE, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTY, @COUNTRY, @PHONE1, @PHONE2, @PHONE3, @FAX, @Foreign_Address, @Foreign_StateProvince, @Foreign_Postal_Code, @CCode) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPRA0102SI] TO [DYNGRP]
GO
