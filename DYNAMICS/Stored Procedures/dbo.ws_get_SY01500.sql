SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_SY01500] 
( 
   @LSTUSRED   char(15) = NULL, 
   @CREATDDT   datetime = NULL, 
   @MODIFDT   datetime = NULL, 
   @CMPANYID   smallint= NULL, 
   @CMPNYNAM   char(65) = NULL, 
   @TAXEXMT1   char(25) = NULL, 
   @TAXEXMT2   char(25) = NULL, 
   @TAXREGTN   char(25) = NULL, 
   @COPTXSCH   char(15) = NULL, 
   @COSTXSCH   char(15) = NULL, 
   @LOCATNNM   char(31) = NULL, 
   @ADRCNTCT   char(31) = NULL, 
   @ADDRESS1   char(31) = NULL, 
   @ADDRESS2   char(31) = NULL, 
   @ADDRESS3   char(31) = NULL, 
   @CITY   char(31) = NULL, 
   @COUNTY   char(21) = NULL, 
   @STATE   char(29) = NULL, 
   @ZIPCODE   char(11) = NULL, 
   @PHONE1   char(21) = NULL, 
   @PHONE2   char(21) = NULL, 
   @PHONE3   char(21) = NULL, 
   @FAXNUMBR   char(21) = NULL, 
   @USESCRTY   tinyint = NULL, 
   @UDCOSTR1   char(31) = NULL, 
   @UDCOSTR2   char(31) = NULL, 
   @CMPCNTRY   char(21) = NULL, 
   @NOTEINDX   numeric = NULL, 
   @PPSFRNUM   char(25) = NULL, 
   @PPSTAXRT   smallint = NULL, 
   @PPSVNDID   char(15) = NULL, 
   @VATMODE   tinyint = NULL, 
   @LOCATNID   char(15) = NULL, 
   @INTERID   char(5) = NULL, 
   @ACSEGSEP   char(1) = NULL, 
   @SECOPTS   binary(4) = NULL, 
   @DisplayRegisteredPalette   tinyint = NULL, 
   @Company_Options   binary(4) = NULL, 
   @Vets100CompanyNumber   char(21) = NULL, 
   @TYPEOFBUSINESS   char(31) = NULL, 
   @DUNS_Number   char(21) = NULL, 
   @SICNUMBER   char(15) = NULL, 
   @GOVCRPID   char(31) = NULL, 
   @BRNCHNMBR   char(21) = NULL, 
   @DFLTTXDTLID   char(15) = NULL, 
   @PurchasesTaxDetailID   char(15) = NULL, 
   @CCode   char(7) = NULL, 
   @IVTRFDOCFMT   smallint = NULL, 
   @DEX_ROW_ID   int = NULL, 
   @RETURNVALUE INT = NULL OUT 
) 
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
SELECT  
   [LSTUSRED], 
   [CREATDDT], 
   [MODIFDT], 
   [CMPANYID], 
   [CMPNYNAM], 
   [TAXEXMT1], 
   [TAXEXMT2], 
   [TAXREGTN], 
   [COPTXSCH], 
   [COSTXSCH], 
   [LOCATNNM], 
   [ADRCNTCT], 
   [ADDRESS1], 
   [ADDRESS2], 
   [ADDRESS3], 
   [CITY], 
   [COUNTY], 
   [STATE], 
   [ZIPCODE], 
   [PHONE1], 
   [PHONE2], 
   [PHONE3], 
   [FAXNUMBR], 
   [USESCRTY], 
   [UDCOSTR1], 
   [UDCOSTR2], 
   [CMPCNTRY], 
   [NOTEINDX], 
   [PPSFRNUM], 
   [PPSTAXRT], 
   [PPSVNDID], 
   [VATMODE], 
   [LOCATNID], 
   [INTERID], 
   [ACSEGSEP], 
   [SECOPTS], 
   [DisplayRegisteredPalette], 
   [Company_Options], 
   [Vets100CompanyNumber], 
   [TYPEOFBUSINESS], 
   [DUNS_Number], 
   [SICNUMBER], 
   [GOVCRPID], 
   [BRNCHNMBR], 
   [DFLTTXDTLID], 
   [PurchasesTaxDetailID], 
   [CCode], 
   [IVTRFDOCFMT], 
   [DEX_ROW_ID] 
