SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10207SI] (@BACHNUMB char(15), @LOCNCODE char(11), @SEQNUMBR int, @SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int, @ITEMNMBR char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP10207 (BACHNUMB, LOCNCODE, SEQNUMBR, SOPTYPE, SOPNUMBE, LNITMSEQ, ITEMNMBR) VALUES ( @BACHNUMB, @LOCNCODE, @SEQNUMBR, @SOPTYPE, @SOPNUMBE, @LNITMSEQ, @ITEMNMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10207SI] TO [DYNGRP]
GO