CREATE TABLE [dbo].[BEA21030]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDEX1] [smallint] NOT NULL,
[IINDEX_I] [smallint] NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BEA21030] ADD CONSTRAINT [CK__BEA21030__IDATE___40DAD9E6] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BEA21030] ADD CONSTRAINT [PKBEA21030] PRIMARY KEY CLUSTERED  ([EMPID_I], [INDEX1], [IINDEX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BEA21030] ON [dbo].[BEA21030] ([EMPID_I], [INDEX1], [IDATE_I], [IINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA21030].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA21030].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA21030].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BEA21030].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BEA21030].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BEA21030].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BEA21030].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[BEA21030] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BEA21030] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BEA21030] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BEA21030] TO [DYNGRP]
GO
