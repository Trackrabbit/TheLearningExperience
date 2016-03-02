CREATE TABLE [dbo].[HR2BEN35]
(
[I2_I] [smallint] NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[CHECK2_I] [tinyint] NOT NULL,
[MANAGER_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TITLELINE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[COMMENTS1_I] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENTS2_I] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2BEN35] ADD CONSTRAINT [CK__HR2BEN35__IDATE___15BB71B7] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2BEN35] ADD CONSTRAINT [PKHR2BEN35] PRIMARY KEY CLUSTERED  ([I2_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN35].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN35].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2BEN35].[CHECK2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN35].[MANAGER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2BEN35].[TITLELINE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2BEN35].[IDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2BEN35] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2BEN35] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2BEN35] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2BEN35] TO [DYNGRP]
GO
