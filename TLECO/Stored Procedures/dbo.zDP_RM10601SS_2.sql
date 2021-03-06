SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10601SS_2] (@RMDTYPAL smallint, @DOCNUMBR char(21), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  BACHNUMB, RMDTYPAL, DOCNUMBR, CUSTNMBR, TAXDTLID, TRXSORCE, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, POSTED, SEQNUMBR, CURRNIDX, DEX_ROW_ID FROM .RM10601 WHERE RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SEQNUMBR = @SEQNUMBR ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10601SS_2] TO [DYNGRP]
GO
