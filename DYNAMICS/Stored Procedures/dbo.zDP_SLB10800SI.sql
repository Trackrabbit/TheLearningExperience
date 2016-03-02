SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10800SI] (@SmartList_ID char(15), @LNITMSEQ int, @Table_Number smallint, @Field_Number smallint, @Restrict_Type smallint, @STRGA255 char(255), @DATE1 datetime, @TIME1 datetime, @TOTAL numeric(19,5), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB10800 (SmartList_ID, LNITMSEQ, Table_Number, Field_Number, Restrict_Type, STRGA255, DATE1, TIME1, TOTAL) VALUES ( @SmartList_ID, @LNITMSEQ, @Table_Number, @Field_Number, @Restrict_Type, @STRGA255, @DATE1, @TIME1, @TOTAL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10800SI] TO [DYNGRP]
GO
