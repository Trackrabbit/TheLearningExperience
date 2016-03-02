SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00102N_2] (@BS int, @CUSTNMBR char(15), @CITY char(35), @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @CITY_RS char(35), @CUSTNMBR_RE char(15), @CITY_RE char(35)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, SLPRSNID, UPSZONE, SHIPMTHD, TAXSCHID, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MODIFDT, CREATDDT, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CCode, DECLID, LOCNCODE, SALSTERR, USERDEF1, USERDEF2, ShipToName, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .RM00102 WHERE ( CUSTNMBR = @CUSTNMBR AND CITY = @CITY AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CITY > @CITY OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CITY ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, SLPRSNID, UPSZONE, SHIPMTHD, TAXSCHID, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MODIFDT, CREATDDT, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CCode, DECLID, LOCNCODE, SALSTERR, USERDEF1, USERDEF2, ShipToName, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .RM00102 WHERE CUSTNMBR = @CUSTNMBR_RS AND CITY BETWEEN @CITY_RS AND @CITY_RE AND ( CUSTNMBR = @CUSTNMBR AND CITY = @CITY AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CITY > @CITY OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CITY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, SLPRSNID, UPSZONE, SHIPMTHD, TAXSCHID, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MODIFDT, CREATDDT, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CCode, DECLID, LOCNCODE, SALSTERR, USERDEF1, USERDEF2, ShipToName, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .RM00102 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CITY BETWEEN @CITY_RS AND @CITY_RE AND ( CUSTNMBR = @CUSTNMBR AND CITY = @CITY AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CITY > @CITY OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CITY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00102N_2] TO [DYNGRP]
GO
