SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50001SS_4] (@USERID char(15), @PRCSSQNC smallint, @REPORTID smallint, @ALRDYCAL tinyint) AS  set nocount on SELECT TOP 1  USERID, REPORTID, AMNTFROM, BUDGETID, HSTYEAR, STACCNDX, EDACCNDX, ALRDYCAL, CNSOLDTD, MULCMPID, PRCSSQNC, DEX_ROW_ID FROM .AF50001 WHERE USERID = @USERID AND PRCSSQNC = @PRCSSQNC AND REPORTID = @REPORTID AND ALRDYCAL = @ALRDYCAL ORDER BY USERID ASC, PRCSSQNC ASC, REPORTID ASC, ALRDYCAL ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50001SS_4] TO [DYNGRP]
GO
