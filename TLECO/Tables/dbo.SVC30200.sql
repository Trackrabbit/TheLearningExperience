CREATE TABLE [dbo].[SVC30200]
(
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[SRVSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVCDESCR] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Customer_Reference] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVCAREA] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[Notify_Date] [datetime] NOT NULL,
[Notify_Time] [datetime] NOT NULL,
[ETADTE] [datetime] NOT NULL,
[ETATME] [datetime] NOT NULL,
[DISPDTE] [datetime] NOT NULL,
[DISPTME] [datetime] NOT NULL,
[ARRIVDTE] [datetime] NOT NULL,
[ARRIVTME] [datetime] NOT NULL,
[COMPDTE] [datetime] NOT NULL,
[COMPTME] [datetime] NOT NULL,
[Response_Date] [datetime] NOT NULL,
[Response_Time] [datetime] NOT NULL,
[PRICELVL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABSTOTPRC] [numeric] (19, 5) NOT NULL,
[LABPCT] [numeric] (19, 5) NOT NULL,
[LABSTOTCST] [numeric] (19, 5) NOT NULL,
[PARSTOTPRC] [numeric] (19, 5) NOT NULL,
[PARTPCT] [numeric] (19, 5) NOT NULL,
[PARSTOTCST] [numeric] (19, 5) NOT NULL,
[MSCSTOTPRC] [numeric] (19, 5) NOT NULL,
[MISCPCT] [numeric] (19, 5) NOT NULL,
[MISSTOTCST] [numeric] (19, 5) NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRETAXTOT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[METER1] [int] NOT NULL,
[METER2] [int] NOT NULL,
[METER3] [int] NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[NOTFYFLAG] [tinyint] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRRECTYPE] [smallint] NOT NULL,
[MSTRCALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESCDATE] [datetime] NOT NULL,
[ESCTIME] [datetime] NOT NULL,
[Escalation_Level] [int] NOT NULL,
[SPLTTERMS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Callback] [tinyint] NOT NULL,
[PROJCTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjectRef1_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Line_SEQ] [numeric] (19, 5) NOT NULL,
[ETTR] [numeric] (19, 5) NOT NULL,
[SVC_On_Hold] [tinyint] NOT NULL,
[Print_to_Web] [tinyint] NOT NULL,
[Meters_1] [int] NOT NULL,
[Meters_2] [int] NOT NULL,
[Meters_3] [int] NOT NULL,
[Meters_4] [int] NOT NULL,
[Meters_5] [int] NOT NULL,
[Meter_Internal_Uses_1] [int] NOT NULL,
[Meter_Internal_Uses_2] [int] NOT NULL,
[Meter_Internal_Uses_3] [int] NOT NULL,
[Meter_Internal_Uses_4] [int] NOT NULL,
[Meter_Internal_Uses_5] [int] NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[VIEWMODE] [smallint] NOT NULL,
[ISMCTRX] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[ORIGMISSTOTCST] [numeric] (19, 5) NOT NULL,
[ORIGMSCSTOTPRC] [numeric] (19, 5) NOT NULL,
[ORIGLABSUBTOTCOST] [numeric] (19, 5) NOT NULL,
[ORIGLABSTOTPRC] [numeric] (19, 5) NOT NULL,
[ORIGPARSTOTCST] [numeric] (19, 5) NOT NULL,
[ORIGPARSTOTPRC] [numeric] (19, 5) NOT NULL,
[ORIGPRETAXTOT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[ORIGTOTAL] [numeric] (19, 5) NOT NULL,
[Orig_Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Pre600] [tinyint] NOT NULL,
[SVC_FO_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replaces_1] [tinyint] NOT NULL,
[Replaces_2] [tinyint] NOT NULL,
[Replaces_3] [tinyint] NOT NULL,
[Replaces_4] [tinyint] NOT NULL,
[Replaces_5] [tinyint] NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ARRIVT__442BE449] CHECK ((datepart(day,[ARRIVTME])=(1) AND datepart(month,[ARRIVTME])=(1) AND datepart(year,[ARRIVTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__COMPTM__46142CBB] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__DISPTM__47FC752D] CHECK ((datepart(day,[DISPTME])=(1) AND datepart(month,[DISPTME])=(1) AND datepart(year,[DISPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ENTTME__49E4BD9F] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ESCTIM__4BCD0611] CHECK ((datepart(day,[ESCTIME])=(1) AND datepart(month,[ESCTIME])=(1) AND datepart(year,[ESCTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ETATME__4DB54E83] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__Notify__5185DF67] CHECK ((datepart(day,[Notify_Time])=(1) AND datepart(month,[Notify_Time])=(1) AND datepart(year,[Notify_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__Respon__536E27D9] CHECK ((datepart(day,[Response_Time])=(1) AND datepart(month,[Response_Time])=(1) AND datepart(year,[Response_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__TIME1__54624C12] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ARRIVD__4337C010] CHECK ((datepart(hour,[ARRIVDTE])=(0) AND datepart(minute,[ARRIVDTE])=(0) AND datepart(second,[ARRIVDTE])=(0) AND datepart(millisecond,[ARRIVDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__COMPDT__45200882] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__DISPDT__470850F4] CHECK ((datepart(hour,[DISPDTE])=(0) AND datepart(minute,[DISPDTE])=(0) AND datepart(second,[DISPDTE])=(0) AND datepart(millisecond,[DISPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ENTDTE__48F09966] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ESCDAT__4AD8E1D8] CHECK ((datepart(hour,[ESCDATE])=(0) AND datepart(minute,[ESCDATE])=(0) AND datepart(second,[ESCDATE])=(0) AND datepart(millisecond,[ESCDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__ETADTE__4CC12A4A] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__EXCHDA__4EA972BC] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__EXPNDA__4F9D96F5] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__Notify__5091BB2E] CHECK ((datepart(hour,[Notify_Date])=(0) AND datepart(minute,[Notify_Date])=(0) AND datepart(second,[Notify_Date])=(0) AND datepart(millisecond,[Notify_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [CK__SVC30200__Respon__527A03A0] CHECK ((datepart(hour,[Response_Date])=(0) AND datepart(minute,[Response_Date])=(0) AND datepart(second,[Response_Date])=(0) AND datepart(millisecond,[Response_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30200] ADD CONSTRAINT [PKSVC30200] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9SVC30200] ON [dbo].[SVC30200] ([CONTNBR], [CONSTS], [SVC_Contract_Line_SEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SVC30200] ON [dbo].[SVC30200] ([CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC30200] ON [dbo].[SVC30200] ([Customer_Reference], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC30200] ON [dbo].[SVC30200] ([SRVRECTYPE], [CUSTNMBR], [ADRSCODE], [ENTDTE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC30200] ON [dbo].[SVC30200] ([SRVRECTYPE], [OFFID], [SRVSTAT], [priorityLevel], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC30200] ON [dbo].[SVC30200] ([SRVRECTYPE], [PORDNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC30200] ON [dbo].[SVC30200] ([SRVRECTYPE], [SRVSTAT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30200] ON [dbo].[SVC30200] ([SRVRECTYPE], [TECHID], [SRVSTAT], [priorityLevel], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SRVSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SVCDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[Customer_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SVCAREA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[Notify_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[Notify_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[DISPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[DISPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ARRIVDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ARRIVTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[Response_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[Response_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[PRICELVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[LABSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[LABSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[PARSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[PARSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[MSCSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[MISCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[MISSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[PRETAXTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[METER1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[METER2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[METER3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[NOTFYFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[MSTRRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[MSTRCALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ESCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[ESCTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Escalation_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SPLTTERMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Callback]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[PROJCTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ProjectRef1_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ProjectRef1_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ProjectRef1_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ProjectRef1_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[SVC_Contract_Line_SEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ETTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[SVC_On_Hold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Print_to_Web]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meters_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meters_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meters_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meters_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meters_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meter_Internal_Uses_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meter_Internal_Uses_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meter_Internal_Uses_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meter_Internal_Uses_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Meter_Internal_Uses_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[VIEWMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30200].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGMISSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGMSCSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGLABSUBTOTCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGLABSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGPARSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGPARSTOTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGPRETAXTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[ORIGTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30200].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[SVC_Pre600]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30200].[SVC_FO_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Replaces_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Replaces_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Replaces_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Replaces_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Replaces_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30200].[Workflow_Priority]'
GO
GRANT SELECT ON  [dbo].[SVC30200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30200] TO [DYNGRP]
GO
