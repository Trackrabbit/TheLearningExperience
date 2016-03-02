CREATE TABLE [dbo].[AAG01002]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[aaUDFID] [int] NOT NULL,
[aaUDFText] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaUDFDate] [datetime] NOT NULL,
[aaUDFNumeric] [numeric] (19, 5) NOT NULL,
[aaUDFBoolean] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG01002] ADD CONSTRAINT [CK__AAG01002__aaUDFD__09B529F1] CHECK ((datepart(hour,[aaUDFDate])=(0) AND datepart(minute,[aaUDFDate])=(0) AND datepart(second,[aaUDFDate])=(0) AND datepart(millisecond,[aaUDFDate])=(0)))
GO
ALTER TABLE [dbo].[AAG01002] ADD CONSTRAINT [PKAAG01002] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaTrxDimCodeID], [aaUDFID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG01002].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG01002].[aaTrxDimCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG01002].[aaUDFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG01002].[aaUDFText]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG01002].[aaUDFDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG01002].[aaUDFNumeric]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG01002].[aaUDFBoolean]'
GO
GRANT SELECT ON  [dbo].[AAG01002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG01002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG01002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG01002] TO [DYNGRP]
GO
