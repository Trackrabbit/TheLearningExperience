SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY01500SS_2] (@CMPNYNAM char(65)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  LSTUSRED, CREATDDT, MODIFDT, CMPANYID, CMPNYNAM, TAXEXMT1, TAXEXMT2, TAXREGTN, COPTXSCH, COSTXSCH, LOCATNNM, ADRCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, COUNTY, STATE, ZIPCODE, PHONE1, PHONE2, PHONE3, FAXNUMBR, USESCRTY, UDCOSTR1, UDCOSTR2, CMPCNTRY, NOTEINDX, PPSFRNUM, PPSTAXRT, PPSVNDID, VATMODE, LOCATNID, INTERID, ACSEGSEP, SECOPTS, DisplayRegisteredPalette, Company_Options, Vets100CompanyNumber, TYPEOFBUSINESS, DUNS_Number, SICNUMBER, GOVCRPID, BRNCHNMBR, DFLTTXDTLID, PurchasesTaxDetailID, CCode, IVTRFDOCFMT, Offline_User, WORKFLOWENABLED, CrmCredentialsMethod, CrmOrganizationName, CrmServiceUrl, EnableGLReporting, EnableAAReporting, UseDateEffectiveTax, DateToUse, DEX_ROW_ID FROM .SY01500 WHERE CMPNYNAM = @CMPNYNAM ORDER BY CMPNYNAM ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01500SS_2] TO [DYNGRP]
GO