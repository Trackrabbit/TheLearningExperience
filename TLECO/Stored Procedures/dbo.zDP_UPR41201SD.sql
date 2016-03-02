SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41201SD] (@EMPLCLAS char(15), @PYRLRTYP smallint, @PAYROLCD char(7), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR41201 WHERE EMPLCLAS = @EMPLCLAS AND PYRLRTYP = @PYRLRTYP AND PAYROLCD = @PAYROLCD AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR41201 WHERE EMPLCLAS = @EMPLCLAS AND PYRLRTYP = @PYRLRTYP AND PAYROLCD = @PAYROLCD SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41201SD] TO [DYNGRP]
GO