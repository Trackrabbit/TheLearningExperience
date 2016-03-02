SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273506SS_1] (@MSO_Doc_Number char(21)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Doc_Number, MSO_Doc_Type, MSO_Batch_Number, MSO_Batch_Source, MSO_Source_Of_Document, DOCAMNT, MSO_BillToGUID, MSO_ShipToGUID, CUSTNMBR, INTERID, DOCDATE, USERID, CURNCYID, DEX_ROW_ID FROM .MS273506 WHERE MSO_Doc_Number = @MSO_Doc_Number ORDER BY MSO_Doc_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273506SS_1] TO [DYNGRP]
GO
