CREATE TABLE [dbo].[TAST0130]
(
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAACCRUE] [tinyint] NOT NULL,
[ALWTYPRSNPYRL] [tinyint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[LASTDAC] [datetime] NOT NULL,
[TASENIOR] [smallint] NOT NULL,
[USEVACATION_I] [tinyint] NOT NULL,
[DAYS_I] [smallint] NOT NULL,
[HOURS_I] [int] NOT NULL,
[TRX_I] [int] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TAST0130] ADD CONSTRAINT [CK__TAST0130__CHANGE__19E10856] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[TAST0130] ADD CONSTRAINT [CK__TAST0130__LASTDA__1AD52C8F] CHECK ((datepart(hour,[LASTDAC])=(0) AND datepart(minute,[LASTDAC])=(0) AND datepart(second,[LASTDAC])=(0) AND datepart(millisecond,[LASTDAC])=(0)))
GO
ALTER TABLE [dbo].[TAST0130] ADD CONSTRAINT [PKTAST0130] PRIMARY KEY CLUSTERED  ([COMPANYCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAST0130].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[TAACCRUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[ALWTYPRSNPYRL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TAST0130].[LASTDAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[TASENIOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[USEVACATION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[DAYS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[HOURS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAST0130].[TRX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAST0130].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TAST0130].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[TAST0130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TAST0130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TAST0130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TAST0130] TO [DYNGRP]
GO
