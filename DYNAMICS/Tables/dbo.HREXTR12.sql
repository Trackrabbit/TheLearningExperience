CREATE TABLE [dbo].[HREXTR12]
(
[EXTRACODE_I] [smallint] NOT NULL,
[LABELS_I_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_8] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_9] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_10] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_11] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_12] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_13] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_14] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_15] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_16] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_17] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_18] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_19] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_20] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_21] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_22] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_23] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_24] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABELS_I_25] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HREXTR12] ADD CONSTRAINT [PKHREXTR12] PRIMARY KEY NONCLUSTERED  ([EXTRACODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HREXTR12].[EXTRACODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREXTR12].[LABELS_I_25]'
GO
GRANT SELECT ON  [dbo].[HREXTR12] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HREXTR12] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HREXTR12] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HREXTR12] TO [DYNGRP]
GO
