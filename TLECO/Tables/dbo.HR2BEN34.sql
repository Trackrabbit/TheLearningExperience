CREATE TABLE [dbo].[HR2BEN34]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[I1_I] [smallint] NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[I2_I] [smallint] NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[CHECK2_I] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2BEN34] ADD CONSTRAINT [PKHR2BEN34] PRIMARY KEY CLUSTERED  ([EMPID_I], [I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN34].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN34].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN34].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN34].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN34].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN34].[CHECK2_I]'
GO
GRANT SELECT ON  [dbo].[HR2BEN34] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2BEN34] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2BEN34] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2BEN34] TO [DYNGRP]
GO
