SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600800SS_3] (@BSSI_Contact_Class_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Contact_ID, NAME, BSSI_Description, BSSI_Contact_Class_ID, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, EMail, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, DEX_ROW_ID FROM .B4600800 WHERE BSSI_Contact_Class_ID = @BSSI_Contact_Class_ID ORDER BY BSSI_Contact_Class_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600800SS_3] TO [DYNGRP]
GO
