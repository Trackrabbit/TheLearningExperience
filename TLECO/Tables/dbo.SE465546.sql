CREATE TABLE [dbo].[SE465546]
(
[SEOPTNME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SE_Column_Number] [smallint] NOT NULL,
[SE_Token_Position] [smallint] NOT NULL,
[SE_Token] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SE465546] ADD CONSTRAINT [PKSE465546] PRIMARY KEY CLUSTERED  ([SEOPTNME], [SE_Column_Number], [SE_Token_Position]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE465546].[SEOPTNME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE465546].[SE_Column_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE465546].[SE_Token_Position]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE465546].[SE_Token]'
GO
GRANT SELECT ON  [dbo].[SE465546] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SE465546] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SE465546] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SE465546] TO [DYNGRP]
GO
