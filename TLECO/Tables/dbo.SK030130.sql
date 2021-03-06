CREATE TABLE [dbo].[SK030130]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKILLNUMBER_I] [smallint] NOT NULL,
[PARTWAGE_I] [tinyint] NOT NULL,
[EXPIREDSKILL_I] [datetime] NOT NULL,
[POINTS_I] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SK030130] ADD CONSTRAINT [CK__SK030130__EXPIRE__0A9EC4C6] CHECK ((datepart(hour,[EXPIREDSKILL_I])=(0) AND datepart(minute,[EXPIREDSKILL_I])=(0) AND datepart(second,[EXPIREDSKILL_I])=(0) AND datepart(millisecond,[EXPIREDSKILL_I])=(0)))
GO
ALTER TABLE [dbo].[SK030130] ADD CONSTRAINT [PKSK030130] PRIMARY KEY CLUSTERED  ([EMPID_I], [SKILLNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SK030130] ON [dbo].[SK030130] ([SKILLNUMBER_I], [EMPID_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SK030130] ON [dbo].[SK030130] ([SKILLNUMBER_I], [POINTS_I], [EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SK030130].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SK030130].[SKILLNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SK030130].[PARTWAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SK030130].[EXPIREDSKILL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SK030130].[POINTS_I]'
GO
GRANT SELECT ON  [dbo].[SK030130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SK030130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SK030130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SK030130] TO [DYNGRP]
GO
