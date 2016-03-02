CREATE TABLE [dbo].[AHR2AP05]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[ISEQUENCENUMBER_I] [smallint] NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WAGE_I] [numeric] (19, 5) NOT NULL,
[COMPENSATIONPERIOD_I] [smallint] NOT NULL,
[POSITION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[YEARSOFEXP_I] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2AP05] ADD CONSTRAINT [CK__AHR2AP05__CHANGE__5B85E19B] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP05] ADD CONSTRAINT [CK__AHR2AP05__ENDDAT__5C7A05D4] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP05] ADD CONSTRAINT [CK__AHR2AP05__STRTDA__5D6E2A0D] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[AHR2AP05] ADD CONSTRAINT [PKAHR2AP05] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [ISEQUENCENUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHR2AP05] ON [dbo].[AHR2AP05] ([APPLICANTNUMBER_I], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2AP05].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP05].[ISEQUENCENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP05].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2AP05].[WAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2AP05].[COMPENSATIONPERIOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP05].[POSITION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP05].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP05].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP05].[YEARSOFEXP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2AP05].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2AP05].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2AP05].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[AHR2AP05] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2AP05] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2AP05] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2AP05] TO [DYNGRP]
GO
