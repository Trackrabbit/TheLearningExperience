SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00904SI] (@aaBudgetID int, @aaCodeSequence int, @PERIODDT datetime, @aaFiscalPeriod smallint, @aaActualPriliminary int, @Balance numeric(19,5), @QUANTITY numeric(19,5), @YEAR1 smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00904 (aaBudgetID, aaCodeSequence, PERIODDT, aaFiscalPeriod, aaActualPriliminary, Balance, QUANTITY, YEAR1) VALUES ( @aaBudgetID, @aaCodeSequence, @PERIODDT, @aaFiscalPeriod, @aaActualPriliminary, @Balance, @QUANTITY, @YEAR1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00904SI] TO [DYNGRP]
GO
