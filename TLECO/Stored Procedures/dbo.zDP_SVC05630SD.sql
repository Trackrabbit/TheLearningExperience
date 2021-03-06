SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05630SD] (@RTV_Number char(15), @RTV_Line numeric(19,5), @LINITMTYP char(3), @SEQNUMBR int, @SVC_Distribution_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC05630 WHERE RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line AND LINITMTYP = @LINITMTYP AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC05630 WHERE RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line AND LINITMTYP = @LINITMTYP AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type SELECT @RowsAffected = @@rowcount END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05630SD] TO [DYNGRP]
GO
