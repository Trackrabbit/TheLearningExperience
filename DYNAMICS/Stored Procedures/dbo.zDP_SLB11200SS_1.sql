SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11200SS_1] (@SmartList_ID char(15), @LNITMSEQ int) AS set nocount on SELECT TOP 1  SmartList_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID, TXTFIELD FROM .SLB11200 WHERE SmartList_ID = @SmartList_ID AND LNITMSEQ = @LNITMSEQ ORDER BY SmartList_ID ASC, LNITMSEQ ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11200SS_1] TO [DYNGRP]
GO
