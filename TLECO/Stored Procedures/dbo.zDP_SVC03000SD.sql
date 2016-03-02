SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC03000SD] (@SVC_Master_Document_Type smallint, @SVC_Master_Document_Numb char(21), @SVC_Source_Doc_Type smallint, @SRCDOCNUM char(21), @SVC_Module char(3), @DOCNUMBR char(21), @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC03000 WHERE SVC_Master_Document_Type = @SVC_Master_Document_Type AND SVC_Master_Document_Numb = @SVC_Master_Document_Numb AND SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM = @SRCDOCNUM AND SVC_Module = @SVC_Module AND DOCNUMBR = @DOCNUMBR AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC03000 WHERE SVC_Master_Document_Type = @SVC_Master_Document_Type AND SVC_Master_Document_Numb = @SVC_Master_Document_Numb AND SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM = @SRCDOCNUM AND SVC_Module = @SVC_Module AND DOCNUMBR = @DOCNUMBR AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC03000SD] TO [DYNGRP]
GO
