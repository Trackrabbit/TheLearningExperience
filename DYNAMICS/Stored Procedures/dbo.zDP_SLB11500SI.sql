SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11500SI] (@SmartList_ID char(15), @Table_Number smallint, @Field_Number smallint, @LNITMSEQ int, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB11500 (SmartList_ID, Table_Number, Field_Number, LNITMSEQ) VALUES ( @SmartList_ID, @Table_Number, @Field_Number, @LNITMSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11500SI] TO [DYNGRP]
GO
