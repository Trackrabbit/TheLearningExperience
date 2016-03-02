SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO50100L_1] (@NextElectronicNumber_RS int, @NextElectronicNumber_RE int) AS  set nocount on IF @NextElectronicNumber_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 ORDER BY NextElectronicNumber DESC END ELSE IF @NextElectronicNumber_RS = @NextElectronicNumber_RE BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE NextElectronicNumber = @NextElectronicNumber_RS ORDER BY NextElectronicNumber DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE NextElectronicNumber BETWEEN @NextElectronicNumber_RS AND @NextElectronicNumber_RE ORDER BY NextElectronicNumber DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO50100L_1] TO [DYNGRP]
GO
