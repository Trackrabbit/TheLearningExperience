SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00903SI] (@aaBudgetID int, @aaBudget char(15), @aaBudgetDescr char(51), @aaBudgetTreeID int, @Based_On smallint, @YEAR1 smallint, @From_Date datetime, @TODATE datetime, @BUDPWRD char(15), @aaBudgetRollUp tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00903 (aaBudgetID, aaBudget, aaBudgetDescr, aaBudgetTreeID, Based_On, YEAR1, From_Date, TODATE, BUDPWRD, aaBudgetRollUp, NOTEINDX) VALUES ( @aaBudgetID, @aaBudget, @aaBudgetDescr, @aaBudgetTreeID, @Based_On, @YEAR1, @From_Date, @TODATE, @BUDPWRD, @aaBudgetRollUp, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00903SI] TO [DYNGRP]
GO
