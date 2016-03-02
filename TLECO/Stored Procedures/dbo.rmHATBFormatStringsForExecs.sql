SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmHATBFormatStringsForExecs]  @I_cStartCustomerNumber         char(15)        = NULL,  @I_cEndCustomerNumber     char(15)        = NULL,  @I_cStartCustomerName           char(65) = NULL,  @I_cEndCustomerName             char(65) = NULL,  @I_cStartClassID                char(15) = NULL,  @I_cEndClassID                  char(15) = NULL,  @I_cStartSalesPersonID char(15) = NULL,  @I_cEndSalesPersonID char(15) = NULL,  @I_cStartSalesTerritory char(15) = NULL,  @I_cEndSalesTerritory char(15) = NULL,  @I_cStartShortName char(15) = NULL,  @I_cEndShortName char(15) = NULL,  @I_cStartState char(5)  = NULL,  @I_cEndState char(5)  = NULL,  @I_cStartZipCode char(11) = NULL,  @I_cEndZipCode char(11) = NULL,  @I_cStartPhoneNumber char(21) = NULL,  @I_cEndPhoneNumber char(21) = NULL,  @I_cStartUserDefined     char(15)        = NULL,  @I_cEndUserDefined              char(15)        = NULL,  @O_cExecStartCustomerNumber char(32) = NULL output,  @O_cExecEndCustomerNumber     char(32) = NULL output,  @O_cExecStartCustomerName char(132) = NULL output,  @O_cExecEndCustomerName char(132) = NULL output,  @O_cExecStartClassID char(32) = NULL output,  @O_cExecEndClassID char(32) = NULL output,  @O_cExecStartSalesPersonID char(32) = NULL output,  @O_cExecEndSalesPersonID char(32) = NULL output,  @O_cExecStartSalesTerritory char(32) = NULL output,  @O_cExecEndSalesTerritory char(32) = NULL output,  @O_cExecStartShortName char(32) = NULL output,  @O_cExecEndShortName char(32) = NULL output,  @O_cExecStartState char(12) = NULL output,  @O_cExecEndState char(12) = NULL output,  @O_cExecStartZipCode char(24) = NULL output,  @O_cExecEndZipCode char(24) = NULL output,  @O_cExecStartPhoneNumber char(44) = NULL output,  @O_cExecEndPhoneNumber char(44) = NULL output,  @O_cExecStartUserDefined     char(32) = NULL output,  @O_cExecEndUserDefined char(32) = NULL output,  @O_iErrorState                  int  = NULL output as  declare  @cTEST char(32),  @tLoopControl           tinyint,  @iStatus                int,  @iError                 int  select  @iStatus   = 0,  @O_iErrorState   = 0,  @O_cExecStartCustomerNumber = '',  @O_cExecEndCustomerNumber = '',  @O_cExecStartCustomerName = '',  @O_cExecEndCustomerName  = '',  @O_cExecStartClassID  = '',  @O_cExecEndClassID  = '',  @O_cExecStartSalesPersonID = '',  @O_cExecEndSalesPersonID = '',  @O_cExecStartSalesTerritory = '',  @O_cExecEndSalesTerritory = '',  @O_cExecStartShortName  = '',  @O_cExecEndShortName  = '',  @O_cExecStartState  = '',  @O_cExecEndState  = '',  @O_cExecStartZipCode  = '',  @O_cExecEndZipCode  = '',  @O_cExecStartPhoneNumber = '',  @O_cExecEndPhoneNumber  = '',  @O_cExecStartUserDefined     = '',  @O_cExecEndUserDefined  = ''  while @tLoopControl is NULL begin  select @tLoopControl = 1   if @I_cStartCustomerNumber is NULL or  @I_cEndCustomerNumber is NULL or  @I_cStartCustomerName is NULL or  @I_cEndCustomerName is NULL or  @I_cStartClassID                is NULL or  @I_cEndClassID is NULL or  @I_cStartSalesPersonID is NULL or  @I_cEndSalesPersonID is NULL or  @I_cStartSalesTerritory is NULL or  @I_cEndSalesTerritory is NULL or  @I_cStartShortName is NULL or  @I_cEndShortName is NULL or  @I_cStartState is NULL or  @I_cEndState is NULL or  @I_cStartZipCode is NULL or  @I_cEndZipCode is NULL or  @I_cStartPhoneNumber is NULL or  @I_cEndPhoneNumber is NULL or  @I_cStartUserDefined     is NULL or  @I_cEndUserDefined              is NULL  begin  select @O_iErrorState = 20970  break  end    Exec @iStatus = smFormatStringsForExecs  @I_cStartCustomerNumber,  @cTEST output,  @O_iErrorState output  select @O_cExecStartCustomerNumber = @cTEST   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndCustomerNumber,  @O_cExecEndCustomerNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartCustomerName,  @O_cExecStartCustomerName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndCustomerName,  @O_cExecEndCustomerName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartClassID,  @O_cExecStartClassID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndClassID,  @O_cExecEndClassID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartSalesPersonID,  @O_cExecStartSalesPersonID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndSalesPersonID,  @O_cExecEndSalesPersonID output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartSalesTerritory,  @O_cExecStartSalesTerritory output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndSalesTerritory,  @O_cExecEndSalesTerritory output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartShortName,  @O_cExecStartShortName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndShortName,  @O_cExecEndShortName output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartState,  @O_cExecStartState output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndState,  @O_cExecEndState output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartZipCode,  @O_cExecStartZipCode output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndZipCode,  @O_cExecEndZipCode output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartPhoneNumber,  @O_cExecStartPhoneNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndPhoneNumber,  @O_cExecEndPhoneNumber output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cStartUserDefined,  @O_cExecStartUserDefined output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   Exec @iStatus = smFormatStringsForExecs  @I_cEndUserDefined,  @O_cExecEndUserDefined output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break  end   return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[rmHATBFormatStringsForExecs] TO [DYNGRP]
GO