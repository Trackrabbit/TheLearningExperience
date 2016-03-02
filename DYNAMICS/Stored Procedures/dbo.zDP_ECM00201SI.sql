SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM00201SI] (@CompanyID int, @SessionID int, @BudgetID char(15), @PeriodID smallint, @BudgetAmt numeric(19,5), @Accatnum smallint, @ActIndx int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ECM00201 (CompanyID, SessionID, BudgetID, PeriodID, BudgetAmt, Accatnum, ActIndx) VALUES ( @CompanyID, @SessionID, @BudgetID, @PeriodID, @BudgetAmt, @Accatnum, @ActIndx) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM00201SI] TO [DYNGRP]
GO
