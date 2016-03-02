SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GOTO200SI] (@SmartList_ID char(15), @GoTo_Number smallint, @LNITMSEQ int, @Table_Number smallint, @Field_Number smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .GOTO200 (SmartList_ID, GoTo_Number, LNITMSEQ, Table_Number, Field_Number) VALUES ( @SmartList_ID, @GoTo_Number, @LNITMSEQ, @Table_Number, @Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GOTO200SI] TO [DYNGRP]
GO
