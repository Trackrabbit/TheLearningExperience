CREATE TABLE [dbo].[ME240470]
(
[CMPANYID] [smallint] NOT NULL,
[MESTUBPATH] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEPDFPath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFOLDERCOMP_1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFOLDERCOMP_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFOLDERCOMP_3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFOLDERCOMP_4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFOLDERCOMP_5] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEFOLDERCOMP_6] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_NAMECOMP_1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_NAMECOMP_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_NAMECOMP_3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_NAMECOMP_4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_NAMECOMP_5] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_NAMECOMP_6] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Options_1] [tinyint] NOT NULL,
[ME_Options_2] [tinyint] NOT NULL,
[ME_Options_3] [tinyint] NOT NULL,
[ME_Options_4] [tinyint] NOT NULL,
[ME_Options_5] [tinyint] NOT NULL,
[ME_Options_6] [tinyint] NOT NULL,
[ME_Options_7] [tinyint] NOT NULL,
[ME_Options_8] [tinyint] NOT NULL,
[ME_Options_9] [tinyint] NOT NULL,
[ME_Options_10] [tinyint] NOT NULL,
[ME_Options_11] [tinyint] NOT NULL,
[ME_Options_12] [tinyint] NOT NULL,
[ME_Options_13] [tinyint] NOT NULL,
[ME_Options_14] [tinyint] NOT NULL,
[ME_Options_15] [tinyint] NOT NULL,
[ME_Options_16] [tinyint] NOT NULL,
[ME_Options_17] [tinyint] NOT NULL,
[ME_Options_18] [tinyint] NOT NULL,
[ME_Options_19] [tinyint] NOT NULL,
[ME_Options_20] [tinyint] NOT NULL,
[ME_Options_21] [tinyint] NOT NULL,
[ME_Options_22] [tinyint] NOT NULL,
[ME_Options_23] [tinyint] NOT NULL,
[ME_Options_24] [tinyint] NOT NULL,
[ME_Options_25] [tinyint] NOT NULL,
[ME_Options_26] [tinyint] NOT NULL,
[ME_Options_27] [tinyint] NOT NULL,
[ME_Options_28] [tinyint] NOT NULL,
[ME_Options_29] [tinyint] NOT NULL,
[ME_Options_30] [tinyint] NOT NULL,
[ME_Options_31] [tinyint] NOT NULL,
[ME_Options_32] [tinyint] NOT NULL,
[ME_Options_33] [tinyint] NOT NULL,
[ME_Options_34] [tinyint] NOT NULL,
[ME_Options_35] [tinyint] NOT NULL,
[ME_Options_36] [tinyint] NOT NULL,
[ME_Options_37] [tinyint] NOT NULL,
[ME_Options_38] [tinyint] NOT NULL,
[ME_Options_39] [tinyint] NOT NULL,
[ME_Options_40] [tinyint] NOT NULL,
[ME_Options_41] [tinyint] NOT NULL,
[ME_Options_42] [tinyint] NOT NULL,
[ME_Options_43] [tinyint] NOT NULL,
[ME_Options_44] [tinyint] NOT NULL,
[ME_Options_45] [tinyint] NOT NULL,
[ME_Options_46] [tinyint] NOT NULL,
[ME_Options_47] [tinyint] NOT NULL,
[ME_Options_48] [tinyint] NOT NULL,
[ME_Options_49] [tinyint] NOT NULL,
[ME_Options_50] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240470] ADD CONSTRAINT [PKME240470] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MESTUBPATH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MEPDFPath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MEFOLDERCOMP_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MEFOLDERCOMP_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MEFOLDERCOMP_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MEFOLDERCOMP_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MEFOLDERCOMP_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[MEFOLDERCOMP_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[ME_NAMECOMP_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[ME_NAMECOMP_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[ME_NAMECOMP_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[ME_NAMECOMP_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[ME_NAMECOMP_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240470].[ME_NAMECOMP_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_41]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_42]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_43]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_44]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_45]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_46]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_47]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_48]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_49]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240470].[ME_Options_50]'
GO
GRANT SELECT ON  [dbo].[ME240470] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240470] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240470] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240470] TO [DYNGRP]
GO
