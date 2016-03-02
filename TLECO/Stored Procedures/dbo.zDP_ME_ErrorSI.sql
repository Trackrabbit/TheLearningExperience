SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME_ErrorSI] (@SEQNUMBR int, @ME_Error_Msg char(133), @ME_Dummy_File_Conversion tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .ME_Error (SEQNUMBR, ME_Error_Msg, ME_Dummy_File_Conversion) VALUES ( @SEQNUMBR, @ME_Error_Msg, @ME_Dummy_File_Conversion) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME_ErrorSI] TO [DYNGRP]
GO
