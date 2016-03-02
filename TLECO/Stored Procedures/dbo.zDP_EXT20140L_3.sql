SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20140L_3] (@Extender_ID_RS char(15), @Extender_Enquiry_ID_RS int, @Extender_Window_ID_RS char(15), @Extender_ID_RE char(15), @Extender_Enquiry_ID_RE int, @Extender_Window_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID, DEX_ROW_ID FROM .EXT20140 ORDER BY Extender_ID DESC, Extender_Enquiry_ID DESC, Extender_Window_ID DESC END ELSE IF @Extender_ID_RS = @Extender_ID_RE BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID, DEX_ROW_ID FROM .EXT20140 WHERE Extender_ID = @Extender_ID_RS AND Extender_Enquiry_ID BETWEEN @Extender_Enquiry_ID_RS AND @Extender_Enquiry_ID_RE AND Extender_Window_ID BETWEEN @Extender_Window_ID_RS AND @Extender_Window_ID_RE ORDER BY Extender_ID DESC, Extender_Enquiry_ID DESC, Extender_Window_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID, DEX_ROW_ID FROM .EXT20140 WHERE Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE AND Extender_Enquiry_ID BETWEEN @Extender_Enquiry_ID_RS AND @Extender_Enquiry_ID_RE AND Extender_Window_ID BETWEEN @Extender_Window_ID_RS AND @Extender_Window_ID_RE ORDER BY Extender_ID DESC, Extender_Enquiry_ID DESC, Extender_Window_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20140L_3] TO [DYNGRP]
GO
