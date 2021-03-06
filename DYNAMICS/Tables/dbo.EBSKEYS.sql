CREATE TABLE [dbo].[EBSKEYS]
(
[EBSKEYS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EBSPRODUCT] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EBSKEYS] ADD CONSTRAINT [PKEBSKEYS] PRIMARY KEY CLUSTERED  ([EBSPRODUCT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EBSKEYS].[EBSKEYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EBSKEYS].[EBSPRODUCT]'
GO
GRANT SELECT ON  [dbo].[EBSKEYS] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EBSKEYS] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EBSKEYS] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EBSKEYS] TO [DYNGRP]
GO
