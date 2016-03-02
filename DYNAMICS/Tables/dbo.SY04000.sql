CREATE TABLE [dbo].[SY04000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRRPTFAR_1] [tinyint] NOT NULL,
[PRRPTFAR_2] [tinyint] NOT NULL,
[PRRPTFAR_3] [tinyint] NOT NULL,
[PRRPTFAR_4] [tinyint] NOT NULL,
[PRRPTFAR_5] [tinyint] NOT NULL,
[PRRPTFAR_6] [tinyint] NOT NULL,
[PRTSCRAR_1] [tinyint] NOT NULL,
[PRTSCRAR_2] [tinyint] NOT NULL,
[PRTSCRAR_3] [tinyint] NOT NULL,
[PRTSCRAR_4] [tinyint] NOT NULL,
[PRTSCRAR_5] [tinyint] NOT NULL,
[PRTSCRAR_6] [tinyint] NOT NULL,
[PRTPRARR_1] [tinyint] NOT NULL,
[PRTPRARR_2] [tinyint] NOT NULL,
[PRTPRARR_3] [tinyint] NOT NULL,
[PRTPRARR_4] [tinyint] NOT NULL,
[PRTPRARR_5] [tinyint] NOT NULL,
[PRTPRARR_6] [tinyint] NOT NULL,
[EXPTFTAR_1] [smallint] NOT NULL,
[EXPTFTAR_2] [smallint] NOT NULL,
[EXPTFTAR_3] [smallint] NOT NULL,
[EXPTFTAR_4] [smallint] NOT NULL,
[EXPTFTAR_5] [smallint] NOT NULL,
[EXPTFTAR_6] [smallint] NOT NULL,
[FEXPNMAR_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEXPNMAR_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEXPNMAR_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEXPNMAR_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEXPNMAR_5] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEXPNMAR_6] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04000] ADD CONSTRAINT [PKSY04000] PRIMARY KEY NONCLUSTERED  ([USERID], [CMPNYNAM], [BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRRPTFAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRRPTFAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRRPTFAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRRPTFAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRRPTFAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRRPTFAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTSCRAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTSCRAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTSCRAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTSCRAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTSCRAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTSCRAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTPRARR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTPRARR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTPRARR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTPRARR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTPRARR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[PRTPRARR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[EXPTFTAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[EXPTFTAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[EXPTFTAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[EXPTFTAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[EXPTFTAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04000].[EXPTFTAR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[FEXPNMAR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[FEXPNMAR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[FEXPNMAR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[FEXPNMAR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[FEXPNMAR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04000].[FEXPNMAR_6]'
GO
GRANT SELECT ON  [dbo].[SY04000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04000] TO [DYNGRP]
GO
