CREATE TABLE [dbo].[AAG00700]
(
[aaOption] [smallint] NOT NULL,
[aaMultiLangStr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaIsOptionSet] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00700] ADD CONSTRAINT [PKAAG00700] PRIMARY KEY CLUSTERED  ([aaOption]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00700].[aaOption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00700].[aaMultiLangStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00700].[aaIsOptionSet]'
GO
GRANT SELECT ON  [dbo].[AAG00700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00700] TO [DYNGRP]
GO
