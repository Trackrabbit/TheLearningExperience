SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510111SS_1] (@MJW_Property_ID char(21), @ADRSCODE char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Property_ID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MJW_Email1, DEX_ROW_ID FROM .B0510111 WHERE MJW_Property_ID = @MJW_Property_ID AND ADRSCODE = @ADRSCODE ORDER BY MJW_Property_ID ASC, ADRSCODE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510111SS_1] TO [DYNGRP]
GO
