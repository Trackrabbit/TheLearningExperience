CREATE TABLE [dbo].[AHR2IN01]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYNUMBER_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCIDENTDATE_I] [datetime] NOT NULL,
[INCIDENTTIME_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTIFYDATE_I] [datetime] NOT NULL,
[GBILLINJ_I] [smallint] NOT NULL,
[EMPLOYEEDIEDCB_I] [tinyint] NOT NULL,
[OSHARECORDABLE_I] [tinyint] NOT NULL,
[O7S_I] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYTYPE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYBODYPART_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYOBJECTCAUSIN_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYLOCATION_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ONSITECB_I] [tinyint] NOT NULL,
[INJURYTASK_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERSONNOTIFIED_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WITNESSNAME_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WITNESSADDRESS_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WITNESSPHONE_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEARRIVED_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEOFDEATH_I] [datetime] NOT NULL,
[DATERETURN_I] [datetime] NOT NULL,
[HOSPITALIZEDCB_I] [tinyint] NOT NULL,
[OUTPATIENT_I] [tinyint] NOT NULL,
[EMERGENCYROOM_I] [tinyint] NOT NULL,
[INHOUSETREATMENT_I] [tinyint] NOT NULL,
[FIRSTAID_I] [tinyint] NOT NULL,
[SAFEGUARDSPROVDCB_I] [tinyint] NOT NULL,
[SAFEGUARDSUSEDCB_I] [tinyint] NOT NULL,
[SAFEGUARDDESCRIPT_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FIRSTAIDDATE_I] [datetime] NOT NULL,
[FIRSTAIDNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FIRSTAIDDESCRIPT_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYDOCTOR_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYDOCTORPHONE_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYDOCTORSPECIA_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYDOCTORDATEFI_I] [datetime] NOT NULL,
[INJURYDOCTORTREATM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYHOSPITAL_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJURYHOSPITALPHON_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INJHOSPLENGTHOFSTA_I] [smallint] NOT NULL,
[INJURYHOSPITALDATE_I] [datetime] NOT NULL,
[INJURYHOSPITALTREA_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLAIMNUMBER_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEFILED_I] [datetime] NOT NULL,
[DATECLOSED_I] [datetime] NOT NULL,
[DAYSMISSED_I] [numeric] (19, 5) NOT NULL,
[DAYSRESTRICTED_I] [numeric] (19, 5) NOT NULL,
[DOLLARTIMELOST_I] [numeric] (19, 5) NOT NULL,
[DOLLARMEDICALCOST_I] [numeric] (19, 5) NOT NULL,
[INJURYCAUSE_I] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX2_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX3_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX4_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX5_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX6_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__CHANGE__012A6925] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__DATECL__021E8D5E] CHECK ((datepart(hour,[DATECLOSED_I])=(0) AND datepart(minute,[DATECLOSED_I])=(0) AND datepart(second,[DATECLOSED_I])=(0) AND datepart(millisecond,[DATECLOSED_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__DATEFI__0312B197] CHECK ((datepart(hour,[DATEFILED_I])=(0) AND datepart(minute,[DATEFILED_I])=(0) AND datepart(second,[DATEFILED_I])=(0) AND datepart(millisecond,[DATEFILED_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__DATEOF__0406D5D0] CHECK ((datepart(hour,[DATEOFDEATH_I])=(0) AND datepart(minute,[DATEOFDEATH_I])=(0) AND datepart(second,[DATEOFDEATH_I])=(0) AND datepart(millisecond,[DATEOFDEATH_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__DATERE__04FAFA09] CHECK ((datepart(hour,[DATERETURN_I])=(0) AND datepart(minute,[DATERETURN_I])=(0) AND datepart(second,[DATERETURN_I])=(0) AND datepart(millisecond,[DATERETURN_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__FIRSTA__05EF1E42] CHECK ((datepart(hour,[FIRSTAIDDATE_I])=(0) AND datepart(minute,[FIRSTAIDDATE_I])=(0) AND datepart(second,[FIRSTAIDDATE_I])=(0) AND datepart(millisecond,[FIRSTAIDDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__INCIDE__06E3427B] CHECK ((datepart(hour,[INCIDENTDATE_I])=(0) AND datepart(minute,[INCIDENTDATE_I])=(0) AND datepart(second,[INCIDENTDATE_I])=(0) AND datepart(millisecond,[INCIDENTDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__INJURY__07D766B4] CHECK ((datepart(hour,[INJURYDOCTORDATEFI_I])=(0) AND datepart(minute,[INJURYDOCTORDATEFI_I])=(0) AND datepart(second,[INJURYDOCTORDATEFI_I])=(0) AND datepart(millisecond,[INJURYDOCTORDATEFI_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__INJURY__08CB8AED] CHECK ((datepart(hour,[INJURYHOSPITALDATE_I])=(0) AND datepart(minute,[INJURYHOSPITALDATE_I])=(0) AND datepart(second,[INJURYHOSPITALDATE_I])=(0) AND datepart(millisecond,[INJURYHOSPITALDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [CK__AHR2IN01__NOTIFY__09BFAF26] CHECK ((datepart(hour,[NOTIFYDATE_I])=(0) AND datepart(minute,[NOTIFYDATE_I])=(0) AND datepart(second,[NOTIFYDATE_I])=(0) AND datepart(millisecond,[NOTIFYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2IN01] ADD CONSTRAINT [PKAHR2IN01] PRIMARY KEY CLUSTERED  ([INJURYNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AHR2IN01] ON [dbo].[AHR2IN01] ([INCIDENTDATE_I], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AHR2IN01] ON [dbo].[AHR2IN01] ([INCIDENTDATE_I], [INJURYNUMBER_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5AHR2IN01] ON [dbo].[AHR2IN01] ([INJURYTYPE_I], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[INCIDENTDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INCIDENTTIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[NOTIFYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[GBILLINJ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[EMPLOYEEDIEDCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[OSHARECORDABLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[O7S_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYTYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYBODYPART_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYOBJECTCAUSIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYLOCATION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[ONSITECB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYTASK_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[PERSONNOTIFIED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[WITNESSNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[WITNESSADDRESS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[WITNESSPHONE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[TIMEARRIVED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[DATEOFDEATH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[DATERETURN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[HOSPITALIZEDCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[OUTPATIENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[EMERGENCYROOM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[INHOUSETREATMENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[FIRSTAID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[SAFEGUARDSPROVDCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[SAFEGUARDSUSEDCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[SAFEGUARDDESCRIPT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[FIRSTAIDDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[FIRSTAIDNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[FIRSTAIDDESCRIPT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYDOCTOR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYDOCTORPHONE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYDOCTORSPECIA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[INJURYDOCTORDATEFI_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYDOCTORTREATM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYHOSPITAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYHOSPITALPHON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2IN01].[INJHOSPLENGTHOFSTA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[INJURYHOSPITALDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYHOSPITALTREA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[CLAIMNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[DATEFILED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[DATECLOSED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[DAYSMISSED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[DAYSRESTRICTED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[DOLLARTIMELOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[DOLLARMEDICALCOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[INJURYCAUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2IN01].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2IN01].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[NOTESINDEX2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[NOTESINDEX3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[NOTESINDEX4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[NOTESINDEX5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2IN01].[NOTESINDEX6_I]'
GO
GRANT SELECT ON  [dbo].[AHR2IN01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2IN01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2IN01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2IN01] TO [DYNGRP]
GO
