SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Contract_Table] (@RecordType smallint output,  @ContractNumber char(11),  @TableType smallint output,  @Version smallint OUTPUT ) As  if @TableType = 9  Begin  select @Version = Max(SVC_Contract_Version) from SVC30600 where CONSTS = @RecordType and CONTNBR = @ContractNumber  return   ENd if @RecordType = 0   begin  select @RecordType = CONSTS from SVC00600 where CONTNBR = @ContractNumber  if @RecordType > 0   select @TableType = 1  else  begin  select @RecordType =  CONSTS from SVC30600 where CONTNBR = @ContractNumber  if @RecordType > 0   begin  select @TableType = 2  select @Version = Max(SVC_Contract_Version) from SVC30600 where CONSTS = @RecordType and CONTNBR = @ContractNumber  end  else  select @TableType = 0  end  end  else  if @RecordType = 4  begin  if (exists(select * from SVC30600 where CONTNBR = @ContractNumber))  begin  select @RecordType = CONSTS from SVC30600 where CONTNBR = @ContractNumber  select @Version = Max(SVC_Contract_Version) from SVC30600 where CONTNBR = @ContractNumber and CONSTS =  @RecordType  select @TableType = 2  end  else  select @TableType = 0  end  else  begin  if (exists(select * from SVC00600 where CONSTS = @RecordType and CONTNBR = @ContractNumber))  select @TableType = 1  else  begin  if (exists(select * from SVC30600 where CONSTS = @RecordType and CONTNBR = @ContractNumber))  begin  select @Version = Max(SVC_Contract_Version) from SVC30600 where CONTNBR = @ContractNumber and CONSTS =  @RecordType  select @TableType = 2  end  else  select @TableType = 0  end  end  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Contract_Table] TO [DYNGRP]
GO
