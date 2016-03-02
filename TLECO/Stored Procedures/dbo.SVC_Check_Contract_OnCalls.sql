SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Check_Contract_OnCalls] (  @ContractType smallint,  @ContractNumber char(11),  @Line numeric(19,5),  @SRVRECTYPE smallint output,  @Call char(11) output)  as  if @Line = 0  select @SRVRECTYPE = SRVRECTYPE, @Call = CALLNBR from SVC00200  where CONSTS = @ContractType and CONTNBR =@ContractNumber  else  select @SRVRECTYPE = SRVRECTYPE, @Call = CALLNBR from SVC00200  where CONSTS = @ContractType and CONTNBR =@ContractNumber and SVC_Contract_Line_SEQ = @Line select @SRVRECTYPE = isnull(@SRVRECTYPE,0), @Call = isnull(@Call,'') return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_OnCalls] TO [DYNGRP]
GO
