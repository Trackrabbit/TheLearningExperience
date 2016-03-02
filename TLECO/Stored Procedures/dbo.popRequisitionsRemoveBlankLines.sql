SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[popRequisitionsRemoveBlankLines]  @I_sReqNumber               char(21)    = NULL,  @O_iErrorState int         = NULL output  as   DECLARE @nRowNumber int  SELECT @nRowNumber = 0  select  @O_iErrorState  = 0  if  @I_sReqNumber is NULL begin  SELECT @O_iErrorState = 20949  RETURN end   DELETE POP10210 WHERE POPRequisitionNumber = @I_sReqNumber and ITEMNMBR = '' and ITEMDESC = ''  DECLARE LineCursor CURSOR FOR SELECT ORD FROM POP10210 WHERE POPRequisitionNumber = @I_sReqNumber ORDER BY ORD  OPEN LineCursor FETCH NEXT FROM LineCursor  WHILE @@FETCH_STATUS = 0 BEGIN  update POP10210  set LineNumber = @nRowNumber + 1  where CURRENT OF LineCursor  select @nRowNumber = @nRowNumber + 1  FETCH NEXT FROM LineCursor END  select @O_iErrorState = @@FETCH_STATUS  CLOSE LineCursor DEALLOCATE LineCursor   
GO
GRANT EXECUTE ON  [dbo].[popRequisitionsRemoveBlankLines] TO [DYNGRP]
GO
