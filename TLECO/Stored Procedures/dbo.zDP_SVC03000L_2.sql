SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC03000L_2] (@SVC_Module_RS char(3), @DOCNUMBR_RS char(21), @LNITMSEQ_RS int, @SVC_Module_RE char(3), @DOCNUMBR_RE char(21), @LNITMSEQ_RE int) AS  set nocount on IF @SVC_Module_RS IS NULL BEGIN SELECT TOP 25  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 ORDER BY SVC_Module DESC, DOCNUMBR DESC, LNITMSEQ DESC END ELSE IF @SVC_Module_RS = @SVC_Module_RE BEGIN SELECT TOP 25  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 WHERE SVC_Module = @SVC_Module_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SVC_Module DESC, DOCNUMBR DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 WHERE SVC_Module BETWEEN @SVC_Module_RS AND @SVC_Module_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SVC_Module DESC, DOCNUMBR DESC, LNITMSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC03000L_2] TO [DYNGRP]
GO
