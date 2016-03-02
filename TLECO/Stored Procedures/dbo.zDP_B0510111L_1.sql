SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510111L_1] (@MJW_Property_ID_RS char(21), @ADRSCODE_RS char(15), @MJW_Property_ID_RE char(21), @ADRSCODE_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Property_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Property_ID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MJW_Email1, DEX_ROW_ID FROM .B0510111 ORDER BY MJW_Property_ID DESC, ADRSCODE DESC END ELSE IF @MJW_Property_ID_RS = @MJW_Property_ID_RE BEGIN SELECT TOP 25  MJW_Property_ID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MJW_Email1, DEX_ROW_ID FROM .B0510111 WHERE MJW_Property_ID = @MJW_Property_ID_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY MJW_Property_ID DESC, ADRSCODE DESC END ELSE BEGIN SELECT TOP 25  MJW_Property_ID, ADRSCODE, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, MJW_Email1, DEX_ROW_ID FROM .B0510111 WHERE MJW_Property_ID BETWEEN @MJW_Property_ID_RS AND @MJW_Property_ID_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY MJW_Property_ID DESC, ADRSCODE DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510111L_1] TO [DYNGRP]
GO
