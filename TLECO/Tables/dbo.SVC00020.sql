CREATE TABLE [dbo].[SVC00020]
(
[UserID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[period_id] [smallint] NOT NULL,
[start_date] [datetime] NOT NULL,
[end_date] [datetime] NOT NULL,
[period_name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fiscal_year] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00020] ADD CONSTRAINT [CK__SVC00020__end_da__03D16812] CHECK ((datepart(hour,[end_date])=(0) AND datepart(minute,[end_date])=(0) AND datepart(second,[end_date])=(0) AND datepart(millisecond,[end_date])=(0)))
GO
ALTER TABLE [dbo].[SVC00020] ADD CONSTRAINT [CK__SVC00020__start___04C58C4B] CHECK ((datepart(hour,[start_date])=(0) AND datepart(minute,[start_date])=(0) AND datepart(second,[start_date])=(0) AND datepart(millisecond,[start_date])=(0)))
GO
ALTER TABLE [dbo].[SVC00020] ADD CONSTRAINT [PKSVC00020] PRIMARY KEY NONCLUSTERED  ([UserID], [period_id], [fiscal_year]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00020].[UserID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00020].[period_id]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00020].[start_date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00020].[end_date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00020].[period_name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00020].[fiscal_year]'
GO
GRANT SELECT ON  [dbo].[SVC00020] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00020] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00020] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00020] TO [DYNGRP]
GO
