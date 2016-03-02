SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273530SS_1] (@MSO_Doc_Number char(21), @MSO_Doc_Type smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Doc_Number, MSO_Doc_Type, MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, MSO_COMMENT4, MSO_COMMENT5, DEX_ROW_ID FROM .MS273530 WHERE MSO_Doc_Number = @MSO_Doc_Number AND MSO_Doc_Type = @MSO_Doc_Type ORDER BY MSO_Doc_Number ASC, MSO_Doc_Type ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273530SS_1] TO [DYNGRP]
GO