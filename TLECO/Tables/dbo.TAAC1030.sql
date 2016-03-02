CREATE TABLE [dbo].[TAAC1030]
(
[SENIORITY_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TAAC1030] ADD CONSTRAINT [CK__TAAC1030__CHANGE__123FE68E] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[TAAC1030] ADD CONSTRAINT [CK__TAAC1030__ENDDAT__13340AC7] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[TAAC1030] ADD CONSTRAINT [CK__TAAC1030__STRTDA__14282F00] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[TAAC1030] ADD CONSTRAINT [PKTAAC1030] PRIMARY KEY CLUSTERED  ([SENIORITY_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC1030].[SENIORITY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC1030].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TAAC1030].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TAAC1030].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC1030].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TAAC1030].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TAAC1030].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[TAAC1030] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TAAC1030] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TAAC1030] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TAAC1030] TO [DYNGRP]
GO
