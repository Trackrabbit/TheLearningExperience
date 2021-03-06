CREATE TABLE [dbo].[B2920404]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPRBCHOR] [smallint] NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2920404] ADD CONSTRAINT [PKB2920404] PRIMARY KEY NONCLUSTERED  ([UPRBCHOR], [BACHNUMB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920404].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2920404].[UPRBCHOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920404].[BCHCOMNT]'
GO
GRANT SELECT ON  [dbo].[B2920404] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2920404] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2920404] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2920404] TO [DYNGRP]
GO
