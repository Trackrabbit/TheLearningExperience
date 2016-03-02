SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10300SS_1] (@SmartList_ID char(15), @Table_Number smallint, @LNITMSEQ int) AS set nocount on SELECT TOP 1  SmartList_ID, Table_Number, LNITMSEQ, From_Field, To_Field, DEX_ROW_ID FROM .SLB10300 WHERE SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND LNITMSEQ = @LNITMSEQ ORDER BY SmartList_ID ASC, Table_Number ASC, LNITMSEQ ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10300SS_1] TO [DYNGRP]
GO
