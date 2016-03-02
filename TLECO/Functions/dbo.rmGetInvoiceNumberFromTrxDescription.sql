SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[rmGetInvoiceNumberFromTrxDescription] (  @I_cTrxSource char(13),  @I_cTrxDescr char(31),  @I_cDocNumber char(21),  @I_nLanguageID smallint ) RETURNS char(21) AS BEGIN  DECLARE  @cTrxSrc char(14),  @cInvNum char(21)  select @cTrxSrc = rtrim((select SQL_MSG from DYNAMICS.dbo.MESSAGES where Language_ID = @I_nLanguageID and MSGNUM = 8037)) select @cTrxSrc = rtrim(@cTrxSrc) + '%'  if 1 = (select 1 where @I_cTrxSource like rtrim(@cTrxSrc)) begin  if rtrim(@I_cTrxDescr) = ''  select @cInvNum = @I_cDocNumber  else  select @cInvNum = rtrim(@I_cTrxDescr) end else  select @cInvNum = REPLICATE(' ', 21)  return @cInvNum END   
GO
GRANT EXECUTE ON  [dbo].[rmGetInvoiceNumberFromTrxDescription] TO [DYNGRP]
GO
