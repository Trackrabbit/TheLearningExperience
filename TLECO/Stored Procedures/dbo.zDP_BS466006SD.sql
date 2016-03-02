SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466006SD] (@VCHRNMBR char(21), @BSSI_Template_ID char(25), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .BS466006 WHERE VCHRNMBR = @VCHRNMBR AND BSSI_Template_ID = @BSSI_Template_ID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .BS466006 WHERE VCHRNMBR = @VCHRNMBR AND BSSI_Template_ID = @BSSI_Template_ID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466006SD] TO [DYNGRP]
GO
