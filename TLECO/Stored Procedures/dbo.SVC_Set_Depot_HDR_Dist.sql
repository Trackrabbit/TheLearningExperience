SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Set_Depot_HDR_Dist]  @WONumber char(11),  @RecordType smallint,  @DistType smallint,  @oldAccountIndex integer,  @AccountIndex integer,  @CurrencyIndex smallint AS declare  @NextLine integer declare  @CAmount numeric(19,2) declare  @OrigCAmount numeric (19,2) declare  @DAmount numeric(19,2) declare  @OrigDAmount numeric (19,2) declare @MinDate datetime  exec smGetMinDate @MinDate output if @oldAccountIndex > 0   BEGIN  delete from SVC06130 where WORECTYPE = @RecordType and WORKORDNUM = @WONumber  and SVC_Distribution_Type=@DistType and POSTED = 0 and ACTINDX = @oldAccountIndex   and SEQNUMBR > 500  if (select count(*) from SVC06131  where WORECTYPE = @RecordType and WORKORDNUM = @WONumber   and ACTINDX = @oldAccountIndex and SVC_Distribution_Type = @DistType and POSTED = 0) > 0  BEGIN  select @CAmount = sum(CRDTAMNT), @OrigCAmount = sum(ORCRDAMT), @DAmount = sum(DEBITAMT),  @OrigDAmount = sum(ORDBTAMT) from SVC06131  where WORECTYPE = @RecordType and WORKORDNUM = @WONumber and ACTINDX = @oldAccountIndex  and SVC_Distribution_Type = @DistType and POSTED = 0  exec SVC_Dist_Get_SEQ_Depot  @WONumber,  @RecordType,  0,'',  @DistType,  @NextLine output   insert SVC06130  select   @RecordType,  @WONumber,  @NextLine,  @DistType,   '',  @oldAccountIndex,  isnull(@DAmount,0),   isnull(@OrigDAmount,0),  isnull(@CAmount,0),   isnull(@OrigCAmount,0),  isnull(@CurrencyIndex,0),  '',  0,  @MinDate  END  END  if @AccountIndex > 0  BEGIN  delete from SVC06130 where WORECTYPE = @RecordType and WORKORDNUM = @WONumber  and SVC_Distribution_Type=@DistType and POSTED = 0 and ACTINDX = @AccountIndex   and SEQNUMBR > 500 if exists (select * from SVC06131 where WORECTYPE = @RecordType and WORKORDNUM = @WONumber  and ACTINDX = @AccountIndex and SVC_Distribution_Type = @DistType and POSTED = 0)  BEGIN  select @CAmount = sum(CRDTAMNT), @OrigCAmount = sum(ORCRDAMT), @DAmount = sum(DEBITAMT), @OrigDAmount = sum(ORDBTAMT) from SVC06131  where WORECTYPE = @RecordType and WORKORDNUM = @WONumber and ACTINDX = @AccountIndex  and SVC_Distribution_Type = @DistType and POSTED = 0  exec SVC_Dist_Get_SEQ_Depot  @WONumber,  @RecordType,  0,'',  @DistType,  @NextLine output   insert SVC06130  select   @RecordType,  @WONumber,  @NextLine,  @DistType,   '',  @AccountIndex,  isnull(@DAmount,0),   isnull(@OrigDAmount,0),  isnull(@CAmount,0),   isnull(@OrigCAmount,0),  isnull(@CurrencyIndex,0),  '',  0,  @MinDate  END END  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_Depot_HDR_Dist] TO [DYNGRP]
GO