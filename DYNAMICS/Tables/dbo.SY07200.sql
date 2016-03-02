CREATE TABLE [dbo].[SY07200]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[FormID] [smallint] NOT NULL,
[ListOption] [int] NOT NULL,
[ListDateRestriction] [int] NOT NULL,
[ListOption2] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07200] ADD CONSTRAINT [PKSY07200] PRIMARY KEY NONCLUSTERED  ([USERID], [DICTID], [FormID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07200].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07200].[FormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07200].[ListOption]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07200].[ListDateRestriction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07200].[ListOption2]'
GO
GRANT SELECT ON  [dbo].[SY07200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07200] TO [DYNGRP]
GO
