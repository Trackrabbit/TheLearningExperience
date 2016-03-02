CREATE TABLE [dbo].[SVC00999]
(
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQUIPID] [int] NOT NULL,
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quote_Contract_Number] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Template_Contract_Number] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INVDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00999] ADD CONSTRAINT [PKSVC00999] PRIMARY KEY CLUSTERED  ([SEQUENCE1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00999].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00999].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[Quote_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[Template_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[INVDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[RTV_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00999].[WORKORDNUM]'
GO
GRANT SELECT ON  [dbo].[SVC00999] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00999] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00999] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00999] TO [DYNGRP]
GO
