CREATE TABLE [dbo].[SY01301]
(
[ParamID] [int] NOT NULL,
[Process_ID] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsMultiGroup] [tinyint] NOT NULL,
[GroupCount] [smallint] NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntegerValue] [smallint] NOT NULL,
[Array_of_Booleans_1] [tinyint] NOT NULL,
[Array_of_Booleans_2] [tinyint] NOT NULL,
[Array_of_Booleans_3] [tinyint] NOT NULL,
[Array_of_Booleans_4] [tinyint] NOT NULL,
[Array_of_Booleans_5] [tinyint] NOT NULL,
[Array_of_Booleans_6] [tinyint] NOT NULL,
[Array_of_Booleans_7] [tinyint] NOT NULL,
[Array_of_Booleans_8] [tinyint] NOT NULL,
[Array_of_Booleans_9] [tinyint] NOT NULL,
[Array_of_Booleans_10] [tinyint] NOT NULL,
[Array_of_Booleans_11] [tinyint] NOT NULL,
[Array_of_Booleans_12] [tinyint] NOT NULL,
[Array_of_Booleans_13] [tinyint] NOT NULL,
[Array_of_Booleans_14] [tinyint] NOT NULL,
[Array_of_Booleans_15] [tinyint] NOT NULL,
[GROUPBOX] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01301] ADD CONSTRAINT [PKSY01301] PRIMARY KEY NONCLUSTERED  ([ParamID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01301] ON [dbo].[SY01301] ([CMPANYID], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[ParamID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Process_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01301].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[IsMultiGroup]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[GroupCount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[PRCSSQNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY01301].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01301].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[IntegerValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[Array_of_Booleans_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[GROUPBOX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01301].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01301].[CMPNYNAM]'
GO
GRANT SELECT ON  [dbo].[SY01301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01301] TO [DYNGRP]
GO
