SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO50100UN_2] (@BS int, @CUSTNMBR char(15), @CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE ( CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE CUSTNMBR = @CUSTNMBR_RS AND ( CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, Address_Verification_Opt, ADRSCODE, CNTCPRSN, ADDRESS1, CITY, STATE, ZIP, COUNTRY, NextElectronicNumber, DEX_ROW_ID FROM .DO50100 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO50100UN_2] TO [DYNGRP]
GO
