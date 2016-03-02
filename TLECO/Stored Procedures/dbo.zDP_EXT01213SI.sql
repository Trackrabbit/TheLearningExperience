SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01213SI] (@Extender_Record_ID int, @Window_Number smallint, @LNITMSEQ int, @Field_ID int, @TOTAL numeric(19,5), @FUNCTAMT numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT01213 (Extender_Record_ID, Window_Number, LNITMSEQ, Field_ID, TOTAL, FUNCTAMT) VALUES ( @Extender_Record_ID, @Window_Number, @LNITMSEQ, @Field_ID, @TOTAL, @FUNCTAMT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01213SI] TO [DYNGRP]
GO
