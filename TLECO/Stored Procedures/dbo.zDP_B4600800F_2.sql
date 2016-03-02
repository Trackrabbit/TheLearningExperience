SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600800F_2] (@NAME_RS char(31), @NAME_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @NAME_RS IS NULL BEGIN SELECT TOP 25  BSSI_Contact_ID, NAME, BSSI_Description, BSSI_Contact_Class_ID, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, EMail, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, DEX_ROW_ID FROM .B4600800 ORDER BY NAME ASC, DEX_ROW_ID ASC END ELSE IF @NAME_RS = @NAME_RE BEGIN SELECT TOP 25  BSSI_Contact_ID, NAME, BSSI_Description, BSSI_Contact_Class_ID, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, EMail, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, DEX_ROW_ID FROM .B4600800 WHERE NAME = @NAME_RS ORDER BY NAME ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Contact_ID, NAME, BSSI_Description, BSSI_Contact_Class_ID, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIP, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, EMail, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, DEX_ROW_ID FROM .B4600800 WHERE NAME BETWEEN @NAME_RS AND @NAME_RE ORDER BY NAME ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600800F_2] TO [DYNGRP]
GO
