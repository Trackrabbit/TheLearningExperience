CREATE TABLE [dbo].[TATX1030]
(
[TRX_I] [int] NOT NULL,
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[HOURS_I] [int] NOT NULL,
[HOURSAVAILABLE_I] [int] NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[ACCFLG] [tinyint] NOT NULL,
[ACCRUETIMEBENEFITS_I] [tinyint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[ATTTYP] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATTRSN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATTTRXSTATUS] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPTRNM] [int] NOT NULL,
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TATX1030] ADD CONSTRAINT [CK__TATX1030__CHANGE__3494FE92] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[TATX1030] ADD CONSTRAINT [CK__TATX1030__CHANGE__33A0DA59] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[TATX1030] ADD CONSTRAINT [CK__TATX1030__TRXDAT__358922CB] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[TATX1030] ADD CONSTRAINT [CK__TATX1030__TRXEND__367D4704] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[TATX1030] ADD CONSTRAINT [PKTATX1030] PRIMARY KEY CLUSTERED  ([TRX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7TATX1030] ON [dbo].[TATX1030] ([ATTTRXSTATUS], [BACHNUMB], [COMPTRNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8TATX1030] ON [dbo].[TATX1030] ([ATTTRXSTATUS], [CMRECNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6TATX1030] ON [dbo].[TATX1030] ([DIVISIONCODE_I], [DEPRTMNT], [EMPID_I], [TRX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4TATX1030] ON [dbo].[TATX1030] ([EMPID_I], [TRX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3TATX1030] ON [dbo].[TATX1030] ([TIMECODE_I], [EMPID_I], [TRXDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5TATX1030] ON [dbo].[TATX1030] ([TRXDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[TRX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[TIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TATX1030].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TATX1030].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[HOURS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[HOURSAVAILABLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[ACCFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[ACCRUETIMEBENEFITS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[ATTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[ATTRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[ATTTRXSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATX1030].[COMPTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TATX1030].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATX1030].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TATX1030].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TATX1030].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TATX1030].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[TATX1030] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TATX1030] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TATX1030] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TATX1030] TO [DYNGRP]
GO
