SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10300SI] (@SmartList_ID char(15), @Table_Number smallint, @LNITMSEQ int, @From_Field char(81), @To_Field char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB10300 (SmartList_ID, Table_Number, LNITMSEQ, From_Field, To_Field) VALUES ( @SmartList_ID, @Table_Number, @LNITMSEQ, @From_Field, @To_Field) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10300SI] TO [DYNGRP]
GO
