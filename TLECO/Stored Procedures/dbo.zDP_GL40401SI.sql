SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40401SI] (@Reconciliation_Number int, @Reconciliation_Date datetime, @MODULE1 smallint, @fileName char(255), @SubledgerBegBalance numeric(19,5), @SubledgerEndingBalance numeric(19,5), @GL_Beginning_Balance numeric(19,5), @GL_Ending_Balance numeric(19,5), @From_Date datetime, @TODATE datetime, @CHEKBKID char(15), @Status smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL40401 (Reconciliation_Number, Reconciliation_Date, MODULE1, fileName, SubledgerBegBalance, SubledgerEndingBalance, GL_Beginning_Balance, GL_Ending_Balance, From_Date, TODATE, CHEKBKID, Status) VALUES ( @Reconciliation_Number, @Reconciliation_Date, @MODULE1, @fileName, @SubledgerBegBalance, @SubledgerEndingBalance, @GL_Beginning_Balance, @GL_Ending_Balance, @From_Date, @TODATE, @CHEKBKID, @Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40401SI] TO [DYNGRP]
GO
