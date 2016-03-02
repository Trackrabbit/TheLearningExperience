CREATE TABLE [dbo].[NCIC1009]
(
[NC_Trigger_Account_Index] [int] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NC_Post_IC_TRX_1] [tinyint] NOT NULL,
[NC_Post_IC_TRX_2] [tinyint] NOT NULL,
[NC_Post_IC_TRX_3] [tinyint] NOT NULL,
[NC_Post_IC_TRX_4] [tinyint] NOT NULL,
[NC_Post_IC_TRX_5] [tinyint] NOT NULL,
[NC_SpareBools_1] [tinyint] NOT NULL,
[NC_SpareBools_2] [tinyint] NOT NULL,
[NC_SpareBools_3] [tinyint] NOT NULL,
[NC_SpareBools_4] [tinyint] NOT NULL,
[NC_SpareBools_5] [tinyint] NOT NULL,
[NC_SpareInts_1] [smallint] NOT NULL,
[NC_SpareInts_2] [smallint] NOT NULL,
[NC_SpareInts_3] [smallint] NOT NULL,
[NC_SpareInts_4] [smallint] NOT NULL,
[NC_SpareInts_5] [smallint] NOT NULL,
[NC_SpareInts_6] [smallint] NOT NULL,
[NC_SpareInts_7] [smallint] NOT NULL,
[NC_SpareInts_8] [smallint] NOT NULL,
[NC_SpareInts_9] [smallint] NOT NULL,
[NC_SpareInts_10] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC1009] ADD CONSTRAINT [PKNCIC1009] PRIMARY KEY CLUSTERED  ([NC_Trigger_Account_Index], [SOURCDOC]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_Trigger_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC1009].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_Post_IC_TRX_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_Post_IC_TRX_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_Post_IC_TRX_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_Post_IC_TRX_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_Post_IC_TRX_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareBools_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareBools_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareBools_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareBools_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareBools_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC1009].[NC_SpareInts_10]'
GO
GRANT REFERENCES ON  [dbo].[NCIC1009] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC1009] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC1009] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC1009] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC1009] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC1009] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC1009] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC1009] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC1009] TO [public]
GO
