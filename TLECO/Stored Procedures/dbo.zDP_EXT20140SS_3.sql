SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20140SS_3] (@Extender_ID char(15), @Extender_Enquiry_ID int, @Extender_Window_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID, DEX_ROW_ID FROM .EXT20140 WHERE Extender_ID = @Extender_ID AND Extender_Enquiry_ID = @Extender_Enquiry_ID AND Extender_Window_ID = @Extender_Window_ID ORDER BY Extender_ID ASC, Extender_Enquiry_ID ASC, Extender_Window_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20140SS_3] TO [DYNGRP]
GO