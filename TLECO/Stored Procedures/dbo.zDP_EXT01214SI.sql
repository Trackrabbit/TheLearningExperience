SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01214SI] (@Extender_Record_ID int, @Window_Number smallint, @LNITMSEQ int, @Field_ID int, @TIME1 datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT01214 (Extender_Record_ID, Window_Number, LNITMSEQ, Field_ID, TIME1) VALUES ( @Extender_Record_ID, @Window_Number, @LNITMSEQ, @Field_ID, @TIME1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01214SI] TO [DYNGRP]
GO
