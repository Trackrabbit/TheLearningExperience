SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV50200SS_1] (@USERID char(15), @IntegerValue smallint, @ITEMNMBR char(31), @LOCNCODE char(11), @BINNMBR char(21)) AS  set nocount on SELECT TOP 1  INCLUDEITEM, ITEMNMBR, LOCNCODE, BINNMBR, ITMCLSCD, ABCCODE, ITMGEDSC, ITEMDESC, LSTCNTDT, STCKCNTINTRVL, NXTCNTDT, NXTCNTTM, UPDATED, ITEMTYPE, USERID, IntegerValue, DEX_ROW_ID FROM .IV50200 WHERE USERID = @USERID AND IntegerValue = @IntegerValue AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR ORDER BY USERID ASC, IntegerValue ASC, ITEMNMBR ASC, LOCNCODE ASC, BINNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV50200SS_1] TO [DYNGRP]
GO