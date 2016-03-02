CREATE TABLE [dbo].[HRPBEN01]
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPBEN01] ADD CONSTRAINT [CK__HRPBEN01__BENELI__3AB7EC3C] CHECK ((datepart(hour,[BENELIGIBILEDATE_I])=(0) AND datepart(minute,[BENELIGIBILEDATE_I])=(0) AND datepart(second,[BENELIGIBILEDATE_I])=(0) AND datepart(millisecond,[BENELIGIBILEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPBEN01] ADD CONSTRAINT [CK__HRPBEN01__BNFBEG__3BAC1075] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[HRPBEN01] ADD CONSTRAINT [CK__HRPBEN01__BNFEND__3CA034AE] CHECK ((datepart(hour,[BNFENDDT])=(0) AND datepart(minute,[BNFENDDT])=(0) AND datepart(second,[BNFENDDT])=(0) AND datepart(millisecond,[BNFENDDT])=(0)))
GO
ALTER TABLE [dbo].[HRPBEN01] ADD CONSTRAINT [CK__HRPBEN01__CHANGE__3D9458E7] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPBEN01] ADD CONSTRAINT [CK__HRPBEN01__DATEDU__3E887D20] CHECK ((datepart(hour,[DATEDUE_I])=(0) AND datepart(minute,[DATEDUE_I])=(0) AND datepart(second,[DATEDUE_I])=(0) AND datepart(millisecond,[DATEDUE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPBEN01] ADD CONSTRAINT [PKHRPBEN01] PRIMARY KEY CLUSTERED  ([EMPID_I], [BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRPBEN01] ON [dbo].[HRPBEN01] ([BENEFIT], [EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN01].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN01].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN01].[BENEFITTYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[BENEFITKIND_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[COMPLETIONSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN01].[POLICYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[BENEFITSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[OVERRIDE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[CHECK2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[CHECK3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[CHECK4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[CHECK5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPBEN01].[DATEDUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN01].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN01].[COMMENTSTR10_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[LIFEAMTEMPL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[LIFEAMTSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[LIFEAMTCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPBEN01].[BENELIGIBILEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPBEN01].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPBEN01].[BNFENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[VARBENFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[BNFTFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[COSTEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[COSTEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[COSTOTHER1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[COSTOTHER2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[I3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[I4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[NUMBEROFCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[COSTTOTAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[COSTCOBRA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[BENEFITDEDUCTIBLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[BNPAYPMX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[BNFYRMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[BNFLFMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[BENEFICIARYINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN01].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPBEN01].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[CONTRIBPRETAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[CONTPRETAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[CONTRIBAFTERTAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[CONTAFTERTAXDLR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[CONTRIBBONUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN01].[CONTRIBBONUSDOLLAR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[HIGHLYCOMPENSATED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[LOANACTIVE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPBEN01].[TYPEOFCODE_I]'
GO
GRANT SELECT ON  [dbo].[HRPBEN01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPBEN01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPBEN01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPBEN01] TO [DYNGRP]
GO
