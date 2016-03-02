SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmnaCheckForActivity]  @I_cParentID char(15) = NULL,  @O_cCustomerID          char(15) = NULL  output,  @O_iErrorState          int             = NULL  output as   declare @sOPEN smallint,  @sWORK smallint  select   @O_iErrorState  = 0,  @sWORK  = 1,  @sOPEN  = 2  if  @I_cParentID is NULL begin  select @O_iErrorState = 21060  return  end  set rowcount  1   select   @O_cCustomerID = RM00401.CUSTNMBR from  RM00401 with (NOLOCK),  RM00101 with (NOLOCK)  where  RM00401.CUSTNMBR = RM00101.CUSTNMBR and  (RM00401.DCSTATUS = @sOPEN or   RM00401.DCSTATUS = @sWORK) and  RM00101.CPRCSTNM = @I_cParentID  set rowcount  0  if  @O_cCustomerID  is null   select @O_cCustomerID   = ''    
GO
GRANT EXECUTE ON  [dbo].[rmnaCheckForActivity] TO [DYNGRP]
GO
