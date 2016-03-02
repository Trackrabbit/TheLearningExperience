SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00205SD] (@SVC_Document_Type smallint, @SRVRECTYPE smallint, @SVC_Document_Number char(31), @LNITMSEQ int, @LINITMTYP char(3), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC00205 WHERE SVC_Document_Type = @SVC_Document_Type AND SRVRECTYPE = @SRVRECTYPE AND SVC_Document_Number = @SVC_Document_Number AND LNITMSEQ = @LNITMSEQ AND LINITMTYP = @LINITMTYP AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC00205 WHERE SVC_Document_Type = @SVC_Document_Type AND SRVRECTYPE = @SRVRECTYPE AND SVC_Document_Number = @SVC_Document_Number AND LNITMSEQ = @LNITMSEQ AND LINITMTYP = @LINITMTYP SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00205SD] TO [DYNGRP]
GO
