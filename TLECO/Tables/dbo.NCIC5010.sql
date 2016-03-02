CREATE TABLE [dbo].[NCIC5010]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCSTATUS] [smallint] NOT NULL,
[NC_Original_IC_Missing] [tinyint] NOT NULL,
[NC_Source_IC_Missing] [tinyint] NOT NULL,
[NC_Source_IC_Posted] [tinyint] NOT NULL,
[NC_Dest_IC_Missing] [tinyint] NOT NULL,
[NC_Dest_IC_Posted] [tinyint] NOT NULL,
[NC_Marked_Gen_Source_IC] [tinyint] NOT NULL,
[NC_Marked_Gen_Dest_IC] [tinyint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[NC_Source_IC_Journal_Ent] [int] NOT NULL,
[NC_Dest_IC_Journal_Entry] [int] NOT NULL,
[NC_Dest_IC_Company_DB] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC5010] ADD CONSTRAINT [CK__NCIC5010__PSTGDA__579FDA5B] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[NCIC5010] ADD CONSTRAINT [PKNCIC5010] PRIMARY KEY NONCLUSTERED  ([USERID], [JRNENTRY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5010].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC5010].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5010].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5010].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Original_IC_Missing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Source_IC_Missing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Source_IC_Posted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Dest_IC_Missing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Dest_IC_Posted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Marked_Gen_Source_IC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Marked_Gen_Dest_IC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Source_IC_Journal_Ent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5010].[NC_Dest_IC_Journal_Entry]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5010].[NC_Dest_IC_Company_DB]'
GO
GRANT REFERENCES ON  [dbo].[NCIC5010] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC5010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC5010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC5010] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5010] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC5010] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC5010] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC5010] TO [public]
GO
