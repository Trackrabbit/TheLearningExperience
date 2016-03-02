SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_New_DocumentID]   (@header char(3),  @newcallnbr varchar(15) OUTPUT) as   declare @template char(12)  declare @newnumber varchar(15)  select @template = '000000000000'  if @header = 'RMA' begin   update SVC00999   set SVC00999.RETDOCID = Convert(char(12),(CONVERT(numeric(12,0),RETDOCID) + 1)),   @newcallnbr = RETDOCID   where SEQUENCE1 = 1  end else if @header = 'RTV' begin  update SVC00999   set SVC00999.RTV_Number = Convert(char(12),(CONVERT(numeric(12,0),RTV_Number) + 1)),   @newcallnbr = RTV_Number   where SEQUENCE1 = 1  end select @newnumber = @header + stuff(@template,12 - LEN(rtrim(@newcallnbr)) + 1,LEN(@newcallnbr),rtrim(@newcallnbr)) select @newcallnbr = @newnumber  return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_New_DocumentID] TO [DYNGRP]
GO
