SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcUpdateContractLinesOnHold](@CONSTS smallint,  @CONTNBR char(11),  @ADRSCODE char(15),  @OnHold tinyint)  As  declare @OPTTYPE char(11) declare @SiteLNSEQNBR numeric(19,5) if @ADRSCODE > ''  begin  update SVC00601 with (rowlock)  set Credit_Hold = @OnHold where CONSTS = @CONSTS and CONTNBR = @CONTNBR and ADRSCODE = @ADRSCODE  end else  begin  update SVC00601 with (rowlock)  set Credit_Hold = @OnHold where CONSTS = @CONSTS and CONTNBR = @CONTNBR  end  return     
GO
GRANT EXECUTE ON  [dbo].[svcUpdateContractLinesOnHold] TO [DYNGRP]
GO
