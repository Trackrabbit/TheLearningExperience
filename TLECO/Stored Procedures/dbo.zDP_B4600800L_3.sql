SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600800L_3] (@BSSI_Contact_Class_ID_RS char(25), @BSSI_Contact_Class_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Contact_Class_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Contact_ID, NAME, BSSI_Description, BSSI_Contact_Class_ID, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, EMail, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, DEX_ROW_ID FROM .B4600800 ORDER BY BSSI_Contact_Class_ID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Contact_Class_ID_RS = @BSSI_Contact_Class_ID_RE BEGIN SELECT TOP 25  BSSI_Contact_ID, NAME, BSSI_Description, BSSI_Contact_Class_ID, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, EMail, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, DEX_ROW_ID FROM .B4600800 WHERE BSSI_Contact_Class_ID = @BSSI_Contact_Class_ID_RS ORDER BY BSSI_Contact_Class_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Contact_ID, NAME, BSSI_Description, BSSI_Contact_Class_ID, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, EMail, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, DEX_ROW_ID FROM .B4600800 WHERE BSSI_Contact_Class_ID BETWEEN @BSSI_Contact_Class_ID_RS AND @BSSI_Contact_Class_ID_RE ORDER BY BSSI_Contact_Class_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600800L_3] TO [DYNGRP]
GO
