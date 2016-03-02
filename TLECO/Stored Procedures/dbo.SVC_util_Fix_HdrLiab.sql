SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_Fix_HdrLiab] AS declare @NEXTLIABDATE datetime  declare @LIABILITY smallint declare @ContractNumber char(11)  declare Cont_reduction cursor for select CONTNBR from SVC00600 where CONSTS=2  open Cont_reduction   fetch next from Cont_reduction into @ContractNumber   while @@FETCH_STATUS = 0  BEGIN  select @LIABILITY = MAX(Liabiltiy_Reduction),@NEXTLIABDATE= MIN(Next_Liability_Date) from SVC00601   WHERE SVC00601.CONSTS = 2 AND   SVC00601.CONTNBR = @ContractNumber  if @LIABILITY = 1   UPDATE SVC00600   SET   SVC00600.Liabiltiy_Reduction = @LIABILITY,  SVC00600.Next_Liability_Date = @NEXTLIABDATE where CONSTS = 2 and CONTNBR = @ContractNumber  fetch next from Cont_reduction into @ContractNumber   END  deallocate Cont_reduction     
GO
GRANT EXECUTE ON  [dbo].[SVC_util_Fix_HdrLiab] TO [DYNGRP]
GO
