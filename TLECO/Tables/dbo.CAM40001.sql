CREATE TABLE [dbo].[CAM40001]
(
[SGMTNUMB] [smallint] NOT NULL,
[CAM_Series] [smallint] NOT NULL,
[CAMActivated] [tinyint] NOT NULL,
[CAM_Distribution_Created] [tinyint] NOT NULL,
[CAM_Posted] [tinyint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSRCPX] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAM40001] ADD CONSTRAINT [PKCAM40001] PRIMARY KEY NONCLUSTERED  ([SGMTNUMB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40001].[SGMTNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40001].[CAM_Series]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40001].[CAMActivated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40001].[CAM_Distribution_Created]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40001].[CAM_Posted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40001].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40001].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40001].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40001].[TRXSRCPX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40001].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CAM40001].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[CAM40001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CAM40001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CAM40001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CAM40001] TO [DYNGRP]
GO
