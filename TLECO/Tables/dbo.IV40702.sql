CREATE TABLE [dbo].[IV40702]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TMCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSNATURE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCDRRGM] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCTRMS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRYORGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV40702] ADD CONSTRAINT [PKIV40702] PRIMARY KEY NONCLUSTERED  ([LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[TMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[TRANSNATURE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[PRCDRRGM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[INCTRMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[PRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[RGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40702].[CNTRYORGN]'
GO
GRANT SELECT ON  [dbo].[IV40702] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40702] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40702] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40702] TO [DYNGRP]
GO
