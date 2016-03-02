SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00201SS_1] (@SRVRECTYPE smallint, @CALLNBR char(11), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, LNITMSEQ, EQUIPID, ITEMNMBR, PRDLINE, PROBCDE, CAUSECDE, RPRCODE, Note_Index_1, Note_Index_2, Note_Index_3, DEX_ROW_ID FROM .SVC00201 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND LNITMSEQ = @LNITMSEQ ORDER BY SRVRECTYPE ASC, CALLNBR ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00201SS_1] TO [DYNGRP]
GO