SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erAvailableCompaniesWithUserAccessFlag]   @user_id char(15)=NULL as  set nocount on  if @user_id is NULL begin  return -1 end  if @user_id not in (select USERID from SY01400) begin  return -2 end  select   company_id   = company.CMPANYID,  company_name  = company.CMPNYNAM,  database_name  = company.INTERID,  user_has_access  = isnull(accessible_companies.user_has_access, 0)  from   SY01500 company left join   ( select CMPANYID, 1 as user_has_access   from SY60100  where USERID = @user_id  ) accessible_companies on company.CMPANYID = accessible_companies.CMPANYID  where  company.CMPANYID in  (select   versions1.companyID  from  DU000020 versions1 join  DU000020 versions2 on  versions1.versionMajor = versions2.versionMajor and  versions1.versionMinor = versions2.versionMinor  where  versions2.companyID = -32767)  return 0   
GO
GRANT EXECUTE ON  [dbo].[erAvailableCompaniesWithUserAccessFlag] TO [DYNGRP]
GO
