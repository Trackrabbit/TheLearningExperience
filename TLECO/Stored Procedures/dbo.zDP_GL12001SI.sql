SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL12001SI] (@BACHNUMB char(15), @JRNENTRY int, @BUDGETID char(15), @YEAR1 smallint, @PERIODDT datetime, @PERIODID smallint, @ACTINDX int, @BUDGETAMT numeric(19,5), @BudgerAdjustment numeric(19,5), @GLLINVAL binary(4), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL12001 (BACHNUMB, JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, GLLINVAL) VALUES ( @BACHNUMB, @JRNENTRY, @BUDGETID, @YEAR1, @PERIODDT, @PERIODID, @ACTINDX, @BUDGETAMT, @BudgerAdjustment, @GLLINVAL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL12001SI] TO [DYNGRP]
GO
