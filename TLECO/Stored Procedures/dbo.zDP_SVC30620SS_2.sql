SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30620SS_2] (@CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @SVC_Contract_Line_SEQ numeric(19,5), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNITMSEQ, SVC_Contract_Line_SEQ, DATE1, TIME1, ITEMNMBR, SERLNMBR, ADRSCODE, ITEMDESC, USERID, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30620 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SVC_Contract_Line_SEQ = @SVC_Contract_Line_SEQ AND LNITMSEQ = @LNITMSEQ ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, SVC_Contract_Line_SEQ ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30620SS_2] TO [DYNGRP]
GO
