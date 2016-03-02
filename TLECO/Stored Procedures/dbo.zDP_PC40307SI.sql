SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40307SI] (@PLANCODE char(15), @JOBTITLE char(7), @SEQNUMBR int, @LNITMSEQ int, @ACTINDX int, @FUNDSOURCE char(31), @PRCNTAGE numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PC40307 (PLANCODE, JOBTITLE, SEQNUMBR, LNITMSEQ, ACTINDX, FUNDSOURCE, PRCNTAGE) VALUES ( @PLANCODE, @JOBTITLE, @SEQNUMBR, @LNITMSEQ, @ACTINDX, @FUNDSOURCE, @PRCNTAGE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40307SI] TO [DYNGRP]
GO
