CREATE TABLE [dbo].[HR2BEN10]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[I1_I] [smallint] NOT NULL,
[BENEFITTYPE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IINDEX_I] [smallint] NOT NULL,
[POLICYNUMBER_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GROUPNUMBER_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[BENEFITSTATUS_I] [smallint] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[OVERRIDE_I] [tinyint] NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[CHECK2_I] [tinyint] NOT NULL,
[CHECK3_I] [tinyint] NOT NULL,
[CHECK4_I] [tinyint] NOT NULL,
[CHECK5_I] [tinyint] NOT NULL,
[DATEDUE_I] [datetime] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENTSTR10_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTEMPL_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTSPOUSE_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTCHILDREN_I] [numeric] (19, 5) NOT NULL,
[BENELIGIBILEDATE_I] [datetime] NOT NULL,
[BNFENDDT] [datetime] NOT NULL,
[VARBENFT] [tinyint] NOT NULL,
[BNFTFREQ] [smallint] NOT NULL,
[COSTEMPLOYEE_I] [numeric] (19, 5) NOT NULL,
[COSTEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER1_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER2_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER3_I] [numeric] (19, 5) NOT NULL,
[I2_I] [smallint] NOT NULL,
[I3_I] [smallint] NOT NULL,
[I4_I] [smallint] NOT NULL,
[NUMBEROFCHILDREN_I] [smallint] NOT NULL,
[COSTTOTAL_I] [numeric] (19, 5) NOT NULL,
[COSTCOBRA_I] [numeric] (19, 5) NOT NULL,
[BENEFITDEDUCTIBLE_I] [numeric] (19, 5) NOT NULL,
[BNPAYPMX] [numeric] (19, 5) NOT NULL,
[BNFYRMAX] [numeric] (19, 5) NOT NULL,
[BNFLFMAX] [numeric] (19, 5) NOT NULL,
[BENEFICIARYINDEX_I] [int] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CONTRIBPRETAX_I] [numeric] (19, 5) NOT NULL,
[CONTPRETAXDLR_I] [numeric] (19, 5) NOT NULL,
[CONTRIBAFTERTAX_I] [numeric] (19, 5) NOT NULL,
[CONTAFTERTAXDLR_I] [numeric] (19, 5) NOT NULL,
[CONTRIBBONUS_I] [numeric] (19, 5) NOT NULL,
[CONTRIBBONUSDOLLAR_I] [numeric] (19, 5) NOT NULL,
[HIGHLYCOMPENSATED_I] [tinyint] NOT NULL,
[LOANACTIVE_I] [tinyint] NOT NULL,
[Benefit_Fiscal_Max] [numeric] (19, 5) NOT NULL,
[Deduction_Fiscal_Yr_Max] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2BEN10] ADD CONSTRAINT [CK__HR2BEN10__BENELI__7BFB9FB4] CHECK ((datepart(hour,[BENELIGIBILEDATE_I])=(0) AND datepart(minute,[BENELIGIBILEDATE_I])=(0) AND datepart(second,[BENELIGIBILEDATE_I])=(0) AND datepart(millisecond,[BENELIGIBILEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2BEN10] ADD CONSTRAINT [CK__HR2BEN10__BNFBEG__7CEFC3ED] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[HR2BEN10] ADD CONSTRAINT [CK__HR2BEN10__BNFEND__7DE3E826] CHECK ((datepart(hour,[BNFENDDT])=(0) AND datepart(minute,[BNFENDDT])=(0) AND datepart(second,[BNFENDDT])=(0) AND datepart(millisecond,[BNFENDDT])=(0)))
GO
ALTER TABLE [dbo].[HR2BEN10] ADD CONSTRAINT [CK__HR2BEN10__CHANGE__7ED80C5F] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2BEN10] ADD CONSTRAINT [CK__HR2BEN10__DATE1__7FCC3098] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[HR2BEN10] ADD CONSTRAINT [CK__HR2BEN10__DATEDU__00C054D1] CHECK ((datepart(hour,[DATEDUE_I])=(0) AND datepart(minute,[DATEDUE_I])=(0) AND datepart(second,[DATEDUE_I])=(0) AND datepart(millisecond,[DATEDUE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2BEN10] ADD CONSTRAINT [PKHR2BEN10] PRIMARY KEY CLUSTERED  ([EMPID_I], [BNFBEGDT], [BENEFIT], [I1_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3HR2BEN10] ON [dbo].[HR2BEN10] ([BENEFIT], [EMPID_I], [BNFBEGDT], [I1_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR2BEN10] ON [dbo].[HR2BEN10] ([BNFBEGDT], [EMPID_I], [BENEFIT], [I1_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4HR2BEN10] ON [dbo].[HR2BEN10] ([EMPID_I], [BENEFIT], [BNFBEGDT], [I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2BEN10].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[BENEFITTYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[POLICYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[GROUPNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2BEN10].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[BENEFITSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[OVERRIDE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[CHECK2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[CHECK3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[CHECK4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[CHECK5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2BEN10].[DATEDUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[COMMENTSTR10_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[LIFEAMTEMPL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[LIFEAMTSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[LIFEAMTCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2BEN10].[BENELIGIBILEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2BEN10].[BNFENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[VARBENFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[BNFTFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[COSTEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[COSTEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[COSTOTHER1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[COSTOTHER2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[COSTOTHER3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[I3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[I4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[NUMBEROFCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[COSTTOTAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[COSTCOBRA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[BENEFITDEDUCTIBLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[BNPAYPMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[BNFYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[BNFLFMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[BENEFICIARYINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN10].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2BEN10].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[CONTRIBPRETAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[CONTPRETAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[CONTRIBAFTERTAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[CONTAFTERTAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[CONTRIBBONUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[CONTRIBBONUSDOLLAR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[HIGHLYCOMPENSATED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN10].[LOANACTIVE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[Benefit_Fiscal_Max]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN10].[Deduction_Fiscal_Yr_Max]'
GO
GRANT SELECT ON  [dbo].[HR2BEN10] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2BEN10] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2BEN10] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2BEN10] TO [DYNGRP]
GO
