SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30102SD] (@SMRYTYPE smallint, @ITEMNMBR char(31), @LOCNCODE char(11), @YEAR1 smallint, @SMRYPMTH smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV30102 WHERE SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 = @YEAR1 AND SMRYPMTH = @SMRYPMTH AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV30102 WHERE SMRYTYPE = @SMRYTYPE AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND YEAR1 = @YEAR1 AND SMRYPMTH = @SMRYPMTH SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30102SD] TO [DYNGRP]
GO