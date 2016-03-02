CREATE TABLE [dbo].[AAG10407]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DestinationStructure_1] [tinyint] NOT NULL,
[DestinationStructure_2] [tinyint] NOT NULL,
[DestinationStructure_3] [tinyint] NOT NULL,
[DestinationStructure_4] [tinyint] NOT NULL,
[DestinationStructure_5] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DestinationStructure_6] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DestinationStructure_7] [smallint] NOT NULL,
[DestinationStructure_8] [tinyint] NOT NULL,
[DestinationStructure_9] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DestinationStructure_10] [smallint] NOT NULL,
[DestinationStructure_11] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[aaReportName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EDITLSTSTR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNLTRXSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTASK] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaIsErrorList] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG10407] ADD CONSTRAINT [PKAAG10407] PRIMARY KEY CLUSTERED  ([USERID], [TRXBTCHSRC], [aaIsErrorList]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[DestinationStructure_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[DestinationStructure_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[DestinationStructure_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[DestinationStructure_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[aaReportName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[EDITLSTSTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[TRNLTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG10407].[PRNTASK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG10407].[aaIsErrorList]'
GO
GRANT SELECT ON  [dbo].[AAG10407] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG10407] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG10407] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG10407] TO [DYNGRP]
GO
