SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Generate_Page_Msg](@CallNumber char(11),  @RecType smallint, @message varchar(200) output) as  select @message = CALLNBR + ' ' + convert(varchar(2),priorityLevel) + ' ' + SRVSTAT + ' ' + substring(CUSTNAME,1,20) + ' ' + substring(CNTCPRSN,1,20) + ' ' + '(' + substring(PHONE1,1,3) + ') ' + substring(PHONE1,4,3) + '-' + substring(PHONE1,7,4) + ' ' + substring(PHONE1,11,4) + ' ' + substring(SVCDESCR,1,50) from SVC00200 where CALLNBR = @CallNumber and SRVRECTYPE = @RecType    
GO
GRANT EXECUTE ON  [dbo].[SVC_Generate_Page_Msg] TO [DYNGRP]
GO
