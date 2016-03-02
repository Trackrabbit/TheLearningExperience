SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetAccountLevelSecurityInfo]   @I_cCompanyID char(5)  = NULL,  @O_iRelationID          int             = NULL  output,  @O_sUserLevel           smallint        = NULL  output,  @O_iAllAccounts         int             = NULL  output,  @O_tALSRegistered tinyint  = NULL  output,  @O_iErrorState          int             = NULL  output as   declare @vUsername  varchar(255),     @MS_ITEM_1  int,    @isecurityoptions int,    @TRUE int,  @FALSE int  select  @O_iRelationID    = 0,  @O_sUserLevel     = 0,  @O_iAllAccounts   = 0,  @O_tALSRegistered = 0   select  @vUsername = '',  @MS_ITEM_1 = power(2,24),  @TRUE  = 1,  @FALSE  = 0   select @isecurityoptions = SECOPTS   from DYNAMICS..SY01500  where INTERID = @I_cCompanyID  if (@isecurityoptions & @MS_ITEM_1) = @MS_ITEM_1   begin  select @O_tALSRegistered = @TRUE  select @vUsername = system_user   select  @O_iRelationID = SY01400.RELID,  @O_iAllAccounts = SECACCS  from    SY01400  where   SY01400.USERID = @vUsername   if @@rowcount > 1   begin  select @O_iErrorState = 21038  return  end   if @O_iRelationID > 0   begin  select  @O_sUserLevel=ENTYLVL  from    ORG10000  where   ORG10000.RELID = @O_iRelationID   end  else  begin  select @O_sUserLevel = 0  end   if @O_iAllAccounts > 1   select @O_iAllAccounts = 1  end  else  begin  select @O_tALSRegistered = @FALSE  select @O_iAllAccounts = @TRUE  end   return   
GO
GRANT EXECUTE ON  [dbo].[smGetAccountLevelSecurityInfo] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[smGetAccountLevelSecurityInfo] TO [rpt_all user]
GO
