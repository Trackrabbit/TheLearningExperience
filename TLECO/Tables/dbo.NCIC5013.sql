CREATE TABLE [dbo].[NCIC5013]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[NC_Dest_IC_Company_DB] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Dest_IC_Journal_Entry] [int] NOT NULL,
[NC_Dest_IC_Sequence] [int] NOT NULL,
[NC_Dest_IC_Posted] [tinyint] NOT NULL,
[NC_Dest_IC_Account_Numbe] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Dest_IC_Account_Index] [int] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC5013] ADD CONSTRAINT [PKNCIC5013] PRIMARY KEY NONCLUSTERED  ([USERID], [JRNENTRY], [NC_Dest_IC_Company_DB], [NC_Dest_IC_Journal_Entry], [NC_Dest_IC_Sequence], [NC_Dest_IC_Account_Index]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NCIC5013] ON [dbo].[NCIC5013] ([USERID], [JRNENTRY], [NC_Dest_IC_Company_DB], [NC_Dest_IC_Journal_Entry], [NC_Dest_IC_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5013].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5013].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5013].[NC_Dest_IC_Company_DB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5013].[NC_Dest_IC_Journal_Entry]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5013].[NC_Dest_IC_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5013].[NC_Dest_IC_Posted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5013].[NC_Dest_IC_Account_Numbe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5013].[NC_Dest_IC_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5013].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC5013].[TRXAMNT]'
GO
GRANT REFERENCES ON  [dbo].[NCIC5013] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5013] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC5013] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC5013] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC5013] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5013] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC5013] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC5013] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC5013] TO [public]
GO
