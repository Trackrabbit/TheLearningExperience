SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT43204SI] (@Extender_Type smallint, @Extender_ID char(15), @Window_Number smallint, @LNITMSEQ int, @Note_Type_Description char(65), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT43204 (Extender_Type, Extender_ID, Window_Number, LNITMSEQ, Note_Type_Description) VALUES ( @Extender_Type, @Extender_ID, @Window_Number, @LNITMSEQ, @Note_Type_Description) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT43204SI] TO [DYNGRP]
GO
