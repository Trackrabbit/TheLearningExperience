CREATE TABLE [dbo].[DEFLTCOA]
(
[BUSNESS1] [tinyint] NOT NULL,
[BUSNESS2] [tinyint] NOT NULL,
[BUSNESS3] [tinyint] NOT NULL,
[INDUSTYP] [smallint] NOT NULL,
[DEFCHRAC_1] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_2] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_3] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_4] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_5] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[ACCATNUM] [smallint] NOT NULL,
[TPCLBLNC] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DEFLTCOA] ADD CONSTRAINT [PKDEFLTCOA] PRIMARY KEY NONCLUSTERED  ([INDUSTYP], [DEFCHRAC_1], [DEFCHRAC_2], [DEFCHRAC_3], [DEFCHRAC_4], [DEFCHRAC_5]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[BUSNESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[BUSNESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[BUSNESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[INDUSTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DEFLTCOA].[DEFCHRAC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DEFLTCOA].[DEFCHRAC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DEFLTCOA].[DEFCHRAC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DEFLTCOA].[DEFCHRAC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DEFLTCOA].[DEFCHRAC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DEFLTCOA].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[ACCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[TPCLBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DEFLTCOA].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[DEFLTCOA] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DEFLTCOA] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DEFLTCOA] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DEFLTCOA] TO [DYNGRP]
GO
