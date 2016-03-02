SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30609SI] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @SEQNUMBR int, @SVC_Distribution_Type smallint, @DistRef char(31), @ACTINDX int, @SVC_Contract_Version smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC30609 (CONSTS, CONTNBR, LNSEQNBR, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, SVC_Contract_Version) VALUES ( @CONSTS, @CONTNBR, @LNSEQNBR, @SEQNUMBR, @SVC_Distribution_Type, @DistRef, @ACTINDX, @SVC_Contract_Version) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30609SI] TO [DYNGRP]
GO
