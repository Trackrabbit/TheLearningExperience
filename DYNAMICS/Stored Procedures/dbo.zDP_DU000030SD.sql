SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DU000030SD] (@PRODID smallint, @fileNumber smallint, @companyID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .DU000030 WHERE PRODID = @PRODID AND fileNumber = @fileNumber AND companyID = @companyID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .DU000030 WHERE PRODID = @PRODID AND fileNumber = @fileNumber AND companyID = @companyID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DU000030SD] TO [DYNGRP]
GO
