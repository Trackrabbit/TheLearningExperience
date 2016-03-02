SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10103SS_1] (@DOCTYPE smallint, @INVCNMBR char(21), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  DOCTYPE, INVCNMBR, LNITMSEQ, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .IVC10103 WHERE DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ = @LNITMSEQ ORDER BY DOCTYPE ASC, INVCNMBR ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10103SS_1] TO [DYNGRP]
GO
