SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV50200SS_3] (@INCLUDEITEM tinyint, @USERID char(15), @IntegerValue smallint, @LOCNCODE char(11), @BINNMBR char(21), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  INCLUDEITEM, ITEMNMBR, LOCNCODE, BINNMBR, ITMCLSCD, ABCCODE, ITMGEDSC, ITEMDESC, LSTCNTDT, STCKCNTINTRVL, NXTCNTDT, NXTCNTTM, UPDATED, ITEMTYPE, USERID, IntegerValue, DEX_ROW_ID FROM .IV50200 WHERE INCLUDEITEM = @INCLUDEITEM AND USERID = @USERID AND IntegerValue = @IntegerValue AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND ITEMNMBR = @ITEMNMBR ORDER BY INCLUDEITEM ASC, USERID ASC, IntegerValue ASC, LOCNCODE ASC, BINNMBR ASC, ITEMNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV50200SS_3] TO [DYNGRP]
GO