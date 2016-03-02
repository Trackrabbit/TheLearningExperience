CREATE TABLE [dbo].[DD010000]
(
[DOWNDAYS_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD010000] ADD CONSTRAINT [CK__DD010000__DOWNDA__511141AF] CHECK ((datepart(hour,[DOWNDAYS_I])=(0) AND datepart(minute,[DOWNDAYS_I])=(0) AND datepart(second,[DOWNDAYS_I])=(0) AND datepart(millisecond,[DOWNDAYS_I])=(0)))
GO
ALTER TABLE [dbo].[DD010000] ADD CONSTRAINT [PKDD010000] PRIMARY KEY CLUSTERED  ([DOWNDAYS_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD010000].[DOWNDAYS_I]'
GO
GRANT SELECT ON  [dbo].[DD010000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD010000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD010000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD010000] TO [DYNGRP]
GO