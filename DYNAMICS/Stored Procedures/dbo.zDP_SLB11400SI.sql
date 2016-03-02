SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11400SI] (@SmartList_ID char(15), @GoTo_Number smallint, @LNITMSEQ int, @Table_Number smallint, @Field_Number smallint, @SmartList_Display_Name char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB11400 (SmartList_ID, GoTo_Number, LNITMSEQ, Table_Number, Field_Number, SmartList_Display_Name) VALUES ( @SmartList_ID, @GoTo_Number, @LNITMSEQ, @Table_Number, @Field_Number, @SmartList_Display_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11400SI] TO [DYNGRP]
GO
