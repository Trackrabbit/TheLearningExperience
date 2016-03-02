SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractRevenueGLNumber]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5),  @DEXID int  ) RETURNS  int as BEGIN declare @RevGLDocNumStr char(255), @PostedAmt numeric(19,5), @GLNumber int declare @GLPostedAmt numeric(19,5), @GLUnPostedAmt numeric(19,5) declare @iPos smallint  SELECT @RevGLDocNumStr = SourceTrxDocumentNumber, @PostedAmt = PSTDAMNT  FROM SVC00604   WHERE CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and DEX_ROW_ID = @DEXID  set @iPos = 0  select @iPos = CHARINDEX('!', @RevGLDocNumStr)  if (@iPos > 0)  begin  select @RevGLDocNumStr = ltrim(rtrim(substring(@RevGLDocNumStr, @iPos + 1, 20)))  select @iPos = CHARINDEX('!', @RevGLDocNumStr)  if @iPos > 0   select @RevGLDocNumStr = ltrim(rtrim(substring(@RevGLDocNumStr, @iPos + 1, 20)))  select @GLNumber = convert(int, @RevGLDocNumStr)  end  else  select @GLNumber = 0   RETURN (@GLNumber) END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractRevenueGLNumber] TO [DYNGRP]
GO
