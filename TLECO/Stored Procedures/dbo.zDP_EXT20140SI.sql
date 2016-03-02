SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20140SI] (@Extender_Window_ID char(15), @LNITMSEQ int, @Extender_ID char(15), @Extender_Enquiry_ID int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20140 (Extender_Window_ID, LNITMSEQ, Extender_ID, Extender_Enquiry_ID) VALUES ( @Extender_Window_ID, @LNITMSEQ, @Extender_ID, @Extender_Enquiry_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20140SI] TO [DYNGRP]
GO
