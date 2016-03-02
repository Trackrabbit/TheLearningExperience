CREATE TABLE [dbo].[UPR00100]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDLNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOCSCNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[GENDER] [smallint] NOT NULL,
[ETHNORGN] [smallint] NOT NULL,
[Calc_Min_Wage_Bal] [tinyint] NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPERVISORCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCACFPAY] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[WKHRPRYR] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[DEMPINAC] [datetime] NOT NULL,
[RSNEMPIN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINETPAY] [numeric] (19, 5) NOT NULL,
[SUTASTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATACRVAC] [tinyint] NOT NULL,
[VACCRAMT] [int] NOT NULL,
[VACCRMTH] [smallint] NOT NULL,
[VACAPRYR] [int] NOT NULL,
[VACAVLBL] [int] NOT NULL,
[WRNVCNFLSBLWZR] [tinyint] NOT NULL,
[ATACRSTM] [tinyint] NOT NULL,
[STMACMTH] [smallint] NOT NULL,
[SKTMACAM] [int] NOT NULL,
[SIKTIMAV] [int] NOT NULL,
[SKTMHPYR] [int] NOT NULL,
[WRNSTFLSBLWZR] [tinyint] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYMENTTYPE] [smallint] NOT NULL,
[MARITALSTATUS] [smallint] NOT NULL,
[BENADJDATE] [datetime] NOT NULL,
[LASTDAYWORKED_I] [datetime] NOT NULL,
[BIRTHDAY] [smallint] NOT NULL,
[BIRTHMONTH] [smallint] NOT NULL,
[SPOUSE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPOUSESSN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NICKNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALTERNATENAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HRSTATUS] [smallint] NOT NULL,
[DATEOFLASTREVIEW_I] [datetime] NOT NULL,
[DATEOFNEXTREVIEW_I] [datetime] NOT NULL,
[BENEFITEXPIRE_I] [datetime] NOT NULL,
[HANDICAPPED] [tinyint] NOT NULL,
[VETERAN] [tinyint] NOT NULL,
[VIETNAMVETERAN] [tinyint] NOT NULL,
[DISABLEDVETERAN] [tinyint] NOT NULL,
[UNIONEMPLOYEE] [tinyint] NOT NULL,
[SMOKER_I] [tinyint] NOT NULL,
[CITIZEN] [tinyint] NOT NULL,
[VERIFIED] [tinyint] NOT NULL,
[I9RENEW] [datetime] NOT NULL,
[Primary_Pay_Record] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[NOTEINDX2] [numeric] (19, 5) NOT NULL,
[UNIONCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATECLSS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEDCLSSCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OTHERVET] [tinyint] NOT NULL,
[Military_Discharge_Date] [datetime] NOT NULL,
[EMPLSUFF] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATUSCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[AFSMVET] [tinyint] NOT NULL,
[RECSEPVET] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__UPR00100__DEX_RO__33738FCB] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_UPR00100U] ON [dbo].[UPR00100] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.UPR00100 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.UPR00100, inserted WHERE UPR00100.EMPLOYID = inserted.EMPLOYID END set nocount off    
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__BENADJ__2BD26E03] CHECK ((datepart(hour,[BENADJDATE])=(0) AND datepart(minute,[BENADJDATE])=(0) AND datepart(second,[BENADJDATE])=(0) AND datepart(millisecond,[BENADJDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__BENEFI__2FA2FEE7] CHECK ((datepart(hour,[BENEFITEXPIRE_I])=(0) AND datepart(minute,[BENEFITEXPIRE_I])=(0) AND datepart(second,[BENEFITEXPIRE_I])=(0) AND datepart(millisecond,[BENEFITEXPIRE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__BRTHDA__28F60158] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__CHANGE__318B4759] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__DATEOF__2DBAB675] CHECK ((datepart(hour,[DATEOFLASTREVIEW_I])=(0) AND datepart(minute,[DATEOFLASTREVIEW_I])=(0) AND datepart(second,[DATEOFLASTREVIEW_I])=(0) AND datepart(millisecond,[DATEOFLASTREVIEW_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__DATEOF__2EAEDAAE] CHECK ((datepart(hour,[DATEOFNEXTREVIEW_I])=(0) AND datepart(minute,[DATEOFNEXTREVIEW_I])=(0) AND datepart(second,[DATEOFNEXTREVIEW_I])=(0) AND datepart(millisecond,[DATEOFNEXTREVIEW_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__DEMPIN__2ADE49CA] CHECK ((datepart(hour,[DEMPINAC])=(0) AND datepart(minute,[DEMPINAC])=(0) AND datepart(second,[DEMPINAC])=(0) AND datepart(millisecond,[DEMPINAC])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__I9RENE__30972320] CHECK ((datepart(hour,[I9RENEW])=(0) AND datepart(minute,[I9RENEW])=(0) AND datepart(second,[I9RENEW])=(0) AND datepart(millisecond,[I9RENEW])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__LASTDA__2CC6923C] CHECK ((datepart(hour,[LASTDAYWORKED_I])=(0) AND datepart(minute,[LASTDAYWORKED_I])=(0) AND datepart(second,[LASTDAYWORKED_I])=(0) AND datepart(millisecond,[LASTDAYWORKED_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__Milita__327F6B92] CHECK ((datepart(hour,[Military_Discharge_Date])=(0) AND datepart(minute,[Military_Discharge_Date])=(0) AND datepart(second,[Military_Discharge_Date])=(0) AND datepart(millisecond,[Military_Discharge_Date])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [CK__UPR00100__STRTDA__29EA2591] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR00100] ADD CONSTRAINT [PKUPR00100] PRIMARY KEY NONCLUSTERED  ([EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5UPR00100] ON [dbo].[UPR00100] ([DEPRTMNT], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10UPR00100] ON [dbo].[UPR00100] ([DIVISIONCODE_I], [DEPRTMNT], [JOBTITLE], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR00100] ON [dbo].[UPR00100] ([EMPLCLAS], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9UPR00100] ON [dbo].[UPR00100] ([EMPLOYID], [LASTNAME], [EMPLCLAS], [DEPRTMNT], [INACTIVE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR00100] ON [dbo].[UPR00100] ([FRSTNAME], [LASTNAME], [MIDLNAME], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6UPR00100] ON [dbo].[UPR00100] ([JOBTITLE], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR00100] ON [dbo].[UPR00100] ([LASTNAME], [FRSTNAME], [MIDLNAME], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12UPR00100] ON [dbo].[UPR00100] ([LOCATNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8UPR00100] ON [dbo].[UPR00100] ([SOCSCNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11UPR00100] ON [dbo].[UPR00100] ([SUPERVISORCODE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13UPR00100] ON [dbo].[UPR00100] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7UPR00100] ON [dbo].[UPR00100] ([WRKRCOMP], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[GENDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[ETHNORGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[Calc_Min_Wage_Bal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[SUPERVISORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[WCACFPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[WKHRPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[DEMPINAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[RSNEMPIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00100].[MINETPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[ATACRVAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[VACCRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[VACCRMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[VACAPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[VACAVLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[WRNVCNFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[ATACRSTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[STMACMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[SKTMACAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[SIKTIMAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[SKTMHPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[WRNSTFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[MARITALSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[BENADJDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[LASTDAYWORKED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[BIRTHDAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[BIRTHMONTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[SPOUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[SPOUSESSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[NICKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[ALTERNATENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[HRSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[DATEOFLASTREVIEW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[DATEOFNEXTREVIEW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[BENEFITEXPIRE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[HANDICAPPED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[VETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[VIETNAMVETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[DISABLEDVETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[UNIONEMPLOYEE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[SMOKER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[CITIZEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[VERIFIED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[I9RENEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[Primary_Pay_Record]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00100].[NOTEINDX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[UNIONCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[RATECLSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[FEDCLSSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[OTHERVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00100].[Military_Discharge_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[EMPLSUFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[STATUSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[AFSMVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00100].[RECSEPVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00100].[USERID]'
GO
GRANT SELECT ON  [dbo].[UPR00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR00100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[UPR00100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[UPR00100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00100] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[UPR00100] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[UPR00100] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[UPR00100] TO [rpt_payroll]
GO
