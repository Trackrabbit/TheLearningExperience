CREATE TABLE [dbo].[ACRSTBL]
(
[ACRSTABLES] [smallint] NOT NULL,
[ACRSYEAR] [smallint] NOT NULL,
[ACRSPCT_1] [smallint] NOT NULL,
[ACRSPCT_2] [smallint] NOT NULL,
[ACRSPCT_3] [smallint] NOT NULL,
[ACRSPCT_4] [smallint] NOT NULL,
[ACRSPCT_5] [smallint] NOT NULL,
[ACRSPCT_6] [smallint] NOT NULL,
[ACRSPCT_7] [smallint] NOT NULL,
[ACRSPCT_8] [smallint] NOT NULL,
[ACRSPCT_9] [smallint] NOT NULL,
[ACRSPCT_10] [smallint] NOT NULL,
[ACRSPCT_11] [smallint] NOT NULL,
[ACRSPCT_12] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACRSTBL] ADD CONSTRAINT [PKACRSTBL] PRIMARY KEY CLUSTERED  ([ACRSTABLES], [ACRSYEAR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ACRSTBL] ON [dbo].[ACRSTBL] ([ACRSTABLES], [ACRSYEAR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSTABLES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ACRSTBL].[ACRSPCT_12]'
GO
GRANT SELECT ON  [dbo].[ACRSTBL] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ACRSTBL] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ACRSTBL] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ACRSTBL] TO [DYNGRP]
GO
