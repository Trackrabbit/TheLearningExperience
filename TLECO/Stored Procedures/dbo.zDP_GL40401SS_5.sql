SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40401SS_5] (@Reconciliation_Date datetime, @From_Date datetime, @Reconciliation_Number int) AS  set nocount on SELECT TOP 1  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE Reconciliation_Date = @Reconciliation_Date AND From_Date = @From_Date AND Reconciliation_Number = @Reconciliation_Number ORDER BY Reconciliation_Date ASC, From_Date ASC, Reconciliation_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40401SS_5] TO [DYNGRP]
GO
