CREATE TABLE [dbo].[AHR2BE31]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[CHECK2_I] [tinyint] NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[COMMENTSTR10_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2BE31] ADD CONSTRAINT [CK__AHR2BE31__IDATE___61B1BDCC] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2BE31] ADD CONSTRAINT [PKAHR2BE31] PRIMARY KEY CLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2BE31].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2BE31].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2BE31].[CHECK2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2BE31].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2BE31].[COMMENTSTR10_I]'
GO
GRANT SELECT ON  [dbo].[AHR2BE31] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2BE31] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2BE31] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2BE31] TO [DYNGRP]
GO
