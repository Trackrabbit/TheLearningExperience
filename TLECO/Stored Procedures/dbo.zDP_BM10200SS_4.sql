SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10200SS_4] (@BCHSOURC char(15), @BACHNUMB char(15), @TRX_ID char(19)) AS  set nocount on SELECT TOP 1  TRX_ID, BM_Trx_Status, BCHSOURC, BACHNUMB, Batch_ID_Note_Index, Completion_Date, BM_Start_Date, TRXDATE, PSTGDATE, REFRENCE, Quantity_Shortage_Status, BM_Trx_Errors, BM_Component_Errors, NOTEINDX, MODIFDT, USER2ENT, CREATDDT, PTDUSRID, POSTEDDT, TRXSORCE, USERDEF1, USERDEF2, USRDEF03, USRDEF04, DEX_ROW_ID FROM .BM10200 WHERE BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND TRX_ID = @TRX_ID ORDER BY BCHSOURC ASC, BACHNUMB ASC, TRX_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10200SS_4] TO [DYNGRP]
GO
