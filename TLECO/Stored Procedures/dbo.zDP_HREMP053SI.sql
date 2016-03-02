SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HREMP053SI] (@EMPID_I char(15), @ADDRESS1 char(61), @ADDRESS2 char(61), @CITY char(35), @STATE char(29), @ZIPCODE_I char(11), @COUNTY char(61), @COUNTRY char(61), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HREMP053 (EMPID_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTY, COUNTRY) VALUES ( @EMPID_I, @ADDRESS1, @ADDRESS2, @CITY, @STATE, @ZIPCODE_I, @COUNTY, @COUNTRY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HREMP053SI] TO [DYNGRP]
GO