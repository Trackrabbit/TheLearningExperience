SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Update_Contract_To_Evergreen]  @RecordType smallint,  @Contract char(10),  @Line numeric(19,5) ,  @State smallint  AS declare @Evergreen tinyint declare @FrozenStart datetime, @FrozenEnd datetime  if @State = 2   begin  exec SVC_RET_DeleteRevenueLines @RecordType, @Contract, @Line  select @Evergreen= SVC_Evergreen_Contract, @FrozenEnd = FRZEND, @FrozenStart= FRXSTRT  from SVC00600 where CONSTS = @RecordType and CONTNBR = @Contract  if @Evergreen = 1  begin  update SVC00601 set FRXSTRT = @FrozenStart, FRZEND = @FrozenEnd   where CONSTS = @RecordType and CONTNBR = @Contract and LNSEQNBR = @Line  exec SVC_EVGR_Update_Contract_Line @RecordType, @Contract, @Line,2  end  else  begin  exec SVC_Update_Contract_Billing @RecordType, @Contract, @Line  end  end  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Contract_To_Evergreen] TO [DYNGRP]
GO
