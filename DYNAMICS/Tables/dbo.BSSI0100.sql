CREATE TABLE [dbo].[BSSI0100]
(
[SETUPKEY] [smallint] NOT NULL,
[BSSI_Registration] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Registration_Key2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Registration_Key3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Registration_Key4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Registration_Trail_] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Registration_Trail2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Registration_Trail3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Registration_Trail4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BSSI0100] ADD CONSTRAINT [PKBSSI0100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BSSI0100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration_Key2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration_Key3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration_Key4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration_Trail_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration_Trail2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration_Trail3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0100].[BSSI_Registration_Trail4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BSSI0100].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[BSSI0100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI0100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI0100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI0100] TO [DYNGRP]
GO
