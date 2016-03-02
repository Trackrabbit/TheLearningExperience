SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[icpmVerifyAccessToTrx]   @I_cVoucherNumber char(21) = NULL,  @I_sControlType smallint = NULL,  @I_cUserID char(15) = NULL,   @I_cOrigICID char(5)  = NULL,  @O_tUserHasAccess int             = NULL  output,  @O_iErrorState          int             = NULL  output  as   declare  @TRUE tinyint,  @FALSE              tinyint  select  @O_tUserHasAccess = 0,   @O_iErrorState      = 0   if  @I_cVoucherNumber is NULL or   @I_sControlType is NULL or   @I_cOrigICID is NULL or  @I_cUserID is NULL begin  select @O_iErrorState = 21008  return end   select  @TRUE  = 1,  @FALSE  = 0   create table #TrxCompany (  IntercompanyID char(5)  not null,  CompanyID smallint  not null,  UserAccess tinyint not null)  insert into  #TrxCompany   (IntercompanyID,   CompanyID,   UserAccess)   (select distinct   dist.INTERID,   0,   0  from   PM10100 dist   where   dist.VCHRNMBR = @I_cVoucherNumber   and  dist.CNTRLTYP = @I_sControlType  and dist.INTERID <> @I_cOrigICID)   if @@rowcount = 0  begin  select @O_tUserHasAccess = @TRUE  drop table #TrxCompany   return end   update   #TrxCompany  set  CompanyID  = isnull(cm.CMPANYID,0)  from   DYNAMICS.dbo.SY01500 cm with (NOLOCK)  where   #TrxCompany.IntercompanyID = cm.INTERID  update   #TrxCompany set   UserAccess = 1  where exists  (select 1   from   DYNAMICS.dbo.SY60100 ua with (NOLOCK)   where   #TrxCompany.CompanyID = ua.CMPANYID   and @I_cUserID = ua.USERID)  select  @O_tUserHasAccess = @TRUE  where   not exists (   select  1  from  #TrxCompany  where  UserAccess = 0)  drop table #TrxCompany return    
GO
GRANT EXECUTE ON  [dbo].[icpmVerifyAccessToTrx] TO [DYNGRP]
GO
