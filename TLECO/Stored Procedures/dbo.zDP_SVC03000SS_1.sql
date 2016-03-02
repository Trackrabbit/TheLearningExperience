SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC03000SS_1] (@SVC_Master_Document_Type smallint, @SVC_Master_Document_Numb char(21), @SVC_Source_Doc_Type smallint, @SRCDOCNUM char(21), @SVC_Module char(3), @DOCNUMBR char(21), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 WHERE SVC_Master_Document_Type = @SVC_Master_Document_Type AND SVC_Master_Document_Numb = @SVC_Master_Document_Numb AND SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM = @SRCDOCNUM AND SVC_Module = @SVC_Module AND DOCNUMBR = @DOCNUMBR AND LNITMSEQ = @LNITMSEQ ORDER BY SVC_Master_Document_Type ASC, SVC_Master_Document_Numb ASC, SVC_Source_Doc_Type ASC, SRCDOCNUM ASC, SVC_Module ASC, DOCNUMBR ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC03000SS_1] TO [DYNGRP]
GO
