SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40401F_6] (@MODULE1_RS smallint, @Reconciliation_Number_RS int, @MODULE1_RE smallint, @Reconciliation_Number_RE int) AS  set nocount on IF @MODULE1_RS IS NULL BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 ORDER BY MODULE1 ASC, Reconciliation_Number ASC END ELSE IF @MODULE1_RS = @MODULE1_RE BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE MODULE1 = @MODULE1_RS AND Reconciliation_Number BETWEEN @Reconciliation_Number_RS AND @Reconciliation_Number_RE ORDER BY MODULE1 ASC, Reconciliation_Number ASC END ELSE BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND Reconciliation_Number BETWEEN @Reconciliation_Number_RS AND @Reconciliation_Number_RE ORDER BY MODULE1 ASC, Reconciliation_Number ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40401F_6] TO [DYNGRP]
GO
