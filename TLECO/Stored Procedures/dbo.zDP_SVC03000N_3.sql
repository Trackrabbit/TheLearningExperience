SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC03000N_3] (@BS int, @SVC_Source_Doc_Type smallint, @SRCDOCNUM char(21), @LNITMSEQ int, @SVC_Source_Doc_Type_RS smallint, @SRCDOCNUM_RS char(21), @LNITMSEQ_RS int, @SVC_Source_Doc_Type_RE smallint, @SRCDOCNUM_RE char(21), @LNITMSEQ_RE int) AS  set nocount on IF @SVC_Source_Doc_Type_RS IS NULL BEGIN SELECT TOP 25  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 WHERE ( SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM = @SRCDOCNUM AND LNITMSEQ > @LNITMSEQ OR SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM > @SRCDOCNUM OR SVC_Source_Doc_Type > @SVC_Source_Doc_Type ) ORDER BY SVC_Source_Doc_Type ASC, SRCDOCNUM ASC, LNITMSEQ ASC END ELSE IF @SVC_Source_Doc_Type_RS = @SVC_Source_Doc_Type_RE BEGIN SELECT TOP 25  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 WHERE SVC_Source_Doc_Type = @SVC_Source_Doc_Type_RS AND SRCDOCNUM BETWEEN @SRCDOCNUM_RS AND @SRCDOCNUM_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM = @SRCDOCNUM AND LNITMSEQ > @LNITMSEQ OR SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM > @SRCDOCNUM OR SVC_Source_Doc_Type > @SVC_Source_Doc_Type ) ORDER BY SVC_Source_Doc_Type ASC, SRCDOCNUM ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN, DEX_ROW_ID FROM .SVC03000 WHERE SVC_Source_Doc_Type BETWEEN @SVC_Source_Doc_Type_RS AND @SVC_Source_Doc_Type_RE AND SRCDOCNUM BETWEEN @SRCDOCNUM_RS AND @SRCDOCNUM_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM = @SRCDOCNUM AND LNITMSEQ > @LNITMSEQ OR SVC_Source_Doc_Type = @SVC_Source_Doc_Type AND SRCDOCNUM > @SRCDOCNUM OR SVC_Source_Doc_Type > @SVC_Source_Doc_Type ) ORDER BY SVC_Source_Doc_Type ASC, SRCDOCNUM ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC03000N_3] TO [DYNGRP]
GO
