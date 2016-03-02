SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40600SI] (@CURNCYID char(15), @CurrentExchangeTableID char(15), @HistoricalExchgTableID char(15), @AverageExchangeTableID char(15), @BudgetExchangeTableID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC40600 (CURNCYID, CurrentExchangeTableID, HistoricalExchgTableID, AverageExchangeTableID, BudgetExchangeTableID) VALUES ( @CURNCYID, @CurrentExchangeTableID, @HistoricalExchgTableID, @AverageExchangeTableID, @BudgetExchangeTableID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40600SI] TO [DYNGRP]
GO
