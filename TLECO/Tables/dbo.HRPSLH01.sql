CREATE TABLE [dbo].[HRPSLH01]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[PAYRTAMT] [numeric] (19, 5) NOT NULL,
[PAYUNIT] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYUNPER] [smallint] NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[PAYPRPRD] [numeric] (19, 5) NOT NULL,
[ANNUALSALARY_I] [numeric] (19, 5) NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPSLH01] ADD CONSTRAINT [CK__HRPSLH01__CHANGE__66966E7A] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPSLH01] ADD CONSTRAINT [CK__HRPSLH01__EFFECT__678A92B3] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPSLH01] ADD CONSTRAINT [PKHRPSLH01] PRIMARY KEY CLUSTERED  ([EMPLOYID], [PAYRCORD], [EFFECTIVEDATE_I], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3HRPSLH01] ON [dbo].[HRPSLH01] ([EMPLOYID], [PAYRCORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRPSLH01] ON [dbo].[HRPSLH01] ([EMPLOYID], [PAYRCORD], [EFFECTIVEDATE_I], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPSLH01].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPSLH01].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPSLH01].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPSLH01].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPSLH01].[PAYRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPSLH01].[PAYUNIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPSLH01].[PAYUNPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPSLH01].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPSLH01].[PAYPRPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPSLH01].[ANNUALSALARY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPSLH01].[CHANGEREASON_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPSLH01].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPSLH01].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HRPSLH01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPSLH01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPSLH01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPSLH01] TO [DYNGRP]
GO
