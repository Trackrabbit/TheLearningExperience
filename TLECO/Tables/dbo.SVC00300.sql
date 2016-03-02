CREATE TABLE [dbo].[SVC00300]
(
[EQUIPID] [int] NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Version] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRLSTAT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INSTDTE] [datetime] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTPMDTE] [datetime] NOT NULL,
[LSTSRVDTE] [datetime] NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVCAREA] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WARRCDE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WARREND] [datetime] NOT NULL,
[WARRSTART] [datetime] NOT NULL,
[SLRWARR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLRWEND] [datetime] NOT NULL,
[SLRWSTART] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MTTR] [numeric] (19, 5) NOT NULL,
[MTBF] [numeric] (19, 5) NOT NULL,
[MTBI] [numeric] (19, 5) NOT NULL,
[Last_Calc_Date] [datetime] NOT NULL,
[Meters_1] [int] NOT NULL,
[Meters_2] [int] NOT NULL,
[Meters_3] [int] NOT NULL,
[Meters_4] [int] NOT NULL,
[Meters_5] [int] NOT NULL,
[Dailys_1] [numeric] (19, 5) NOT NULL,
[Dailys_2] [numeric] (19, 5) NOT NULL,
[Dailys_3] [numeric] (19, 5) NOT NULL,
[Dailys_4] [numeric] (19, 5) NOT NULL,
[Dailys_5] [numeric] (19, 5) NOT NULL,
[MTBFs_1] [numeric] (19, 5) NOT NULL,
[MTBFs_2] [numeric] (19, 5) NOT NULL,
[MTBFs_3] [numeric] (19, 5) NOT NULL,
[MTBFs_4] [numeric] (19, 5) NOT NULL,
[MTBFs_5] [numeric] (19, 5) NOT NULL,
[Meter_Deltas_1] [int] NOT NULL,
[Meter_Deltas_2] [int] NOT NULL,
[Meter_Deltas_3] [int] NOT NULL,
[Meter_Deltas_4] [int] NOT NULL,
[Meter_Deltas_5] [int] NOT NULL,
[SVC_PM_Date] [smallint] NOT NULL,
[SVC_PM_Day] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Serial_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[SVC_Asset_Tag] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Shipped_Date] [datetime] NOT NULL,
[SVC_Register_Date] [datetime] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__INSTDT__7CEF6059] CHECK ((datepart(hour,[INSTDTE])=(0) AND datepart(minute,[INSTDTE])=(0) AND datepart(second,[INSTDTE])=(0) AND datepart(millisecond,[INSTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__Last_C__7FCBCD04] CHECK ((datepart(hour,[Last_Calc_Date])=(0) AND datepart(minute,[Last_Calc_Date])=(0) AND datepart(second,[Last_Calc_Date])=(0) AND datepart(millisecond,[Last_Calc_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__LSTPMD__7DE38492] CHECK ((datepart(hour,[LSTPMDTE])=(0) AND datepart(minute,[LSTPMDTE])=(0) AND datepart(second,[LSTPMDTE])=(0) AND datepart(millisecond,[LSTPMDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__LSTSRV__7ED7A8CB] CHECK ((datepart(hour,[LSTSRVDTE])=(0) AND datepart(minute,[LSTSRVDTE])=(0) AND datepart(second,[LSTSRVDTE])=(0) AND datepart(millisecond,[LSTSRVDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__Shippe__039C5DE8] CHECK ((datepart(hour,[Shipped_Date])=(0) AND datepart(minute,[Shipped_Date])=(0) AND datepart(second,[Shipped_Date])=(0) AND datepart(millisecond,[Shipped_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__SLRWEN__00BFF13D] CHECK ((datepart(hour,[SLRWEND])=(0) AND datepart(minute,[SLRWEND])=(0) AND datepart(second,[SLRWEND])=(0) AND datepart(millisecond,[SLRWEND])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__SLRWST__01B41576] CHECK ((datepart(hour,[SLRWSTART])=(0) AND datepart(minute,[SLRWSTART])=(0) AND datepart(second,[SLRWSTART])=(0) AND datepart(millisecond,[SLRWSTART])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__SVC_Re__02A839AF] CHECK ((datepart(hour,[SVC_Register_Date])=(0) AND datepart(minute,[SVC_Register_Date])=(0) AND datepart(second,[SVC_Register_Date])=(0) AND datepart(millisecond,[SVC_Register_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__WARREN__04908221] CHECK ((datepart(hour,[WARREND])=(0) AND datepart(minute,[WARREND])=(0) AND datepart(second,[WARREND])=(0) AND datepart(millisecond,[WARREND])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [CK__SVC00300__WARRST__0584A65A] CHECK ((datepart(hour,[WARRSTART])=(0) AND datepart(minute,[WARRSTART])=(0) AND datepart(second,[WARRSTART])=(0) AND datepart(millisecond,[WARRSTART])=(0)))
GO
ALTER TABLE [dbo].[SVC00300] ADD CONSTRAINT [PKSVC00300] PRIMARY KEY CLUSTERED  ([EQUIPID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00300] ON [dbo].[SVC00300] ([CUSTNMBR], [ADRSCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00300] ON [dbo].[SVC00300] ([CUSTNMBR], [ADRSCODE], [SERLNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC00300] ON [dbo].[SVC00300] ([CUSTNMBR], [SERLNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00300] ON [dbo].[SVC00300] ([ITEMNMBR], [CUSTNMBR], [SERLNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00300] ON [dbo].[SVC00300] ([REFRENCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SVC00300] ON [dbo].[SVC00300] ([SERLNMBR], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[SRLSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[INSTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[LSTPMDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[LSTSRVDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[TECHID2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[SVCAREA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[WARRCDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[WARREND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[WARRSTART]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[SLRWARR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[SLRWEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[SLRWSTART]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTBF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTBI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[Last_Calc_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meters_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meters_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meters_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meters_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meters_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[Dailys_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[Dailys_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[Dailys_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[Dailys_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[Dailys_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTBFs_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTBFs_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTBFs_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTBFs_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[MTBFs_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meter_Deltas_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meter_Deltas_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meter_Deltas_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meter_Deltas_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[Meter_Deltas_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[SVC_PM_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00300].[SVC_PM_Day]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[SVC_Serial_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00300].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[SVC_Asset_Tag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[Shipped_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00300].[SVC_Register_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00300].[SOPNUMBE]'
GO
GRANT SELECT ON  [dbo].[SVC00300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00300] TO [DYNGRP]
GO
