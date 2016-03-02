SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30300SD] (@APTVCHNM char(21), @APTODCTY smallint, @VCHRNMBR char(21), @DOCTYPE smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PM30300 WHERE APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PM30300 WHERE APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30300SD] TO [DYNGRP]
GO