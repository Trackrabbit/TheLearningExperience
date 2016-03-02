SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO50100SS_1] (@NextElectronicNumber int) AS  set nocount on SELECT TOP 1  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE NextElectronicNumber = @NextElectronicNumber ORDER BY NextElectronicNumber ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO50100SS_1] TO [DYNGRP]
GO
