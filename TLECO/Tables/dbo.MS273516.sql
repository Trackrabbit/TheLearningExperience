CREATE TABLE [dbo].[MS273516]
(
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CheckbookID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Number_Days_Of_Book_] [smallint] NOT NULL,
[MSO_ExpiredBook_Batch_Na] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273516] ADD CONSTRAINT [PKMS273516] PRIMARY KEY NONCLUSTERED  ([MSO_EngineGUID], [MSO_CheckbookID], [MSO_CardName]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273516].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273516].[MSO_CardName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273516].[MSO_CheckbookID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273516].[MSO_Number_Days_Of_Book_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273516].[MSO_ExpiredBook_Batch_Na]'
GO
GRANT SELECT ON  [dbo].[MS273516] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273516] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273516] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273516] TO [DYNGRP]
GO
