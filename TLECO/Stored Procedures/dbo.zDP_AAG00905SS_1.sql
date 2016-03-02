SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00905SS_1] (@aaBudgetID int, @aaCodeSequence int, @ACTINDX int, @PERIODDT datetime, @aaFiscalPeriod smallint, @aaActualPriliminary int) AS  set nocount on SELECT TOP 1  aaBudgetID, aaCodeSequence, ACTINDX, PERIODDT, aaFiscalPeriod, aaActualPriliminary, aaRange, Balance, YEAR1, DEX_ROW_ID FROM .AAG00905 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND aaFiscalPeriod = @aaFiscalPeriod AND aaActualPriliminary = @aaActualPriliminary ORDER BY aaBudgetID ASC, aaCodeSequence ASC, ACTINDX ASC, PERIODDT ASC, aaFiscalPeriod ASC, aaActualPriliminary ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00905SS_1] TO [DYNGRP]
GO
