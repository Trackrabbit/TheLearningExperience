SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00106SD] (@CUSTNMBR char(15), @Email_Type smallint, @Email_Recipient char(81), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .RM00106 WHERE CUSTNMBR = @CUSTNMBR AND Email_Type = @Email_Type AND Email_Recipient = @Email_Recipient AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .RM00106 WHERE CUSTNMBR = @CUSTNMBR AND Email_Type = @Email_Type AND Email_Recipient = @Email_Recipient SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00106SD] TO [DYNGRP]
GO
