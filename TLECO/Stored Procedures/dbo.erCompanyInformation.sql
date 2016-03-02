SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erCompanyInformation]  as  set nocount on select   company_id  = company.CMPANYID,  company_name  = company.CMPNYNAM,  database_name  = company.INTERID,  functional_currency_id = mc_setup.FUNLCURR from    DYNAMICS..SY01500 company,  MC40000 mc_setup  where  company.INTERID = (select db_name())   return 0    
GO
GRANT EXECUTE ON  [dbo].[erCompanyInformation] TO [DYNGRP]
GO
