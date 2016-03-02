CREATE TABLE [dbo].[UPR42101]
(
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[PERNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42101] ADD CONSTRAINT [CK__UPR42101__ENDDAT__2D9B5471] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR42101] ADD CONSTRAINT [CK__UPR42101__STRTDA__2E8F78AA] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR42101] ADD CONSTRAINT [PKUPR42101] PRIMARY KEY NONCLUSTERED  ([Pay_Schedule], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42101].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42101].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42101].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42101].[PERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR42101].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR42101].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[UPR42101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42101] TO [DYNGRP]
GO
