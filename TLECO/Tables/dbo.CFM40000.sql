CREATE TABLE [dbo].[CFM40000]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTATUS] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[Amount] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFM40000] ADD CONSTRAINT [CK__CFM40000__DOCDAT__4DD54A14] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[CFM40000] ADD CONSTRAINT [CK__CFM40000__DUEDAT__4EC96E4D] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[CFM40000] ADD CONSTRAINT [PKCFM40000] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1CFM40000] ON [dbo].[CFM40000] ([DUEDATE], [PONUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFM40000].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFM40000].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CFM40000].[POSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CFM40000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CFM40000].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CFM40000].[Amount]'
GO
GRANT SELECT ON  [dbo].[CFM40000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFM40000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFM40000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFM40000] TO [DYNGRP]
GO
