CREATE TABLE [dbo].[SY01500]
(
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXREGTN] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COPTXSCH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTXSCH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRCNTCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USESCRTY] [tinyint] NOT NULL,
[UDCOSTR1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UDCOSTR2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPCNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PPSFRNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[PPSVNDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VATMODE] [tinyint] NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACSEGSEP] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECOPTS] [binary] (4) NOT NULL,
[DisplayRegisteredPalette] [tinyint] NOT NULL,
[Company_Options] [binary] (4) NOT NULL,
[Vets100CompanyNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TYPEOFBUSINESS] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUNS_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SICNUMBER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOVCRPID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRNCHNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DFLTTXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PurchasesTaxDetailID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVTRFDOCFMT] [smallint] NOT NULL,
[Offline_User] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKFLOWENABLED] [tinyint] NOT NULL,
[CrmCredentialsMethod] [smallint] NOT NULL,
[CrmOrganizationName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CrmServiceUrl] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EnableGLReporting] [tinyint] NOT NULL,
[EnableAAReporting] [tinyint] NOT NULL,
[UseDateEffectiveTax] [tinyint] NOT NULL,
[DateToUse] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01500] ADD CONSTRAINT [CK__SY01500__CREATDD__2494D40D] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY01500] ADD CONSTRAINT [CK__SY01500__MODIFDT__2588F846] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY01500] ADD CONSTRAINT [PKSY01500] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01500] ON [dbo].[SY01500] ([CMPNYNAM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY01500] ON [dbo].[SY01500] ([INTERID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01500] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01500].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01500].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[TAXREGTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[COPTXSCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[COSTXSCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[LOCATNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[ADRCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[COUNTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[USESCRTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[UDCOSTR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[UDCOSTR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[CMPCNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY01500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[PPSFRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[PPSVNDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[VATMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[ACSEGSEP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[SECOPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[DisplayRegisteredPalette]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[Company_Options]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[Vets100CompanyNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[TYPEOFBUSINESS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[DUNS_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[SICNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[GOVCRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[BRNCHNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[DFLTTXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[PurchasesTaxDetailID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[IVTRFDOCFMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[Offline_User]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[WORKFLOWENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[CrmCredentialsMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[CrmOrganizationName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01500].[CrmServiceUrl]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[EnableGLReporting]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[EnableAAReporting]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[UseDateEffectiveTax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01500].[DateToUse]'
GO
GRANT SELECT ON  [dbo].[SY01500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY01500] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY01500] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY01500] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY01500] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[SY01500] TO [rpt_all user]
GO
