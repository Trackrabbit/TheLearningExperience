CREATE TABLE [dbo].[SVC06100]
(
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Depot_Priority] [numeric] (19, 5) NOT NULL,
[PARWORECTYPE] [smallint] NOT NULL,
[PARWONUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGIN] [smallint] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[ETADTE] [datetime] NOT NULL,
[ETATME] [datetime] NOT NULL,
[ECOMPDT] [datetime] NOT NULL,
[EComp_Time] [datetime] NOT NULL,
[RETUDATE] [datetime] NOT NULL,
[Return_Time] [datetime] NOT NULL,
[COMPDTE] [datetime] NOT NULL,
[COMPTME] [datetime] NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERVLITEMSEQ] [int] NOT NULL,
[IBITEMNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IBSERIAL] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IBEQUIPID] [int] NOT NULL,
[OBITEMNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OBSERIAL] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OBEQUIPID] [int] NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROUTEID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IBANALCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OBANALCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTOWN] [tinyint] NOT NULL,
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSLINESEQ] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[FACTSEAL] [tinyint] NOT NULL,
[LABSTOTCST] [numeric] (19, 5) NOT NULL,
[PARSTOTCST] [numeric] (19, 5) NOT NULL,
[TOTLABHRS] [numeric] (19, 5) NOT NULL,
[PRICELVL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUMRESCHED] [smallint] NOT NULL,
[Commit_Date] [datetime] NOT NULL,
[Commit_Time] [datetime] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_Reason_Code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_Reason_Code_Desc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Process_SEQ_Number] [numeric] (19, 5) NOT NULL,
[svcRMAComponentSeq] [int] NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__Commit__60FD2D21] CHECK ((datepart(day,[Commit_Time])=(1) AND datepart(month,[Commit_Time])=(1) AND datepart(year,[Commit_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__COMPTM__5F14E4AF] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__EComp___62E57593] CHECK ((datepart(day,[EComp_Time])=(1) AND datepart(month,[EComp_Time])=(1) AND datepart(year,[EComp_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__ENTTME__64CDBE05] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__ETATME__66B60677] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__Return__689E4EE9] CHECK ((datepart(day,[Return_Time])=(1) AND datepart(month,[Return_Time])=(1) AND datepart(year,[Return_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__Commit__600908E8] CHECK ((datepart(hour,[Commit_Date])=(0) AND datepart(minute,[Commit_Date])=(0) AND datepart(second,[Commit_Date])=(0) AND datepart(millisecond,[Commit_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__COMPDT__5E20C076] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__ECOMPD__61F1515A] CHECK ((datepart(hour,[ECOMPDT])=(0) AND datepart(minute,[ECOMPDT])=(0) AND datepart(second,[ECOMPDT])=(0) AND datepart(millisecond,[ECOMPDT])=(0)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__ENTDTE__63D999CC] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__ETADTE__65C1E23E] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [CK__SVC06100__RETUDA__67AA2AB0] CHECK ((datepart(hour,[RETUDATE])=(0) AND datepart(minute,[RETUDATE])=(0) AND datepart(second,[RETUDATE])=(0) AND datepart(millisecond,[RETUDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06100] ADD CONSTRAINT [PKSVC06100] PRIMARY KEY CLUSTERED  ([WORECTYPE], [WORKORDNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC06100] ON [dbo].[SVC06100] ([IBEQUIPID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC06100] ON [dbo].[SVC06100] ([WORECTYPE], [BIN], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC06100] ON [dbo].[SVC06100] ([WORECTYPE], [IBITEMNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC06100] ON [dbo].[SVC06100] ([WORECTYPE], [OFFID], [WOSTAT], [SVC_Depot_Priority], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06100] ON [dbo].[SVC06100] ([WORECTYPE], [STATIONID], [SVC_Depot_Priority], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC06100] ON [dbo].[SVC06100] ([WORECTYPE], [WOSTAT], [SVC_Depot_Priority], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[WOSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[WOTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[SVC_Depot_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[PARWORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[PARWONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[ORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[ECOMPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[EComp_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[RETUDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[Return_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[SERVLITEMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[IBITEMNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[IBSERIAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[IBEQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[OBITEMNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[OBSERIAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[OBEQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[ROUTEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[IBANALCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[OBANALCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[CUSTOWN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[TRANSLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[FACTSEAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[LABSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[PARSTOTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[TOTLABHRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[PRICELVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[NUMRESCHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[Commit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06100].[Commit_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[SVC_RMA_Reason_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06100].[SVC_RMA_Reason_Code_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06100].[SVC_Process_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[svcRMAComponentSeq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06100].[QTYTYPE]'
GO
GRANT SELECT ON  [dbo].[SVC06100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06100] TO [DYNGRP]
GO
