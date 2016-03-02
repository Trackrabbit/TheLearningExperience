CREATE TABLE [dbo].[PC40301]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[ATACRSTM] [tinyint] NOT NULL,
[ATACRVAC] [tinyint] NOT NULL,
[BUDGETPERMSEATAMT] [smallint] NOT NULL,
[BUDGETTEMPSEATAMT] [smallint] NOT NULL,
[BUGETBENPERCENT] [numeric] (19, 5) NOT NULL,
[BUDGETTAXPERCENT] [numeric] (19, 5) NOT NULL,
[BUDGETBENAMOUNT] [numeric] (19, 5) NOT NULL,
[BUDGETTAXAMOUNT] [numeric] (19, 5) NOT NULL,
[Calc_Min_Wage_Bal] [tinyint] NOT NULL,
[WCACFPAY] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[CONTENDDTE] [datetime] NOT NULL,
[CONTSTARTDTE] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EEOCLASS_I] [smallint] NOT NULL,
[EMPLCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FLSASTATUS] [smallint] NOT NULL,
[BUDGETEDFTE] [numeric] (19, 5) NOT NULL,
[INHERITANCELOCK] [tinyint] NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[NOTEINDX2] [numeric] (19, 5) NOT NULL,
[GROSSPAYINDEX] [int] NOT NULL,
[BENEFITEXPINDEX] [int] NOT NULL,
[WCOMPTAXEXPINDEX] [int] NOT NULL,
[TAXBENEXPENSEINDEX] [int] NOT NULL,
[EMPLYRFICAMEINDEX] [int] NOT NULL,
[EMPLYRFICASEINDEX] [int] NOT NULL,
[EMPLYRFUTAINDEX] [int] NOT NULL,
[EMPLYRSUTAINDEX] [int] NOT NULL,
[POSSTATUS] [smallint] NOT NULL,
[REPORTSTOPOS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REVIEWSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMACMTH] [smallint] NOT NULL,
[SKTMACAM] [int] NOT NULL,
[SKTMHPYR] [int] NOT NULL,
[SKILLSETNUMBER_I] [int] NOT NULL,
[SUPERVISORCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYMENTTYPE] [smallint] NOT NULL,
[UNIONDUESAMOUNT_I] [numeric] (19, 5) NOT NULL,
[UNIONNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VACCRMTH] [smallint] NOT NULL,
[VACCRAMT] [int] NOT NULL,
[VACAPRYR] [int] NOT NULL,
[WRNSTFLSBLWZR] [tinyint] NOT NULL,
[WRNVCNFLSBLWZR] [tinyint] NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACTNUM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40301] ADD CONSTRAINT [CK__PC40301__CHANGED__47DCDD30] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[PC40301] ADD CONSTRAINT [CK__PC40301__CONTEND__48D10169] CHECK ((datepart(hour,[CONTENDDTE])=(0) AND datepart(minute,[CONTENDDTE])=(0) AND datepart(second,[CONTENDDTE])=(0) AND datepart(millisecond,[CONTENDDTE])=(0)))
GO
ALTER TABLE [dbo].[PC40301] ADD CONSTRAINT [CK__PC40301__CONTSTA__49C525A2] CHECK ((datepart(hour,[CONTSTARTDTE])=(0) AND datepart(minute,[CONTSTARTDTE])=(0) AND datepart(second,[CONTSTARTDTE])=(0) AND datepart(millisecond,[CONTSTARTDTE])=(0)))
GO
ALTER TABLE [dbo].[PC40301] ADD CONSTRAINT [CK__PC40301__CREATDD__4AB949DB] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[PC40301] ADD CONSTRAINT [PKPC40301] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PC40301] ON [dbo].[PC40301] ([PLANCODE], [DSCRIPTN], [JOBTITLE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PC40301] ON [dbo].[PC40301] ([REVIEWSETUPCODE_I], [PLANCODE], [JOBTITLE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PC40301] ON [dbo].[PC40301] ([SKILLSETNUMBER_I], [PLANCODE], [JOBTITLE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[ATACRSTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[ATACRVAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[BUDGETPERMSEATAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[BUDGETTEMPSEATAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[BUGETBENPERCENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[BUDGETTAXPERCENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[BUDGETBENAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[BUDGETTAXAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[Calc_Min_Wage_Bal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[WCACFPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40301].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40301].[CONTENDDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40301].[CONTSTARTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40301].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[EEOCLASS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[FLSASTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[BUDGETEDFTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[INHERITANCELOCK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[NOTEINDX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[GROSSPAYINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[BENEFITEXPINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[WCOMPTAXEXPINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[TAXBENEXPENSEINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[EMPLYRFICAMEINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[EMPLYRFICASEINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[EMPLYRFUTAINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[EMPLYRSUTAINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[POSSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[REPORTSTOPOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[REVIEWSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[STMACMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[SKTMACAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[SKTMHPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[SKILLSETNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[SUPERVISORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40301].[UNIONDUESAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[UNIONNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[VACCRMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[VACCRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[VACAPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[WRNSTFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40301].[WRNVCNFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40301].[CONTACTNUM_I]'
GO
GRANT SELECT ON  [dbo].[PC40301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40301] TO [DYNGRP]
GO
