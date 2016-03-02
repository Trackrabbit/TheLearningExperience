SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273506SI] (@MSO_Doc_Number char(21), @MSO_Doc_Type smallint, @MSO_Batch_Number char(21), @MSO_Batch_Source char(21), @MSO_Source_Of_Document smallint, @DOCAMNT numeric(19,5), @MSO_BillToGUID char(51), @MSO_ShipToGUID char(51), @CUSTNMBR char(15), @INTERID char(5), @DOCDATE datetime, @USERID char(15), @CURNCYID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273506 (MSO_Doc_Number, MSO_Doc_Type, MSO_Batch_Number, MSO_Batch_Source, MSO_Source_Of_Document, DOCAMNT, MSO_BillToGUID, MSO_ShipToGUID, CUSTNMBR, INTERID, DOCDATE, USERID, CURNCYID) VALUES ( @MSO_Doc_Number, @MSO_Doc_Type, @MSO_Batch_Number, @MSO_Batch_Source, @MSO_Source_Of_Document, @DOCAMNT, @MSO_BillToGUID, @MSO_ShipToGUID, @CUSTNMBR, @INTERID, @DOCDATE, @USERID, @CURNCYID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273506SI] TO [DYNGRP]
GO
