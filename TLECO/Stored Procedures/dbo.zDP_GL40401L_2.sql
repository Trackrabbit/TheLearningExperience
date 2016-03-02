SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40401L_2] (@From_Date_RS datetime, @MODULE1_RS smallint, @Reconciliation_Number_RS int, @From_Date_RE datetime, @MODULE1_RE smallint, @Reconciliation_Number_RE int) AS  set nocount on IF @From_Date_RS IS NULL BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 ORDER BY From_Date DESC, MODULE1 DESC, Reconciliation_Number DESC END ELSE IF @From_Date_RS = @From_Date_RE BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE From_Date = @From_Date_RS AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND Reconciliation_Number BETWEEN @Reconciliation_Number_RS AND @Reconciliation_Number_RE ORDER BY From_Date DESC, MODULE1 DESC, Reconciliation_Number DESC END ELSE BEGIN SELECT TOP 25  Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status, DEX_ROW_ID FROM .GL40401 WHERE From_Date BETWEEN @From_Date_RS AND @From_Date_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND Reconciliation_Number BETWEEN @Reconciliation_Number_RS AND @Reconciliation_Number_RE ORDER BY From_Date DESC, MODULE1 DESC, Reconciliation_Number DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40401L_2] TO [DYNGRP]
GO
