SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273514SI] (@MSO_Transfer_Date datetime, @MSO_Transfer_Time datetime, @SEQNUMBR int, @BACHNUMB char(15), @BCHSOURC char(15), @ERMSGTXT char(255), @ERMSGTX2 char(255), @MSO_TrxType int, @SOPNUMBE char(21), @SOPTYPE smallint, @MSO_New_SOP_Number char(21), @MSO_New_SOP_Type smallint, @MSO_PreAuthorize_Amount numeric(19,5), @MSO_BookAmount char(101), @CRCRDAMT numeric(19,5), @USERDATE datetime, @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273514 (MSO_Transfer_Date, MSO_Transfer_Time, SEQNUMBR, BACHNUMB, BCHSOURC, ERMSGTXT, ERMSGTX2, MSO_TrxType, SOPNUMBE, SOPTYPE, MSO_New_SOP_Number, MSO_New_SOP_Type, MSO_PreAuthorize_Amount, MSO_BookAmount, CRCRDAMT, USERDATE, USERID) VALUES ( @MSO_Transfer_Date, @MSO_Transfer_Time, @SEQNUMBR, @BACHNUMB, @BCHSOURC, @ERMSGTXT, @ERMSGTX2, @MSO_TrxType, @SOPNUMBE, @SOPTYPE, @MSO_New_SOP_Number, @MSO_New_SOP_Type, @MSO_PreAuthorize_Amount, @MSO_BookAmount, @CRCRDAMT, @USERDATE, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273514SI] TO [DYNGRP]
GO
