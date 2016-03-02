CREATE TABLE [dbo].[NCIC5012]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[NC_Source_IC_Journal_Ent] [int] NOT NULL,
[NC_Source_IC_Sequence] [int] NOT NULL,
[NC_Source_IC_Posted] [tinyint] NOT NULL,
[NC_Source_IC_Account_Ind] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC5012] ADD CONSTRAINT [PKNCIC5012] PRIMARY KEY NONCLUSTERED  ([USERID], [JRNENTRY], [NC_Source_IC_Journal_Ent], [NC_Source_IC_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5012].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5012].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5012].[NC_Source_IC_Journal_Ent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5012].[NC_Source_IC_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5012].[NC_Source_IC_Posted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5012].[NC_Source_IC_Account_Ind]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC5012].[TRXAMNT]'
GO
GRANT REFERENCES ON  [dbo].[NCIC5012] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5012] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC5012] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC5012] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC5012] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5012] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC5012] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC5012] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC5012] TO [public]
GO
