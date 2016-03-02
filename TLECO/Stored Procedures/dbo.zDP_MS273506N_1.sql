SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273506N_1] (@BS int, @MSO_Doc_Number char(21), @MSO_Doc_Number_RS char(21), @MSO_Doc_Number_RE char(21)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_Doc_Number_RS IS NULL BEGIN SELECT TOP 25  MSO_Doc_Number, MSO_Doc_Type, MSO_Batch_Number, MSO_Batch_Source, MSO_Source_Of_Document, DOCAMNT, MSO_BillToGUID, MSO_ShipToGUID, CUSTNMBR, INTERID, DOCDATE, USERID, CURNCYID, DEX_ROW_ID FROM .MS273506 WHERE ( MSO_Doc_Number > @MSO_Doc_Number ) ORDER BY MSO_Doc_Number ASC END ELSE IF @MSO_Doc_Number_RS = @MSO_Doc_Number_RE BEGIN SELECT TOP 25  MSO_Doc_Number, MSO_Doc_Type, MSO_Batch_Number, MSO_Batch_Source, MSO_Source_Of_Document, DOCAMNT, MSO_BillToGUID, MSO_ShipToGUID, CUSTNMBR, INTERID, DOCDATE, USERID, CURNCYID, DEX_ROW_ID FROM .MS273506 WHERE MSO_Doc_Number = @MSO_Doc_Number_RS AND ( MSO_Doc_Number > @MSO_Doc_Number ) ORDER BY MSO_Doc_Number ASC END ELSE BEGIN SELECT TOP 25  MSO_Doc_Number, MSO_Doc_Type, MSO_Batch_Number, MSO_Batch_Source, MSO_Source_Of_Document, DOCAMNT, MSO_BillToGUID, MSO_ShipToGUID, CUSTNMBR, INTERID, DOCDATE, USERID, CURNCYID, DEX_ROW_ID FROM .MS273506 WHERE MSO_Doc_Number BETWEEN @MSO_Doc_Number_RS AND @MSO_Doc_Number_RE AND ( MSO_Doc_Number > @MSO_Doc_Number ) ORDER BY MSO_Doc_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273506N_1] TO [DYNGRP]
GO
