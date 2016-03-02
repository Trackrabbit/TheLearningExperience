SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30200SS_2] (@DOCNUMBR char(21), @IVDOCTYP smallint) AS  set nocount on SELECT TOP 1  TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR, DEX_ROW_TS, DEX_ROW_ID FROM .IV30200 WHERE DOCNUMBR = @DOCNUMBR AND IVDOCTYP = @IVDOCTYP ORDER BY DOCNUMBR ASC, IVDOCTYP ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30200SS_2] TO [DYNGRP]
GO
