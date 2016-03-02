SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC03000SS_2] (@SVC_Module char(3), @DOCNUMBR char(21), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 WHERE SVC_Module = @SVC_Module AND DOCNUMBR = @DOCNUMBR AND LNITMSEQ = @LNITMSEQ ORDER BY SVC_Module ASC, DOCNUMBR ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC03000SS_2] TO [DYNGRP]
GO
