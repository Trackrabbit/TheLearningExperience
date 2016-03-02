SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE465546SD] (@SEOPTNME char(21), @SE_Column_Number smallint, @SE_Token_Position smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SE465546 WHERE SEOPTNME = @SEOPTNME AND SE_Column_Number = @SE_Column_Number AND SE_Token_Position = @SE_Token_Position AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SE465546 WHERE SEOPTNME = @SEOPTNME AND SE_Column_Number = @SE_Column_Number AND SE_Token_Position = @SE_Token_Position SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE465546SD] TO [DYNGRP]
GO
