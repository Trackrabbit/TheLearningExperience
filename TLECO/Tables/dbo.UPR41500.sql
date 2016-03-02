CREATE TABLE [dbo].[UPR41500]
(
[SHFTCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHFTTYPE] [smallint] NOT NULL,
[SHFTAMT] [numeric] (19, 5) NOT NULL,
[SHFTPCT] [numeric] (19, 5) NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41500] ADD CONSTRAINT [PKUPR41500] PRIMARY KEY NONCLUSTERED  ([SHFTCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41500] ON [dbo].[UPR41500] ([DSCRIPTN], [SHFTCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41500].[SHFTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41500].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41500].[SHFTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41500].[SHFTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41500].[SHFTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41500].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41500].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[UPR41500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41500] TO [DYNGRP]
GO