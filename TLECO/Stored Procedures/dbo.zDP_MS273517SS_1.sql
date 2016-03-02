SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273517SS_1] (@MSO_Doc_Number char(21), @MSO_Doc_Type smallint, @SEQNUMBR int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Doc_Number, MSO_Doc_Type, BACHNUMB, SEQNUMBR, DEX_ROW_ID FROM .MS273517 WHERE MSO_Doc_Number = @MSO_Doc_Number AND MSO_Doc_Type = @MSO_Doc_Type AND SEQNUMBR = @SEQNUMBR ORDER BY MSO_Doc_Number ASC, MSO_Doc_Type ASC, SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273517SS_1] TO [DYNGRP]
GO
