SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[dtaGetFinancialRef]  @I_nDTAIndex Numeric(19,5) = NULL,  @I_tReversing tinyint  = NULL,  @I_nRecurringTrxSeq numeric(19,5) = NULL,  @O_cDTAGLReference char(25) = NULL output,  @O_iErrorState int  = NULL  output as  declare  @TRUE tinyint,  @vOutputString varchar(100),  @vReversing varchar(1),  @vNormal varchar(1),  @vRecurring varchar(1),  @iStatus int,  @iError int,  @tLoop tinyint,  @cdta_index   varchar(100),  @cDTAIndex varchar(100),  @sDecimalPosition smallint  select  @O_cDTAGLReference = '',  @O_iErrorState = 0  select  @vOutputString = '',  @iStatus = 0  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_nDTAIndex is NULL or  @I_tReversing is NULL or  @I_nRecurringTrxSeq is NULL  begin  select @O_iErrorState = 20980  break  end    select @TRUE = 1   exec @iStatus = DYNAMICS.dbo.smGetConstantString  'DTA_GLREFDELIMITER_REVERSING',   @vReversing output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   exec @iStatus = DYNAMICS.dbo.smGetConstantString  'DTA_GLREFDELIMITER_NORMAL',   @vNormal output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select @cdta_index = convert(char(20),@I_nDTAIndex)  select @sDecimalPosition = charindex('.',@cdta_index)  select @cDTAIndex =  substring(@cdta_index,1, @sDecimalPosition - 1) +   substring(@cdta_index, @sDecimalPosition + 1, len(@cdta_index))   if @I_nRecurringTrxSeq <> 0.00   begin  exec @iStatus = DYNAMICS.dbo.smGetConstantString  'DTA_GLREFDELIMITER_RECURRING',   @vRecurring output,   @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   if @I_tReversing = @TRUE  select @vOutputString =   ltrim(str(@I_nRecurringTrxSeq,14,0)) + @vRecurring +  rtrim(substring(@cDTAIndex,1,18)) + @vReversing  else  select @vOutputString =   ltrim(str(@I_nRecurringTrxSeq,14,0)) + @vRecurring +  rtrim(substring(@cDTAIndex,1,18)) + @vNormal  end   else   begin  if @I_tReversing = @TRUE  select @vOutputString =  rtrim(substring(@cDTAIndex,1,18)) + @vReversing  else  select @vOutputString =  rtrim(substring(@cDTAIndex,1,18))  + @vNormal  end   if len(@vOutputString) > 25  select @O_cDTAGLReference = SUBSTRING(@vOutputString,(len(@vOutputString) - 24),25)  else  select @O_cDTAGLReference = SUBSTRING(@vOutputString,1,25)  end   return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[dtaGetFinancialRef] TO [DYNGRP]
GO