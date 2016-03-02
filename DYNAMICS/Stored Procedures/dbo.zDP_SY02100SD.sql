SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY02100SD] (@CMPANYID smallint, @DICTID smallint, @FILSERIS smallint, @LGCFILID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY02100 WHERE CMPANYID = @CMPANYID AND DICTID = @DICTID AND FILSERIS = @FILSERIS AND LGCFILID = @LGCFILID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY02100 WHERE CMPANYID = @CMPANYID AND DICTID = @DICTID AND FILSERIS = @FILSERIS AND LGCFILID = @LGCFILID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02100SD] TO [DYNGRP]
GO
