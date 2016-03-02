SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40100SI] (@FUTASUTA char(3), @DSCRIPTN char(31), @EPRIDNBR char(9), @ESTIDNBR char(21), @FUSUTXRT int, @FUSUWLMT numeric(19,5), @INTXSHAN tinyint, @INPRSTWG tinyint, @NOTEINDX numeric(19,5), @Stat_Tax_ID char(21), @TXENTYCD char(5), @OTHSTDAT char(11), @STCNTRLNUM char(7), @SUPPDAT1 char(75), @SUPPDAT2 char(75), @EmployerKind smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR40100 (FUTASUTA, DSCRIPTN, EPRIDNBR, ESTIDNBR, FUSUTXRT, FUSUWLMT, INTXSHAN, INPRSTWG, NOTEINDX, Stat_Tax_ID, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, EmployerKind) VALUES ( @FUTASUTA, @DSCRIPTN, @EPRIDNBR, @ESTIDNBR, @FUSUTXRT, @FUSUWLMT, @INTXSHAN, @INPRSTWG, @NOTEINDX, @Stat_Tax_ID, @TXENTYCD, @OTHSTDAT, @STCNTRLNUM, @SUPPDAT1, @SUPPDAT2, @EmployerKind) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40100SI] TO [DYNGRP]
GO
