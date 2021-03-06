CREATE TABLE [dbo].[TA0010]
(
[CMPANYID] [smallint] NOT NULL,
[CMPNYNAM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA0010].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TA0010].[CMPNYNAM]'
GO
GRANT REFERENCES ON  [dbo].[TA0010] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[TA0010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TA0010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TA0010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TA0010] TO [DYNGRP]
GO
