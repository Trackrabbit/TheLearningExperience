CREATE TABLE [dbo].[PC40200]
(
[SETUPKEY] [smallint] NOT NULL,
[APPLYGROSS] [tinyint] NOT NULL,
[APPLYFICAME] [tinyint] NOT NULL,
[APPLYFICASE] [tinyint] NOT NULL,
[APPLYBENEXPENSE] [tinyint] NOT NULL,
[APPLYTAXBENEXP] [tinyint] NOT NULL,
[APPLYWCOMPEXP] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40200] ADD CONSTRAINT [PKPC40200] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40200].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40200].[APPLYGROSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40200].[APPLYFICAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40200].[APPLYFICASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40200].[APPLYBENEXPENSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40200].[APPLYTAXBENEXP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40200].[APPLYWCOMPEXP]'
GO
GRANT SELECT ON  [dbo].[PC40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40200] TO [DYNGRP]
GO
