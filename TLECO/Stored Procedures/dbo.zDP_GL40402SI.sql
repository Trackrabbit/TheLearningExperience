SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40402SI] (@Reconciliation_Number int, @SQNCLINE numeric(19,5), @MODULE1 smallint, @ACTINDX int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL40402 (Reconciliation_Number, SQNCLINE, MODULE1, ACTINDX) VALUES ( @Reconciliation_Number, @SQNCLINE, @MODULE1, @ACTINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40402SI] TO [DYNGRP]
GO
