SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273532SI] (@MSO_Doc_Number char(21), @SEQNUMBR int, @MSO_EngineGUID char(51), @MSO_Tender int, @CUSTNMBR char(15), @MSO_CardName char(31), @MSO_CardNumberPABP char(165), @MSO_CardExpDate char(5), @MSO_ABA char(27), @MSO_ACCT char(19), @CRCRDAMT numeric(19,5), @PRCNTOFTTL numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273532 (MSO_Doc_Number, SEQNUMBR, MSO_EngineGUID, MSO_Tender, CUSTNMBR, MSO_CardName, MSO_CardNumberPABP, MSO_CardExpDate, MSO_ABA, MSO_ACCT, CRCRDAMT, PRCNTOFTTL) VALUES ( @MSO_Doc_Number, @SEQNUMBR, @MSO_EngineGUID, @MSO_Tender, @CUSTNMBR, @MSO_CardName, @MSO_CardNumberPABP, @MSO_CardExpDate, @MSO_ABA, @MSO_ACCT, @CRCRDAMT, @PRCNTOFTTL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273532SI] TO [DYNGRP]
GO
