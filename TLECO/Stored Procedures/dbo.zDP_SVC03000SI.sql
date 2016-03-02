SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC03000SI] (@SVC_Master_Document_Type smallint, @SVC_Master_Document_Numb char(21), @SVC_Source_Document_ID smallint, @SVC_Source_Doc_Type smallint, @SRCDOCNUM char(21), @SVC_Document_ID smallint, @SVC_Module char(3), @DOCNUMBR char(21), @LNITMSEQ int, @CREATDDT datetime, @CREATETIME datetime, @CRUSRID char(15), @MODIFDT datetime, @SVC_Modified_Time datetime, @MDFUSRID char(15), @DSCRIPTN char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC03000 (SVC_Master_Document_Type, SVC_Master_Document_Numb, SVC_Source_Document_ID, SVC_Source_Doc_Type, SRCDOCNUM, SVC_Document_ID, SVC_Module, DOCNUMBR, LNITMSEQ, CREATDDT, CREATETIME, CRUSRID, MODIFDT, SVC_Modified_Time, MDFUSRID, DSCRIPTN) VALUES ( @SVC_Master_Document_Type, @SVC_Master_Document_Numb, @SVC_Source_Document_ID, @SVC_Source_Doc_Type, @SRCDOCNUM, @SVC_Document_ID, @SVC_Module, @DOCNUMBR, @LNITMSEQ, @CREATDDT, @CREATETIME, @CRUSRID, @MODIFDT, @SVC_Modified_Time, @MDFUSRID, @DSCRIPTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC03000SI] TO [DYNGRP]
GO
