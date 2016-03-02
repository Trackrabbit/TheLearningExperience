SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05635SD] (@USERID char(15), @RTV_Number char(15), @RTV_Line numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC05635 WHERE USERID = @USERID AND RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC05635 WHERE USERID = @USERID AND RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05635SD] TO [DYNGRP]
GO
