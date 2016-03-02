SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[rmGetSOPNumberFromTrxDescription] (  @I_cTrxSource char(13),  @I_cTrxDescr char(31),  @I_cDocNumber char(21),  @I_nLanguageID smallint ) RETURNS char(21) AS BEGIN  DECLARE  @cTrxSrc char(14),  @cSOPNum char(21)  select @cTrxSrc = rtrim((select SQL_MSG from DYNAMICS.dbo.MESSAGES where Language_ID = @I_nLanguageID and MSGNUM = 16540)) select @cTrxSrc = rtrim(@cTrxSrc) + '%'  if 1 = (select 1 where @I_cTrxSource like rtrim(@cTrxSrc)) begin  if rtrim(@I_cTrxDescr) = ''  select @cSOPNum = @I_cDocNumber  else  select @cSOPNum = rtrim(@I_cTrxDescr) end else  select @cSOPNum = REPLICATE(' ', 21)  return @cSOPNum END   
GO
GRANT EXECUTE ON  [dbo].[rmGetSOPNumberFromTrxDescription] TO [DYNGRP]
GO
