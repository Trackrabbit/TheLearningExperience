CREATE TABLE [dbo].[IV30101]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SQTYSYTD] [numeric] (19, 5) NOT NULL,
[SUMCSYTD] [numeric] (19, 5) NOT NULL,
[SMSLSYTD] [numeric] (19, 5) NOT NULL,
[SQTYSLYR] [numeric] (19, 5) NOT NULL,
[SUMCSLYR] [numeric] (19, 5) NOT NULL,
[SMSLSLYR] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV30101] ADD CONSTRAINT [PKIV30101] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30101].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30101].[SQTYSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30101].[SUMCSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30101].[SMSLSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30101].[SQTYSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30101].[SUMCSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30101].[SMSLSLYR]'
GO
GRANT SELECT ON  [dbo].[IV30101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV30101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV30101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV30101] TO [DYNGRP]
GO
