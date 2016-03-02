SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00980F_1] (@SVC_Misc_Address_Code_RS char(15), @SVC_Misc_Address_Code_RE char(15)) AS  set nocount on IF @SVC_Misc_Address_Code_RS IS NULL BEGIN SELECT TOP 25  SVC_Misc_Address_Code, DSCRIPTN, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, SHIPMTHD, NAME, ADDRESS3, TAXSCHID, DEX_ROW_ID FROM .SVC00980 ORDER BY SVC_Misc_Address_Code ASC END ELSE IF @SVC_Misc_Address_Code_RS = @SVC_Misc_Address_Code_RE BEGIN SELECT TOP 25  SVC_Misc_Address_Code, DSCRIPTN, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, SHIPMTHD, NAME, ADDRESS3, TAXSCHID, DEX_ROW_ID FROM .SVC00980 WHERE SVC_Misc_Address_Code = @SVC_Misc_Address_Code_RS ORDER BY SVC_Misc_Address_Code ASC END ELSE BEGIN SELECT TOP 25  SVC_Misc_Address_Code, DSCRIPTN, ADDRESS1, ADDRESS2, CITY, STATE, ZIP, COUNTRY, SHIPMTHD, NAME, ADDRESS3, TAXSCHID, DEX_ROW_ID FROM .SVC00980 WHERE SVC_Misc_Address_Code BETWEEN @SVC_Misc_Address_Code_RS AND @SVC_Misc_Address_Code_RE ORDER BY SVC_Misc_Address_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00980F_1] TO [DYNGRP]
GO
