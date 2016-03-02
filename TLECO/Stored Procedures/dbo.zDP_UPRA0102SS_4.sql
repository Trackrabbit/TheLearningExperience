SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPRA0102SS_4] (@EMPLOYID char(15), @ZIPCODE char(11)) AS  set nocount on SELECT TOP 1  EMPLOYID, ADRSCODE, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTY, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, DEX_ROW_ID FROM .UPRA0102 WHERE EMPLOYID = @EMPLOYID AND ZIPCODE = @ZIPCODE ORDER BY EMPLOYID ASC, ZIPCODE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPRA0102SS_4] TO [DYNGRP]
GO
