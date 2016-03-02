CREATE TABLE [dbo].[VAT10201]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TMCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSNATURE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TCC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRYORGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCDRRGM] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCTRMS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VAT10201] ADD CONSTRAINT [PKVAT10201] PRIMARY KEY NONCLUSTERED  ([VENDORID], [ADRSCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[TMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[TRANSNATURE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[TCC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[PRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[RGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[CNTRYORGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[PRCDRRGM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10201].[INCTRMS]'
GO
GRANT SELECT ON  [dbo].[VAT10201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[VAT10201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[VAT10201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[VAT10201] TO [DYNGRP]
GO
