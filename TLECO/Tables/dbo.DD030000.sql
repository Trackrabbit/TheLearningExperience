CREATE TABLE [dbo].[DD030000]
(
[UPDAYS_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD030000] ADD CONSTRAINT [CK__DD030000__UPDAYS__56CA1B05] CHECK ((datepart(hour,[UPDAYS_I])=(0) AND datepart(minute,[UPDAYS_I])=(0) AND datepart(second,[UPDAYS_I])=(0) AND datepart(millisecond,[UPDAYS_I])=(0)))
GO
ALTER TABLE [dbo].[DD030000] ADD CONSTRAINT [PKDD030000] PRIMARY KEY CLUSTERED  ([UPDAYS_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD030000].[UPDAYS_I]'
GO
GRANT SELECT ON  [dbo].[DD030000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD030000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD030000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD030000] TO [DYNGRP]
GO
