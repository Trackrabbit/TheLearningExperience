SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP300001SD] (@PP_Module smallint, @DISTTYPE smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PP300001 WHERE PP_Module = @PP_Module AND DISTTYPE = @DISTTYPE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PP300001 WHERE PP_Module = @PP_Module AND DISTTYPE = @DISTTYPE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP300001SD] TO [DYNGRP]
GO
