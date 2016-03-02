CREATE TABLE [dbo].[E1REG]
(
[PRODID] [smallint] NOT NULL,
[REGNKEYS_1] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_2] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_3] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_4] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REGNKEYS_5] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[E1REG] ADD CONSTRAINT [PKE1REG] PRIMARY KEY NONCLUSTERED  ([PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[E1REG].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[E1REG].[REGNKEYS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[E1REG].[REGNKEYS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[E1REG].[REGNKEYS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[E1REG].[REGNKEYS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[E1REG].[REGNKEYS_5]'
GO
GRANT SELECT ON  [dbo].[E1REG] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[E1REG] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[E1REG] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[E1REG] TO [DYNGRP]
GO
