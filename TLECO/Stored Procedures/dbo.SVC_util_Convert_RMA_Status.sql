SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_util_Convert_RMA_Status]  As declare  @RMANumber char(15),  @LineNumber numeric(19,5),  @RMA_Status smallint declare RMA_Status cursor for   select RETDOCID,LNSEQNBR from SVC05200 where Return_Record_Type = 1  open RMA_Status  fetch next from RMA_Status into @RMANumber,@LineNumber  while @@FETCH_STATUS = 0  BEGIN  exec SVC_Check_RMA_Open_Document @RMANumber,@LineNumber,@RMA_Status  fetch next from RMA_Status into @RMANumber,@LineNumber  END  deallocate RMA_Status  update SVC05000 set RMA_Status = 10 where Return_Record_Type = 2 return     
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Convert_RMA_Status] TO [DYNGRP]
GO
