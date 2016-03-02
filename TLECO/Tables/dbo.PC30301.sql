CREATE TABLE [dbo].[PC30301]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[SEQ_I] [int] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
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
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACTNUM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC30301] ADD CONSTRAINT [CK__PC30301__CHANGET__2587C52C] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[PC30301] ADD CONSTRAINT [CK__PC30301__CHANGED__2493A0F3] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[PC30301] ADD CONSTRAINT [CK__PC30301__CONTEND__267BE965] CHECK ((datepart(hour,[CONTENDDTE])=(0) AND datepart(minute,[CONTENDDTE])=(0) AND datepart(second,[CONTENDDTE])=(0) AND datepart(millisecond,[CONTENDDTE])=(0)))
GO
ALTER TABLE [dbo].[PC30301] ADD CONSTRAINT [CK__PC30301__CONTSTA__27700D9E] CHECK ((datepart(hour,[CONTSTARTDTE])=(0) AND datepart(minute,[CONTSTARTDTE])=(0) AND datepart(second,[CONTSTARTDTE])=(0) AND datepart(millisecond,[CONTSTARTDTE])=(0)))
GO
ALTER TABLE [dbo].[PC30301] ADD CONSTRAINT [CK__PC30301__CREATDD__286431D7] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[PC30301] ADD CONSTRAINT [PKPC30301] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [CHANGEDATE_I], [SEQ_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30301].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[SEQ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30301].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[ATACRSTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[ATACRVAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[BUDGETPERMSEATAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[BUDGETTEMPSEATAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[BUGETBENPERCENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[BUDGETTAXPERCENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[BUDGETBENAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[BUDGETTAXAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[Calc_Min_Wage_Bal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[WCACFPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30301].[CONTENDDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30301].[CONTSTARTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30301].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[EEOCLASS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[FLSASTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[BUDGETEDFTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[INHERITANCELOCK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[NOTEINDX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[GROSSPAYINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[BENEFITEXPINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[WCOMPTAXEXPINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[TAXBENEXPENSEINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[EMPLYRFICAMEINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[EMPLYRFICASEINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[EMPLYRFUTAINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[EMPLYRSUTAINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[POSSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[REPORTSTOPOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[REVIEWSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[STMACMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[SKTMACAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[SKTMHPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[SKILLSETNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[SUPERVISORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30301].[UNIONDUESAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[UNIONNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[VACCRMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[VACCRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[VACAPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[WRNSTFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30301].[WRNVCNFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[CHANGEREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30301].[CONTACTNUM_I]'
GO
GRANT SELECT ON  [dbo].[PC30301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC30301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC30301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC30301] TO [DYNGRP]
GO
