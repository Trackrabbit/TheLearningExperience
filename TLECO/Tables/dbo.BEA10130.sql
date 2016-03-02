CREATE TABLE [dbo].[BEA10130]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFITTYPE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IINDEX_I] [smallint] NOT NULL,
[BENEFITKIND_I] [smallint] NOT NULL,
[COMPLETIONSTATUS_I] [smallint] NOT NULL,
[POLICYNUMBER_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[BNFBEGDT] [datetime] NOT NULL,
[BNFENDDT] [datetime] NOT NULL,
[VARBENFT] [tinyint] NOT NULL,
[BNFTFREQ] [smallint] NOT NULL,
[COSTEMPLOYEE_I] [numeric] (19, 5) NOT NULL,
[COSTEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER1_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER2_I] [numeric] (19, 5) NOT NULL,
[I1_I] [smallint] NOT NULL,
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
[TYPEOFCODE_I] [smallint] NOT NULL,
[TIERSUSED_I] [tinyint] NOT NULL,
[MAJMEDCOVERAGE_I] [smallint] NOT NULL,
[MAXOUTOFPOCKET_I] [numeric] (19, 5) NOT NULL,
[ELIGIBILITYDATE_I] [datetime] NOT NULL,
[PRIMARYBENEFICIARY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECBENEFICIARY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNFTMTHD] [smallint] NOT NULL,
[BNFFRMLA] [smallint] NOT NULL,
[BNFPRCNT_1] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_2] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_3] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_4] [numeric] (19, 5) NOT NULL,
[BNFPRCNT_5] [numeric] (19, 5) NOT NULL,
[DEDNMTHD] [smallint] NOT NULL,
[DEDFRMLA] [smallint] NOT NULL,
[DEDNPRCT_1] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_2] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_3] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_4] [numeric] (19, 5) NOT NULL,
[DEDNPRCT_5] [numeric] (19, 5) NOT NULL,
[DEPYPRMX] [numeric] (19, 5) NOT NULL,
[DEDYRMAX] [numeric] (19, 5) NOT NULL,
[DEDLTMAX] [numeric] (19, 5) NOT NULL,
[DEDINITBAL] [numeric] (19, 5) NOT NULL,
[INACTBENEMPLOYEE] [tinyint] NOT NULL,
[INACTBENEMPLR] [tinyint] NOT NULL,
[LIFEINSURTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BEA10130] ADD CONSTRAINT [CK__BEA10130__BENELI__2DC80572] CHECK ((datepart(hour,[BENELIGIBILEDATE_I])=(0) AND datepart(minute,[BENELIGIBILEDATE_I])=(0) AND datepart(second,[BENELIGIBILEDATE_I])=(0) AND datepart(millisecond,[BENELIGIBILEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA10130] ADD CONSTRAINT [CK__BEA10130__BNFBEG__2EBC29AB] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[BEA10130] ADD CONSTRAINT [CK__BEA10130__BNFEND__2FB04DE4] CHECK ((datepart(hour,[BNFENDDT])=(0) AND datepart(minute,[BNFENDDT])=(0) AND datepart(second,[BNFENDDT])=(0) AND datepart(millisecond,[BNFENDDT])=(0)))
GO
ALTER TABLE [dbo].[BEA10130] ADD CONSTRAINT [CK__BEA10130__CHANGE__30A4721D] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA10130] ADD CONSTRAINT [CK__BEA10130__DATEDU__31989656] CHECK ((datepart(hour,[DATEDUE_I])=(0) AND datepart(minute,[DATEDUE_I])=(0) AND datepart(second,[DATEDUE_I])=(0) AND datepart(millisecond,[DATEDUE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA10130] ADD CONSTRAINT [CK__BEA10130__ELIGIB__328CBA8F] CHECK ((datepart(hour,[ELIGIBILITYDATE_I])=(0) AND datepart(minute,[ELIGIBILITYDATE_I])=(0) AND datepart(second,[ELIGIBILITYDATE_I])=(0) AND datepart(millisecond,[ELIGIBILITYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA10130] ADD CONSTRAINT [PKBEA10130] PRIMARY KEY CLUSTERED  ([EMPID_I], [BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BEA10130] ON [dbo].[BEA10130] ([BENEFIT], [EMPID_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6BEA10130] ON [dbo].[BEA10130] ([BENEFITKIND_I], [BENEFIT], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7BEA10130] ON [dbo].[BEA10130] ([BENEFITKIND_I], [COMPLETIONSTATUS_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5BEA10130] ON [dbo].[BEA10130] ([BENEFITKIND_I], [EMPID_I], [BENEFIT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BEA10130] ON [dbo].[BEA10130] ([BENEFITTYPE_I], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4BEA10130] ON [dbo].[BEA10130] ([DATEDUE_I], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[BENEFITTYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[BENEFITKIND_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[COMPLETIONSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[POLICYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[BENEFITSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[OVERRIDE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[CHECK2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[CHECK3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[CHECK4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[CHECK5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA10130].[DATEDUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[COMMENTSTR10_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[LIFEAMTEMPL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[LIFEAMTSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[LIFEAMTCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA10130].[BENELIGIBILEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA10130].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA10130].[BNFENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[VARBENFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[BNFTFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[COSTEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[COSTEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[COSTOTHER1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[COSTOTHER2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[I3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[I4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[NUMBEROFCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[COSTTOTAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[COSTCOBRA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BENEFITDEDUCTIBLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNPAYPMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNFYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNFLFMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[BENEFICIARYINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA10130].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[CONTRIBPRETAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[CONTPRETAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[CONTRIBAFTERTAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[CONTAFTERTAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[CONTRIBBONUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[CONTRIBBONUSDOLLAR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[HIGHLYCOMPENSATED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[LOANACTIVE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[TYPEOFCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[TIERSUSED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[MAJMEDCOVERAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[MAXOUTOFPOCKET_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA10130].[ELIGIBILITYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[PRIMARYBENEFICIARY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA10130].[SECBENEFICIARY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[BNFTMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[BNFFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNFPRCNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNFPRCNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNFPRCNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNFPRCNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[BNFPRCNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[DEDFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDNPRCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDNPRCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDNPRCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDNPRCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDNPRCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEPYPRMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDLTMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA10130].[DEDINITBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[INACTBENEMPLOYEE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[INACTBENEMPLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA10130].[LIFEINSURTYPE]'
GO
GRANT SELECT ON  [dbo].[BEA10130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BEA10130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BEA10130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BEA10130] TO [DYNGRP]
GO
