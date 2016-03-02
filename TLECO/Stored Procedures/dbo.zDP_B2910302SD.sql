SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910302SD] (@CUSTNMBR char(15), @BSSI_PDF_Path char(201), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B2910302 WHERE CUSTNMBR = @CUSTNMBR AND BSSI_PDF_Path = @BSSI_PDF_Path AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B2910302 WHERE CUSTNMBR = @CUSTNMBR AND BSSI_PDF_Path = @BSSI_PDF_Path SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910302SD] TO [DYNGRP]
GO
