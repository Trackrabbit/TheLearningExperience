CREATE TABLE [dbo].[HR2APP09]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[SKILLNUMBER_I] [smallint] NOT NULL,
[POINTS_I] [smallint] NOT NULL,
[COMMENT20_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2APP09] ADD CONSTRAINT [PKHR2APP09] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [SKILLNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR2APP09] ON [dbo].[HR2APP09] ([SKILLNUMBER_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3HR2APP09] ON [dbo].[HR2APP09] ([SKILLNUMBER_I], [POINTS_I], [APPLICANTNUMBER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2APP09].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2APP09].[SKILLNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2APP09].[POINTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP09].[COMMENT20_I]'
GO
GRANT SELECT ON  [dbo].[HR2APP09] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2APP09] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2APP09] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2APP09] TO [DYNGRP]
GO
