CREATE TABLE [dbo].[BEA11031]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX1] [smallint] NOT NULL,
[CALENDARSTART_I] [datetime] NOT NULL,
[ABSENCESTARTDATE_I] [datetime] NOT NULL,
[ABSENCEENDDATE_I] [datetime] NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BNFENDDT] [datetime] NOT NULL,
[ESTRETURNDATE_I] [datetime] NOT NULL,
[PHYPROVNOTIFIED_I] [datetime] NOT NULL,
[LEAVEAPPROVAL_I] [tinyint] NOT NULL,
[BENEFITEXPIRE_I] [datetime] NOT NULL,
[IBENEFITFREQUENCY_I] [smallint] NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[IBENEFITYEARMAX_I] [numeric] (19, 5) NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[HOURSWORKEDPERDAY_I] [numeric] (19, 5) NOT NULL,
[TYPEOFDAY_I] [smallint] NOT NULL,
[CHECK2_I] [tinyint] NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[OLDCALENDARSTARTFMLA] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[COMMENTS_I] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__ABSENC__365D4B73] CHECK ((datepart(hour,[ABSENCEENDDATE_I])=(0) AND datepart(minute,[ABSENCEENDDATE_I])=(0) AND datepart(second,[ABSENCEENDDATE_I])=(0) AND datepart(millisecond,[ABSENCEENDDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__ABSENC__3569273A] CHECK ((datepart(hour,[ABSENCESTARTDATE_I])=(0) AND datepart(minute,[ABSENCESTARTDATE_I])=(0) AND datepart(second,[ABSENCESTARTDATE_I])=(0) AND datepart(millisecond,[ABSENCESTARTDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__BENEFI__37516FAC] CHECK ((datepart(hour,[BENEFITEXPIRE_I])=(0) AND datepart(minute,[BENEFITEXPIRE_I])=(0) AND datepart(second,[BENEFITEXPIRE_I])=(0) AND datepart(millisecond,[BENEFITEXPIRE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__BNFBEG__384593E5] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__BNFEND__3939B81E] CHECK ((datepart(hour,[BNFENDDT])=(0) AND datepart(minute,[BNFENDDT])=(0) AND datepart(second,[BNFENDDT])=(0) AND datepart(millisecond,[BNFENDDT])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__CALEND__3A2DDC57] CHECK ((datepart(hour,[CALENDARSTART_I])=(0) AND datepart(minute,[CALENDARSTART_I])=(0) AND datepart(second,[CALENDARSTART_I])=(0) AND datepart(millisecond,[CALENDARSTART_I])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__ESTRET__3B220090] CHECK ((datepart(hour,[ESTRETURNDATE_I])=(0) AND datepart(minute,[ESTRETURNDATE_I])=(0) AND datepart(second,[ESTRETURNDATE_I])=(0) AND datepart(millisecond,[ESTRETURNDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__IDATE___3C1624C9] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__OLDCAL__3D0A4902] CHECK ((datepart(hour,[OLDCALENDARSTARTFMLA])=(0) AND datepart(minute,[OLDCALENDARSTARTFMLA])=(0) AND datepart(second,[OLDCALENDARSTARTFMLA])=(0) AND datepart(millisecond,[OLDCALENDARSTARTFMLA])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [CK__BEA11031__PHYPRO__3DFE6D3B] CHECK ((datepart(hour,[PHYPROVNOTIFIED_I])=(0) AND datepart(minute,[PHYPROVNOTIFIED_I])=(0) AND datepart(second,[PHYPROVNOTIFIED_I])=(0) AND datepart(millisecond,[PHYPROVNOTIFIED_I])=(0)))
GO
ALTER TABLE [dbo].[BEA11031] ADD CONSTRAINT [PKBEA11031] PRIMARY KEY CLUSTERED  ([EMPID_I], [INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA11031].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA11031].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[CALENDARSTART_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[ABSENCESTARTDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[ABSENCEENDDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[BNFENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[ESTRETURNDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[PHYPROVNOTIFIED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA11031].[LEAVEAPPROVAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[BENEFITEXPIRE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA11031].[IBENEFITFREQUENCY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA11031].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA11031].[IBENEFITYEARMAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA11031].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA11031].[HOURSWORKEDPERDAY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA11031].[TYPEOFDAY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA11031].[CHECK2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA11031].[OLDCALENDARSTARTFMLA]'
GO
GRANT SELECT ON  [dbo].[BEA11031] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BEA11031] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BEA11031] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BEA11031] TO [DYNGRP]
GO
