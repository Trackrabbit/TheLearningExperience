SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900SI] (@aaBudgetTreeID int, @aaBudgetTree char(15), @aaBudgetTreeDescr char(51), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00900 (aaBudgetTreeID, aaBudgetTree, aaBudgetTreeDescr, NOTEINDX) VALUES ( @aaBudgetTreeID, @aaBudgetTree, @aaBudgetTreeDescr, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900SI] TO [DYNGRP]
GO
