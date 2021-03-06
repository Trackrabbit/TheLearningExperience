SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO50100N_1] (@BS int, @NextElectronicNumber int, @NextElectronicNumber_RS int, @NextElectronicNumber_RE int) AS  set nocount on IF @NextElectronicNumber_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE ( NextElectronicNumber > @NextElectronicNumber ) ORDER BY NextElectronicNumber ASC END ELSE IF @NextElectronicNumber_RS = @NextElectronicNumber_RE BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE NextElectronicNumber = @NextElectronicNumber_RS AND ( NextElectronicNumber > @NextElectronicNumber ) ORDER BY NextElectronicNumber ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE NextElectronicNumber BETWEEN @NextElectronicNumber_RS AND @NextElectronicNumber_RE AND ( NextElectronicNumber > @NextElectronicNumber ) ORDER BY NextElectronicNumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO50100N_1] TO [DYNGRP]
GO
