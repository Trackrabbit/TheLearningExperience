SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10212SI] (@TRXSOURC char(25), @RPRTNAME char(31), @PRNTOFIL tinyint, @PRTOPRTR tinyint, @PRTOSCRN tinyint, @EXPTTYPE smallint, @FILEXPNM char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10212 (TRXSOURC, RPRTNAME, PRNTOFIL, PRTOPRTR, PRTOSCRN, EXPTTYPE, FILEXPNM) VALUES ( @TRXSOURC, @RPRTNAME, @PRNTOFIL, @PRTOPRTR, @PRTOSCRN, @EXPTTYPE, @FILEXPNM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10212SI] TO [DYNGRP]
GO
