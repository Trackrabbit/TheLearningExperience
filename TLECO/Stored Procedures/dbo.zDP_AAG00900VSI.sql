SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00900VSI] (@aaFiscalPeriod smallint, @RootBalance numeric(19,5), @RootQty numeric(19,5), @FirstBalance numeric(19,5), @FirstQty numeric(19,5), @DiffAmount numeric(19,5), @DiffQty numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00900V (aaFiscalPeriod, RootBalance, RootQty, FirstBalance, FirstQty, DiffAmount, DiffQty) VALUES ( @aaFiscalPeriod, @RootBalance, @RootQty, @FirstBalance, @FirstQty, @DiffAmount, @DiffQty) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00900VSI] TO [DYNGRP]
GO
