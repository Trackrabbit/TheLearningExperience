SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50001SI] (@USERID char(15), @REPORTID smallint, @AMNTFROM smallint, @BUDGETID char(15), @HSTYEAR smallint, @STACCNDX int, @EDACCNDX int, @ALRDYCAL tinyint, @CNSOLDTD tinyint, @MULCMPID char(15), @PRCSSQNC smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AF50001 (USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, ALRDYCAL, CNSOLDTD, MULCMPID, PRCSSQNC) VALUES ( @USERID, @REPORTID, @AMNTFROM, @BUDGETID, @HSTYEAR, @STACCNDX, @EDACCNDX, @ALRDYCAL, @CNSOLDTD, @MULCMPID, @PRCSSQNC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50001SI] TO [DYNGRP]
GO