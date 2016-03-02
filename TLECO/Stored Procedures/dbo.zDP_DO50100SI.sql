SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO50100SI] (@CUSTNMBR char(15), @Address_Verification_Opt smallint, @ADRSCODE char(15), @CNTCPRSN char(61), @ADDRESS1 char(61), @CITY char(35), @STATE char(29), @ZIP char(11), @COUNTRY char(61), @NextElectronicNumber int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DO50100 (CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber) VALUES ( @CUSTNMBR, @Address_Verification_Opt, @ADRSCODE, @CNTCPRSN, @ADDRESS1, @CITY, @STATE, @ZIP, @COUNTRY, @NextElectronicNumber) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO50100SI] TO [DYNGRP]
GO
