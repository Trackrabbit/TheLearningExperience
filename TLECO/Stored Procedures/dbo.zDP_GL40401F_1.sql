SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40401F_1] (@Reconciliation_Number_RS int, @Reconciliation_Number_RE int) AS  set nocount on IF @Reconciliation_Number_RS IS NULL BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 ORDER BY Reconciliation_Number ASC END ELSE IF @Reconciliation_Number_RS = @Reconciliation_Number_RE BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE Reconciliation_Number = @Reconciliation_Number_RS ORDER BY Reconciliation_Number ASC END ELSE BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE Reconciliation_Number BETWEEN @Reconciliation_Number_RS AND @Reconciliation_Number_RE ORDER BY Reconciliation_Number ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40401F_1] TO [DYNGRP]
GO
