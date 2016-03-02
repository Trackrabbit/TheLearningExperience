CREATE TABLE [dbo].[NCIC5555]
(
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Option_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[NC_Start_Template] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_End_Template] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC5555] ADD CONSTRAINT [PKNCIC5555] PRIMARY KEY CLUSTERED  ([RPRTNAME], [Option_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5555].[RPRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5555].[Option_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5555].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5555].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5555].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5555].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5555].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5555].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5555].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5555].[NC_Start_Template]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5555].[NC_End_Template]'
GO
GRANT REFERENCES ON  [dbo].[NCIC5555] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5555] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC5555] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC5555] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC5555] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5555] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC5555] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC5555] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC5555] TO [public]
GO
