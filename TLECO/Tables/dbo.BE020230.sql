CREATE TABLE [dbo].[BE020230]
(
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFITSTATUS_I] [smallint] NOT NULL,
[COMPLETIONSTATUS_I] [smallint] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[BENEFITKIND_I] [smallint] NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BNFENDDT] [datetime] NOT NULL,
[VARBENFT] [tinyint] NOT NULL,
[BNFTFREQ] [smallint] NOT NULL,
[CARRIER] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GROUPNUMBER_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORTABLEBENEFIT_I] [tinyint] NOT NULL,
[PORABLEINDEX_I] [smallint] NOT NULL,
[MAXAGEEMP_I] [smallint] NOT NULL,
[MAXAGEDEP_I] [smallint] NOT NULL,
[MAXAGESP_I] [smallint] NOT NULL,
[COSTEMPLOYEE_I] [numeric] (19, 5) NOT NULL,
[COSTEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER1_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER2_I] [numeric] (19, 5) NOT NULL,
[I1_I] [smallint] NOT NULL,
[I2_I] [smallint] NOT NULL,
[I3_I] [smallint] NOT NULL,
[I4_I] [smallint] NOT NULL,
[GB_I] [smallint] NOT NULL,
[COSTTOTAL_I] [numeric] (19, 5) NOT NULL,
[COSTCOBRA_I] [numeric] (19, 5) NOT NULL,
[BENAMOUNT_I] [numeric] (19, 5) NOT NULL,
[BENEFITDEDUCTIBLE_I] [numeric] (19, 5) NOT NULL,
[BNPAYPMX] [numeric] (19, 5) NOT NULL,
[BNFYRMAX] [numeric] (19, 5) NOT NULL,
[BNFLFMAX] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[NEAREST_I] [numeric] (19, 5) NOT NULL,
[NEARESTCHILD_I] [numeric] (19, 5) NOT NULL,
[NEARESTSPOUSE_I] [numeric] (19, 5) NOT NULL,
[NEARESTEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[PREMMETHOD_I] [smallint] NOT NULL,
[PREMIUMEMPLOYEE_I] [numeric] (19, 5) NOT NULL,
[PREMIUMSPOUSE_I] [numeric] (19, 5) NOT NULL,
[PREMIUMCHILD_I] [numeric] (19, 5) NOT NULL,
[PREMIUMEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[PREMIUMSMOKER_I] [numeric] (19, 5) NOT NULL,
[FACTOR_I] [smallint] NOT NULL,
[ROUNDUP_I] [tinyint] NOT NULL,
[PDLIFE_I] [tinyint] NOT NULL,
[CONTEMPMATCH_I] [numeric] (19, 5) NOT NULL,
[CONTRIBEMPLOYERMAX_I] [numeric] (19, 5) NOT NULL,
[MINAGE_I] [smallint] NOT NULL,
[BONUSELACTIVE_I] [tinyint] NOT NULL,
[LOANSALLOWED_I] [tinyint] NOT NULL,
[HARDSHPWITHDRAW_I] [tinyint] NOT NULL,
[TYPEOFCODE_I] [smallint] NOT NULL,
[CONTRIBDOLLAR_I] [numeric] (19, 5) NOT NULL,
[CONTRIBPERCENT_I] [numeric] (19, 5) NOT NULL,
[MAJMEDCOVERAGE_I] [smallint] NOT NULL,
[MAXOUTOFPOCKET_I] [numeric] (19, 5) NOT NULL,
[WAITINGPERIOD_I] [smallint] NOT NULL,
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
[INACTBENEMPLOYEE] [tinyint] NOT NULL,
[INACTBENEMPLR] [tinyint] NOT NULL,
[GARNISHMENT] [tinyint] NOT NULL,
[Benefit_Fiscal_Max] [numeric] (19, 5) NOT NULL,
[Deduction_Fiscal_Yr_Max] [numeric] (19, 5) NOT NULL,
[LIFEINSURTYPE] [smallint] NOT NULL,
[OfferOfCoverageCode] [smallint] NOT NULL,
[SafeHarborCode] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BE020230] ADD CONSTRAINT [CK__BE020230__BNFBEG__17D8C453] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[BE020230] ADD CONSTRAINT [CK__BE020230__BNFEND__18CCE88C] CHECK ((datepart(hour,[BNFENDDT])=(0) AND datepart(minute,[BNFENDDT])=(0) AND datepart(second,[BNFENDDT])=(0) AND datepart(millisecond,[BNFENDDT])=(0)))
GO
ALTER TABLE [dbo].[BE020230] ADD CONSTRAINT [CK__BE020230__CHANGE__19C10CC5] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BE020230] ADD CONSTRAINT [PKBE020230] PRIMARY KEY CLUSTERED  ([BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BE020230] ON [dbo].[BE020230] ([BENEFITKIND_I], [BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6BE020230] ON [dbo].[BE020230] ([BENEFITKIND_I], [COMPLETIONSTATUS_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4BE020230] ON [dbo].[BE020230] ([BNFBEGDT], [BENEFIT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5BE020230] ON [dbo].[BE020230] ([CARRIER], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BE020230] ON [dbo].[BE020230] ([DSCRIPTN], [BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE020230].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE020230].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[BENEFITSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[COMPLETIONSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[BENEFITKIND_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE020230].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE020230].[BNFENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[VARBENFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[BNFTFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE020230].[CARRIER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE020230].[GROUPNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[PORTABLEBENEFIT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[PORABLEINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[MAXAGEEMP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[MAXAGEDEP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[MAXAGESP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[COSTEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[COSTEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[COSTOTHER1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[COSTOTHER2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[I3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[I4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[GB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[COSTTOTAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[COSTCOBRA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BENAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BENEFITDEDUCTIBLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNPAYPMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNFYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNFLFMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE020230].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE020230].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[NEAREST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[NEARESTCHILD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[NEARESTSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[NEARESTEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[PREMMETHOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[PREMIUMEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[PREMIUMSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[PREMIUMCHILD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[PREMIUMEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[PREMIUMSMOKER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[FACTOR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[ROUNDUP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[PDLIFE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[CONTEMPMATCH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[CONTRIBEMPLOYERMAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[MINAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[BONUSELACTIVE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[LOANSALLOWED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[HARDSHPWITHDRAW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[TYPEOFCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[CONTRIBDOLLAR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[CONTRIBPERCENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[MAJMEDCOVERAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[MAXOUTOFPOCKET_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[WAITINGPERIOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[BNFTMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[BNFFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNFPRCNT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNFPRCNT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNFPRCNT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNFPRCNT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[BNFPRCNT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[DEDNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[DEDFRMLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEDNPRCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEDNPRCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEDNPRCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEDNPRCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEDNPRCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEPYPRMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEDYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[DEDLTMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[INACTBENEMPLOYEE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[INACTBENEMPLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[GARNISHMENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[Benefit_Fiscal_Max]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE020230].[Deduction_Fiscal_Yr_Max]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[LIFEINSURTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[OfferOfCoverageCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE020230].[SafeHarborCode]'
GO
GRANT SELECT ON  [dbo].[BE020230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BE020230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BE020230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BE020230] TO [DYNGRP]
GO
