CREATE TABLE [dbo].[SY02300]
(
[UPSTDTFR] [smallint] NOT NULL,
[BCHEXIST] [smallint] NOT NULL,
[PTGENLED] [tinyint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[TRXSOURC] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTOGLHW] [smallint] NOT NULL,
[ALTRXPST] [tinyint] NOT NULL,
[AUTPSTGL] [tinyint] NOT NULL,
[VERBATOT] [tinyint] NOT NULL,
[VERTRX] [tinyint] NOT NULL,
[REQBAPRV] [tinyint] NOT NULL,
[PASSWORD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCMCINF] [tinyint] NOT NULL,
[Use_Account_Settings] [tinyint] NOT NULL,
[POSTINDETAIL] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY02300] ADD CONSTRAINT [PKSY02300] PRIMARY KEY NONCLUSTERED  ([SERIES], [TRXSOURC]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[UPSTDTFR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[BCHEXIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[PTGENLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02300].[TRXSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[PSTOGLHW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[ALTRXPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[AUTPSTGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[VERBATOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[VERTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[REQBAPRV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02300].[PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[INCMCINF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[Use_Account_Settings]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02300].[POSTINDETAIL]'
GO
GRANT SELECT ON  [dbo].[SY02300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY02300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY02300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY02300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY02300] TO [DYNWORKFLOWGRP]
GO
GRANT SELECT ON  [dbo].[SY02300] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY02300] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY02300] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY02300] TO [RAPIDGRP]
GO
