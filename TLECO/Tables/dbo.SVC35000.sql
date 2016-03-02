CREATE TABLE [dbo].[SVC35000]
(
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Record_Type] [smallint] NOT NULL,
[RMA_Status] [smallint] NOT NULL,
[Received] [tinyint] NOT NULL,
[RETORIG] [smallint] NOT NULL,
[RETREF] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[ETADTE] [datetime] NOT NULL,
[ETATME] [datetime] NOT NULL,
[RETUDATE] [datetime] NOT NULL,
[Return_Time] [datetime] NOT NULL,
[COMPDTE] [datetime] NOT NULL,
[COMPTME] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNNAME] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETADDR1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETADDR2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETADDR3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNCITY] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Return_State] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Country] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[EQPLINE] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Bill_of_Lading] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOP_Line_Item_Sequence] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Commit_Date] [datetime] NOT NULL,
[Commit_Time] [datetime] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[CSTPONBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_Reason_Code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_Reason_Code_Desc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_RMA_From_Service] [tinyint] NOT NULL,
[SVC_FO_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__Commit__0E24D953] CHECK ((datepart(day,[Commit_Time])=(1) AND datepart(month,[Commit_Time])=(1) AND datepart(year,[Commit_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__COMPTM__0C3C90E1] CHECK ((datepart(day,[COMPTME])=(1) AND datepart(month,[COMPTME])=(1) AND datepart(year,[COMPTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__ENTTME__100D21C5] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__ETATME__11F56A37] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__Return__15C5FB1B] CHECK ((datepart(day,[Return_Time])=(1) AND datepart(month,[Return_Time])=(1) AND datepart(year,[Return_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__TIME1__16BA1F54] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__Commit__0D30B51A] CHECK ((datepart(hour,[Commit_Date])=(0) AND datepart(minute,[Commit_Date])=(0) AND datepart(second,[Commit_Date])=(0) AND datepart(millisecond,[Commit_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__COMPDT__0B486CA8] CHECK ((datepart(hour,[COMPDTE])=(0) AND datepart(minute,[COMPDTE])=(0) AND datepart(second,[COMPDTE])=(0) AND datepart(millisecond,[COMPDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__ENTDTE__0F18FD8C] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__ETADTE__110145FE] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__EXCHDA__12E98E70] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__EXPNDA__13DDB2A9] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [CK__SVC35000__RETUDA__14D1D6E2] CHECK ((datepart(hour,[RETUDATE])=(0) AND datepart(minute,[RETUDATE])=(0) AND datepart(second,[RETUDATE])=(0) AND datepart(millisecond,[RETUDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC35000] ADD CONSTRAINT [PKSVC35000] PRIMARY KEY CLUSTERED  ([RETDOCID], [Return_Record_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC35000] ON [dbo].[SVC35000] ([CUSTNAME], [Return_Record_Type], [RETDOCID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC35000] ON [dbo].[SVC35000] ([CUSTNMBR], [Return_Record_Type], [RETDOCID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC35000] ON [dbo].[SVC35000] ([Return_Record_Type], [LOCNCODE], [RETDOCID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC35000] ON [dbo].[SVC35000] ([Return_Record_Type], [OFFID], [RETDOCID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC35000] ON [dbo].[SVC35000] ([Return_Record_Type], [RETSTAT], [RETDOCID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SVC35000] ON [dbo].[SVC35000] ([RMA_Status], [Return_Record_Type], [RETDOCID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC35000] ON [dbo].[SVC35000] ([SOPNUMBE], [SOP_Line_Item_Sequence], [Return_Record_Type], [RETDOCID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[Return_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[RMA_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[Received]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[RETORIG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RETREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RETSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[RETUDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[Return_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[COMPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[COMPTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RTRNNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RETADDR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RETADDR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RETADDR3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RTRNCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[SVC_Return_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RTRNZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[Return_Country]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[Bill_of_Lading]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[SOP_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[Commit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[Commit_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35000].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[VIEWMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC35000].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC35000].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[CSTPONBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[SVC_RMA_Reason_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[SVC_RMA_Reason_Code_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC35000].[SVC_RMA_From_Service]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC35000].[SVC_FO_ID]'
GO
GRANT SELECT ON  [dbo].[SVC35000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC35000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC35000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC35000] TO [DYNGRP]
GO
