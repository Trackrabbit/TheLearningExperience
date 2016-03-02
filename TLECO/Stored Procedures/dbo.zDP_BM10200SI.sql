SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10200SI] (@TRX_ID char(19), @BM_Trx_Status smallint, @BCHSOURC char(15), @BACHNUMB char(15), @Batch_ID_Note_Index numeric(19,5), @Completion_Date datetime, @BM_Start_Date datetime, @TRXDATE datetime, @PSTGDATE datetime, @REFRENCE char(31), @Quantity_Shortage_Status smallint, @BM_Trx_Errors binary(4), @BM_Component_Errors binary(4), @NOTEINDX numeric(19,5), @MODIFDT datetime, @USER2ENT char(15), @CREATDDT datetime, @PTDUSRID char(15), @POSTEDDT datetime, @TRXSORCE char(13), @USERDEF1 char(21), @USERDEF2 char(21), @USRDEF03 char(21), @USRDEF04 char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .BM10200 (TRX_ID, BM_Trx_Status, BCHSOURC, BACHNUMB, Batch_ID_Note_Index, Completion_Date, BM_Start_Date, TRXDATE, PSTGDATE, REFRENCE, Quantity_Shortage_Status, BM_Trx_Errors, BM_Component_Errors, NOTEINDX, MODIFDT, USER2ENT, CREATDDT, PTDUSRID, POSTEDDT, TRXSORCE, USERDEF1, USERDEF2, USRDEF03, USRDEF04) VALUES ( @TRX_ID, @BM_Trx_Status, @BCHSOURC, @BACHNUMB, @Batch_ID_Note_Index, @Completion_Date, @BM_Start_Date, @TRXDATE, @PSTGDATE, @REFRENCE, @Quantity_Shortage_Status, @BM_Trx_Errors, @BM_Component_Errors, @NOTEINDX, @MODIFDT, @USER2ENT, @CREATDDT, @PTDUSRID, @POSTEDDT, @TRXSORCE, @USERDEF1, @USERDEF2, @USRDEF03, @USRDEF04) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10200SI] TO [DYNGRP]
GO
