SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20110F_2] (@Extender_Window_ID_RS char(15), @PRODID_RS smallint, @TABLTECH_RS char(79), @Extender_Window_ID_RE char(15), @PRODID_RE smallint, @TABLTECH_RE char(79)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Window_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, PRODID, TABLTECH, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, DEX_ROW_ID FROM .EXT20110 ORDER BY Extender_Window_ID ASC, PRODID ASC, TABLTECH ASC END ELSE IF @Extender_Window_ID_RS = @Extender_Window_ID_RE BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, PRODID, TABLTECH, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, DEX_ROW_ID FROM .EXT20110 WHERE Extender_Window_ID = @Extender_Window_ID_RS AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE ORDER BY Extender_Window_ID ASC, PRODID ASC, TABLTECH ASC END ELSE BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, PRODID, TABLTECH, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, DEX_ROW_ID FROM .EXT20110 WHERE Extender_Window_ID BETWEEN @Extender_Window_ID_RS AND @Extender_Window_ID_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE ORDER BY Extender_Window_ID ASC, PRODID ASC, TABLTECH ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20110F_2] TO [DYNGRP]
GO
