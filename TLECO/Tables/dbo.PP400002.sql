CREATE TABLE [dbo].[PP400002]
(
[WINTYPE] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTING] [tinyint] NOT NULL,
[TRXSOURC] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP400002] ADD CONSTRAINT [PKPP400002] PRIMARY KEY NONCLUSTERED  ([USERID], [CMPNYNAM], [BACHNUMB], [BCHSOURC], [WINTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP400002] ON [dbo].[PP400002] ([BCHSOURC], [BACHNUMB], [CMPNYNAM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PP400002] ON [dbo].[PP400002] ([BCHSOURC], [POSTING], [CMPNYNAM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400002].[WINTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400002].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400002].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400002].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400002].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400002].[POSTING]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400002].[TRXSOURC]'
GO
GRANT SELECT ON  [dbo].[PP400002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP400002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP400002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP400002] TO [DYNGRP]
GO
