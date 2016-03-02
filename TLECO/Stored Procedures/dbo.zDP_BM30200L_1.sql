SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30200L_1] (@TRX_ID_RS char(19), @TRX_ID_RE char(19)) AS  set nocount on IF @TRX_ID_RS IS NULL BEGIN SELECT TOP 25  TRX_ID, BM_Trx_Status, BCHSOURC, BACHNUMB, Batch_ID_Note_Index, Completion_Date, BM_Start_Date, TRXDATE, PSTGDATE, REFRENCE, BM_Trx_Errors, BM_Component_Errors, NOTEINDX, MODIFDT, USER2ENT, CREATDDT, PTDUSRID, POSTEDDT, TRXSORCE, USERDEF1, USERDEF2, USRDEF03, USRDEF04, DEX_ROW_ID FROM .BM30200 ORDER BY TRX_ID DESC END ELSE IF @TRX_ID_RS = @TRX_ID_RE BEGIN SELECT TOP 25  TRX_ID, BM_Trx_Status, BCHSOURC, BACHNUMB, Batch_ID_Note_Index, Completion_Date, BM_Start_Date, TRXDATE, PSTGDATE, REFRENCE, BM_Trx_Errors, BM_Component_Errors, NOTEINDX, MODIFDT, USER2ENT, CREATDDT, PTDUSRID, POSTEDDT, TRXSORCE, USERDEF1, USERDEF2, USRDEF03, USRDEF04, DEX_ROW_ID FROM .BM30200 WHERE TRX_ID = @TRX_ID_RS ORDER BY TRX_ID DESC END ELSE BEGIN SELECT TOP 25  TRX_ID, BM_Trx_Status, BCHSOURC, BACHNUMB, Batch_ID_Note_Index, Completion_Date, BM_Start_Date, TRXDATE, PSTGDATE, REFRENCE, BM_Trx_Errors, BM_Component_Errors, NOTEINDX, MODIFDT, USER2ENT, CREATDDT, PTDUSRID, POSTEDDT, TRXSORCE, USERDEF1, USERDEF2, USRDEF03, USRDEF04, DEX_ROW_ID FROM .BM30200 WHERE TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE ORDER BY TRX_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30200L_1] TO [DYNGRP]
GO
