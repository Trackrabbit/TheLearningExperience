SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HREMP053N_2] (@BS int, @DEX_ROW_ID int, @DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTY, COUNTRY, DEX_ROW_ID FROM .HREMP053 WHERE ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  EMPID_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTY, COUNTRY, DEX_ROW_ID FROM .HREMP053 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS AND ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, COUNTY, COUNTRY, DEX_ROW_ID FROM .HREMP053 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE AND ( DEX_ROW_ID > @DEX_ROW_ID ) ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HREMP053N_2] TO [DYNGRP]
GO
