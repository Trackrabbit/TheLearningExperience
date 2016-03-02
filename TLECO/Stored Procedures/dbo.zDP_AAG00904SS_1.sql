SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00904SS_1] (@aaBudgetID int, @aaCodeSequence int, @PERIODDT datetime, @aaFiscalPeriod smallint, @aaActualPriliminary int) AS  set nocount on SELECT TOP 1  aaBudgetID, aaCodeSequence, PERIODDT, aaFiscalPeriod, aaActualPriliminary, Balance, QUANTITY, YEAR1, DEX_ROW_TS, DEX_ROW_ID FROM .AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND PERIODDT = @PERIODDT AND aaFiscalPeriod = @aaFiscalPeriod AND aaActualPriliminary = @aaActualPriliminary ORDER BY aaBudgetID ASC, aaCodeSequence ASC, PERIODDT ASC, aaFiscalPeriod ASC, aaActualPriliminary ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00904SS_1] TO [DYNGRP]
GO
