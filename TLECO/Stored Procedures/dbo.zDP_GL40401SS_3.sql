SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40401SS_3] (@TODATE datetime, @MODULE1 smallint, @Reconciliation_Number int) AS  set nocount on SELECT TOP 1  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE TODATE = @TODATE AND MODULE1 = @MODULE1 AND Reconciliation_Number = @Reconciliation_Number ORDER BY TODATE ASC, MODULE1 ASC, Reconciliation_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40401SS_3] TO [DYNGRP]
GO
