CREATE TABLE [dbo].[ERB90300]
(
[Data_Connection_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Data_Connection_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SQL_View] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB90300] ADD CONSTRAINT [PKERB90300] PRIMARY KEY NONCLUSTERED  ([Data_Connection_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ERB90300] ON [dbo].[ERB90300] ([Data_Connection_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ERB90300] ON [dbo].[ERB90300] ([PRODID], [Series_Number], [Data_Connection_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ERB90300] ON [dbo].[ERB90300] ([SQL_View]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90300].[Data_Connection_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90300].[Data_Connection_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB90300].[SQL_View]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90300].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB90300].[Series_Number]'
GO
GRANT SELECT ON  [dbo].[ERB90300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB90300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB90300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB90300] TO [DYNGRP]
GO
