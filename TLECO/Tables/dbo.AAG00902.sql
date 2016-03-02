CREATE TABLE [dbo].[AAG00902]
(
[aaBudgetTreeID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[aaTrxDimParCodeID] [int] NOT NULL,
[aaCodeSequence] [int] NOT NULL,
[aaLevel] [int] NOT NULL,
[aaLvlCodeString] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00902] ADD CONSTRAINT [PKAAG00902] PRIMARY KEY NONCLUSTERED  ([aaBudgetTreeID], [aaTrxDimCodeID], [aaTrxDimParCodeID], [aaCodeSequence]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [AK2AAG00902] ON [dbo].[AAG00902] ([aaBudgetTreeID], [aaCodeSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00902].[aaBudgetTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00902].[aaTrxDimCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00902].[aaTrxDimParCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00902].[aaCodeSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00902].[aaLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00902].[aaLvlCodeString]'
GO
GRANT SELECT ON  [dbo].[AAG00902] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00902] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00902] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00902] TO [DYNGRP]
GO
