SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30700SS_2] (@CNTSTRTDT datetime, @STCKCNTID char(15), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  STCKCNTID, SEQNUMBR, STCKCNTDSCRPTN, CNTSTRTDT, CNTSTRTTM, IVDOCNBR, IVDOCTYP, NOTEINDX, DOCDATE, DEX_ROW_ID FROM .IV30700 WHERE CNTSTRTDT = @CNTSTRTDT AND STCKCNTID = @STCKCNTID AND SEQNUMBR = @SEQNUMBR ORDER BY CNTSTRTDT ASC, STCKCNTID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30700SS_2] TO [DYNGRP]
GO
