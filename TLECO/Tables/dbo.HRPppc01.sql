CREATE TABLE [dbo].[HRPppc01]
(
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TABLE_I] [smallint] NOT NULL,
[ROW_I] [smallint] NOT NULL,
[COL_I] [smallint] NOT NULL,
[ROWMED_I] [smallint] NOT NULL,
[COLMED_I] [smallint] NOT NULL,
[ROWHIGH_I] [smallint] NOT NULL,
[COLHIGH_I] [smallint] NOT NULL,
[COMPENSATIONPERIOD_I] [smallint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPppc01] ADD CONSTRAINT [CK__HRPppc01__CHANGE__528F75CD] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRPppc01] ADD CONSTRAINT [PKHRPppc01] PRIMARY KEY CLUSTERED  ([POSITIONCODE_I], [PAYRCORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRPppc01] ON [dbo].[HRPppc01] ([PAYRCORD], [POSITIONCODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3HRPppc01] ON [dbo].[HRPppc01] ([TABLE_I], [POSITIONCODE_I], [PAYRCORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPppc01].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPppc01].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[TABLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[ROW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[COL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[ROWMED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[COLMED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[ROWHIGH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[COLHIGH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPppc01].[COMPENSATIONPERIOD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPppc01].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPppc01].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRPppc01].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HRPppc01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPppc01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPppc01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPppc01] TO [DYNGRP]
GO
