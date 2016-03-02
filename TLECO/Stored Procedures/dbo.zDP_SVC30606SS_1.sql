SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30606SS_1] (@CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @LNSEQNBR numeric(19,5)) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, ITEMNMBR, SVC_Contract_Version, DEX_ROW_ID FROM .SVC30606 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND LNSEQNBR = @LNSEQNBR ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, LNSEQNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30606SS_1] TO [DYNGRP]
GO