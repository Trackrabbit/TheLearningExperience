CREATE TABLE [dbo].[UPRA0100]
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
[AFSMVET] [tinyint] NOT NULL,
[RECSEPVET] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__BENADJ__531985B2] CHECK ((datepart(hour,[BENADJDATE])=(0) AND datepart(minute,[BENADJDATE])=(0) AND datepart(second,[BENADJDATE])=(0) AND datepart(millisecond,[BENADJDATE])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__BENEFI__540DA9EB] CHECK ((datepart(hour,[BENEFITEXPIRE_I])=(0) AND datepart(minute,[BENEFITEXPIRE_I])=(0) AND datepart(second,[BENEFITEXPIRE_I])=(0) AND datepart(millisecond,[BENEFITEXPIRE_I])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__BRTHDA__5501CE24] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__CHANGE__55F5F25D] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__DATEOF__56EA1696] CHECK ((datepart(hour,[DATEOFLASTREVIEW_I])=(0) AND datepart(minute,[DATEOFLASTREVIEW_I])=(0) AND datepart(second,[DATEOFLASTREVIEW_I])=(0) AND datepart(millisecond,[DATEOFLASTREVIEW_I])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__DATEOF__57DE3ACF] CHECK ((datepart(hour,[DATEOFNEXTREVIEW_I])=(0) AND datepart(minute,[DATEOFNEXTREVIEW_I])=(0) AND datepart(second,[DATEOFNEXTREVIEW_I])=(0) AND datepart(millisecond,[DATEOFNEXTREVIEW_I])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__DEMPIN__58D25F08] CHECK ((datepart(hour,[DEMPINAC])=(0) AND datepart(minute,[DEMPINAC])=(0) AND datepart(second,[DEMPINAC])=(0) AND datepart(millisecond,[DEMPINAC])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__I9RENE__59C68341] CHECK ((datepart(hour,[I9RENEW])=(0) AND datepart(minute,[I9RENEW])=(0) AND datepart(second,[I9RENEW])=(0) AND datepart(millisecond,[I9RENEW])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__LASTDA__5ABAA77A] CHECK ((datepart(hour,[LASTDAYWORKED_I])=(0) AND datepart(minute,[LASTDAYWORKED_I])=(0) AND datepart(second,[LASTDAYWORKED_I])=(0) AND datepart(millisecond,[LASTDAYWORKED_I])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__Milita__5BAECBB3] CHECK ((datepart(hour,[Military_Discharge_Date])=(0) AND datepart(minute,[Military_Discharge_Date])=(0) AND datepart(second,[Military_Discharge_Date])=(0) AND datepart(millisecond,[Military_Discharge_Date])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [CK__UPRA0100__STRTDA__5CA2EFEC] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[UPRA0100] ADD CONSTRAINT [PKUPRA0100] PRIMARY KEY NONCLUSTERED  ([EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5UPRA0100] ON [dbo].[UPRA0100] ([DEPRTMNT], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10UPRA0100] ON [dbo].[UPRA0100] ([DIVISIONCODE_I], [DEPRTMNT], [JOBTITLE], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPRA0100] ON [dbo].[UPRA0100] ([EMPLCLAS], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9UPRA0100] ON [dbo].[UPRA0100] ([EMPLOYID], [LASTNAME], [EMPLCLAS], [DEPRTMNT], [INACTIVE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPRA0100] ON [dbo].[UPRA0100] ([FRSTNAME], [LASTNAME], [MIDLNAME], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6UPRA0100] ON [dbo].[UPRA0100] ([JOBTITLE], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPRA0100] ON [dbo].[UPRA0100] ([LASTNAME], [FRSTNAME], [MIDLNAME], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12UPRA0100] ON [dbo].[UPRA0100] ([LOCATNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8UPRA0100] ON [dbo].[UPRA0100] ([SOCSCNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11UPRA0100] ON [dbo].[UPRA0100] ([SUPERVISORCODE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7UPRA0100] ON [dbo].[UPRA0100] ([WRKRCOMP], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[GENDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[ETHNORGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[Calc_Min_Wage_Bal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[SUPERVISORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[WCACFPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[WKHRPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[DEMPINAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[RSNEMPIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPRA0100].[MINETPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[ATACRVAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[VACCRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[VACCRMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[VACAPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[VACAVLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[WRNVCNFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[ATACRSTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[STMACMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[SKTMACAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[SIKTIMAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[SKTMHPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[WRNSTFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[MARITALSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[BENADJDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[LASTDAYWORKED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[BIRTHDAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[BIRTHMONTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[SPOUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[SPOUSESSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[NICKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[ALTERNATENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[HRSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[DATEOFLASTREVIEW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[DATEOFNEXTREVIEW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[BENEFITEXPIRE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[HANDICAPPED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[VETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[VIETNAMVETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[DISABLEDVETERAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[UNIONEMPLOYEE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[SMOKER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[CITIZEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[VERIFIED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[I9RENEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[Primary_Pay_Record]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPRA0100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPRA0100].[NOTEINDX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[UNIONCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[RATECLSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[FEDCLSSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[OTHERVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPRA0100].[Military_Discharge_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[EMPLSUFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPRA0100].[STATUSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[AFSMVET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPRA0100].[RECSEPVET]'
GO
GRANT SELECT ON  [dbo].[UPRA0100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPRA0100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPRA0100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPRA0100] TO [DYNGRP]
GO
