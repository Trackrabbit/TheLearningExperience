SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00905SI] (@aaBudgetID int, @aaCodeSequence int, @ACTINDX int, @PERIODDT datetime, @aaFiscalPeriod smallint, @aaActualPriliminary int, @aaRange smallint, @Balance numeric(19,5), @YEAR1 smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00905 (aaBudgetID, aaCodeSequence, ACTINDX, PERIODDT, aaFiscalPeriod, aaActualPriliminary, aaRange, Balance, YEAR1) VALUES ( @aaBudgetID, @aaCodeSequence, @ACTINDX, @PERIODDT, @aaFiscalPeriod, @aaActualPriliminary, @aaRange, @Balance, @YEAR1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00905SI] TO [DYNGRP]
GO
