CREATE TABLE [dbo].[HR2BEN36]
(
[I1_I] [smallint] NOT NULL,
[COMPLETENAME_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[MULTIPLE_I] [numeric] (19, 5) NOT NULL,
[I2_I] [smallint] NOT NULL,
[GB_I] [smallint] NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[CHECK2_I] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2BEN36] ADD CONSTRAINT [PKHR2BEN36] PRIMARY KEY CLUSTERED  ([I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN36].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN36].[COMPLETENAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN36].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN36].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2BEN36].[MULTIPLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN36].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN36].[GB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN36].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN36].[CHECK2_I]'
GO
GRANT SELECT ON  [dbo].[HR2BEN36] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2BEN36] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2BEN36] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2BEN36] TO [DYNGRP]
GO
