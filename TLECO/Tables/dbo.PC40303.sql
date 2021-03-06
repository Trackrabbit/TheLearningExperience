CREATE TABLE [dbo].[PC40303]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFPERMOPTION] [smallint] NOT NULL,
[DEFTEMPOPTION] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40303] ADD CONSTRAINT [PKPC40303] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40303].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40303].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40303].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40303].[DEFPERMOPTION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40303].[DEFTEMPOPTION]'
GO
GRANT SELECT ON  [dbo].[PC40303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40303] TO [DYNGRP]
GO
