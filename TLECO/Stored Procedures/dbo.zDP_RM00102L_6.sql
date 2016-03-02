SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00102L_6] (@CUSTNMBR_RS char(15), @SALSTERR_RS char(15), @CUSTNMBR_RE char(15), @SALSTERR_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, SLPRSNID, UPSZONE, SHIPMTHD, TAXSCHID, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MODIFDT, CREATDDT, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CCode, DECLID, LOCNCODE, SALSTERR, USERDEF1, USERDEF2, ShipToName, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .RM00102 ORDER BY CUSTNMBR DESC, SALSTERR DESC, DEX_ROW_ID DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, SLPRSNID, UPSZONE, SHIPMTHD, TAXSCHID, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MODIFDT, CREATDDT, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CCode, DECLID, LOCNCODE, SALSTERR, USERDEF1, USERDEF2, ShipToName, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .RM00102 WHERE CUSTNMBR = @CUSTNMBR_RS AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE ORDER BY CUSTNMBR DESC, SALSTERR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, SLPRSNID, UPSZONE, SHIPMTHD, TAXSCHID, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MODIFDT, CREATDDT, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, CCode, DECLID, LOCNCODE, SALSTERR, USERDEF1, USERDEF2, ShipToName, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .RM00102 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE ORDER BY CUSTNMBR DESC, SALSTERR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00102L_6] TO [DYNGRP]
GO