FROM [dbo].[SY01500] 
WHERE 
   [LSTUSRED] = case when @LSTUSRED IS NULL then [LSTUSRED] else @LSTUSRED end AND 
   [CREATDDT] = case when @CREATDDT IS NULL then [CREATDDT] else @CREATDDT end AND 
   [MODIFDT] = case when @MODIFDT IS NULL then [MODIFDT] else @MODIFDT end AND 
   [CMPANYID] = case when @CMPANYID IS NULL then [CMPANYID] else @CMPANYID end AND 
   [CMPNYNAM] = case when @CMPNYNAM IS NULL then [CMPNYNAM] else @CMPNYNAM end AND 
   [TAXEXMT1] = case when @TAXEXMT1 IS NULL then [TAXEXMT1] else @TAXEXMT1 end AND 
   [TAXEXMT2] = case when @TAXEXMT2 IS NULL then [TAXEXMT2] else @TAXEXMT2 end AND 
   [TAXREGTN] = case when @TAXREGTN IS NULL then [TAXREGTN] else @TAXREGTN end AND 
   [COPTXSCH] = case when @COPTXSCH IS NULL then [COPTXSCH] else @COPTXSCH end AND 
   [COSTXSCH] = case when @COSTXSCH IS NULL then [COSTXSCH] else @COSTXSCH end AND 
   [LOCATNNM] = case when @LOCATNNM IS NULL then [LOCATNNM] else @LOCATNNM end AND 
   [ADRCNTCT] = case when @ADRCNTCT IS NULL then [ADRCNTCT] else @ADRCNTCT end AND 
   [ADDRESS1] = case when @ADDRESS1 IS NULL then [ADDRESS1] else @ADDRESS1 end AND 
   [ADDRESS2] = case when @ADDRESS2 IS NULL then [ADDRESS2] else @ADDRESS2 end AND 
   [ADDRESS3] = case when @ADDRESS3 IS NULL then [ADDRESS3] else @ADDRESS3 end AND 
   [CITY] = case when @CITY IS NULL then [CITY] else @CITY end AND 
   [COUNTY] = case when @COUNTY IS NULL then [COUNTY] else @COUNTY end AND 
   [STATE] = case when @STATE IS NULL then [STATE] else @STATE end AND 
   [ZIPCODE] = case when @ZIPCODE IS NULL then [ZIPCODE] else @ZIPCODE end AND 
   [PHONE1] = case when @PHONE1 IS NULL then [PHONE1] else @PHONE1 end AND 
   [PHONE2] = case when @PHONE2 IS NULL then [PHONE2] else @PHONE2 end AND 
   [PHONE3] = case when @PHONE3 IS NULL then [PHONE3] else @PHONE3 end AND 
   [FAXNUMBR] = case when @FAXNUMBR IS NULL then [FAXNUMBR] else @FAXNUMBR end AND 
   [USESCRTY] = case when @USESCRTY IS NULL then [USESCRTY] else @USESCRTY end AND 
   [UDCOSTR1] = case when @UDCOSTR1 IS NULL then [UDCOSTR1] else @UDCOSTR1 end AND 
   [UDCOSTR2] = case when @UDCOSTR2 IS NULL then [UDCOSTR2] else @UDCOSTR2 end AND 
   [CMPCNTRY] = case when @CMPCNTRY IS NULL then [CMPCNTRY] else @CMPCNTRY end AND 
   [NOTEINDX] = case when @NOTEINDX IS NULL then [NOTEINDX] else @NOTEINDX end AND 
   [PPSFRNUM] = case when @PPSFRNUM IS NULL then [PPSFRNUM] else @PPSFRNUM end AND 
   [PPSTAXRT] = case when @PPSTAXRT IS NULL then [PPSTAXRT] else @PPSTAXRT end AND 
   [PPSVNDID] = case when @PPSVNDID IS NULL then [PPSVNDID] else @PPSVNDID end AND 
   [VATMODE] = case when @VATMODE IS NULL then [VATMODE] else @VATMODE end AND 
   [LOCATNID] = case when @LOCATNID IS NULL then [LOCATNID] else @LOCATNID end AND 
   [INTERID] = case when @INTERID IS NULL then [INTERID] else @INTERID end AND 
   [ACSEGSEP] = case when @ACSEGSEP IS NULL then [ACSEGSEP] else @ACSEGSEP end AND 
   [SECOPTS] = case when @SECOPTS IS NULL then [SECOPTS] else @SECOPTS end AND 
   [DisplayRegisteredPalette] = case when @DisplayRegisteredPalette IS NULL then [DisplayRegisteredPalette] else @DisplayRegisteredPalette end AND 
   [Company_Options] = case when @Company_Options IS NULL then [Company_Options] else @Company_Options end AND 
   [Vets100CompanyNumber] = case when @Vets100CompanyNumber IS NULL then [Vets100CompanyNumber] else @Vets100CompanyNumber end AND 
   [TYPEOFBUSINESS] = case when @TYPEOFBUSINESS IS NULL then [TYPEOFBUSINESS] else @TYPEOFBUSINESS end AND 
   [DUNS_Number] = case when @DUNS_Number IS NULL then [DUNS_Number] else @DUNS_Number end AND 
   [SICNUMBER] = case when @SICNUMBER IS NULL then [SICNUMBER] else @SICNUMBER end AND 
   [GOVCRPID] = case when @GOVCRPID IS NULL then [GOVCRPID] else @GOVCRPID end AND 
   [BRNCHNMBR] = case when @BRNCHNMBR IS NULL then [BRNCHNMBR] else @BRNCHNMBR end AND 
   [DFLTTXDTLID] = case when @DFLTTXDTLID IS NULL then [DFLTTXDTLID] else @DFLTTXDTLID end AND 
   [PurchasesTaxDetailID] = case when @PurchasesTaxDetailID IS NULL then [PurchasesTaxDetailID] else @PurchasesTaxDetailID end AND 
   [CCode] = case when @CCode IS NULL then [CCode] else @CCode end AND 
   [IVTRFDOCFMT] = case when @IVTRFDOCFMT IS NULL then [IVTRFDOCFMT] else @IVTRFDOCFMT end AND 
   [DEX_ROW_ID] = case when @DEX_ROW_ID IS NULL then [DEX_ROW_ID] else @DEX_ROW_ID end 
  
SELECT @ERROR_VAR = @@ERROR,@ROWCOUNT_VAR=@@ROWCOUNT 
  
IF @ERROR_VAR = 0 AND @ROWCOUNT_VAR = 1 
   BEGIN 
      SET @RETURNVALUE = 0 
   END 
ELSE 
   BEGIN 
      IF @ERROR_VAR <> 0  
         SET @RETURNVALUE = @ERROR_VAR 
      ELSE 
         SET @RETURNVALUE =  -99 -- UNEXPECTED NR OF RECORDS AFFECTED 
   END 
  
GO
GRANT EXECUTE ON  [dbo].[ws_get_SY01500] TO [DYNGRP]
GO
