SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10997SD] (@DICTID smallint, @Language_ID smallint, @FUNCNAME char(101), @FUNCENUM smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY10997 WHERE DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME = @FUNCNAME AND FUNCENUM = @FUNCENUM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY10997 WHERE DICTID = @DICTID AND Language_ID = @Language_ID AND FUNCNAME = @FUNCNAME AND FUNCENUM = @FUNCENUM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10997SD] TO [DYNGRP]
GO
