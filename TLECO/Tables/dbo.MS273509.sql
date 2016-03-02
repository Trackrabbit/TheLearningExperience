CREATE TABLE [dbo].[MS273509]
(
[MSO_ProgID_Prefix] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardType] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273509] ADD CONSTRAINT [PKMS273509] PRIMARY KEY NONCLUSTERED  ([MSO_ProgID_Prefix], [MSO_CardType]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273509].[MSO_ProgID_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273509].[MSO_CardType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273509].[MSO_CardName]'
GO
GRANT SELECT ON  [dbo].[MS273509] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273509] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273509] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273509] TO [DYNGRP]
GO
