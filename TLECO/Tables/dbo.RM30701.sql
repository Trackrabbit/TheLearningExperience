CREATE TABLE [dbo].[RM30701]
(
[RNNMBR] [int] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[MINPYDUE] [numeric] (19, 5) NOT NULL,
[CUSTMSGS_1] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTMSGS_2] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTMSGS_3] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AMNTDUE] [numeric] (19, 5) NOT NULL,
[STMTMSGS_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_5] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_6] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_7] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_8] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_9] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_10] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_11] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_12] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_13] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_14] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTMSGS_15] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_1] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_2] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_5] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_6] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_7] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_8] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARABR_9] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_4] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_5] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_6] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_7] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_8] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCARDSC_9] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGPERAMT_1] [numeric] (19, 5) NOT NULL,
[AGPERAMT_2] [numeric] (19, 5) NOT NULL,
[AGPERAMT_3] [numeric] (19, 5) NOT NULL,
[AGPERAMT_4] [numeric] (19, 5) NOT NULL,
[AGPERAMT_5] [numeric] (19, 5) NOT NULL,
[AGPERAMT_6] [numeric] (19, 5) NOT NULL,
[AGPERAMT_7] [numeric] (19, 5) NOT NULL,
[AGPERDSC_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGPERDSC_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGPERDSC_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGPERDSC_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGPERDSC_5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGPERDSC_6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGPERDSC_7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTBLNC] [numeric] (19, 5) NOT NULL,
[DEPRECV] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM30701] ADD CONSTRAINT [CK__RM30701__DATE1__772B9A0B] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[RM30701] ADD CONSTRAINT [PKRM30701] PRIMARY KEY NONCLUSTERED  ([RNNMBR], [CUSTNMBR], [CURNCYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM30701] ON [dbo].[RM30701] ([CUSTNMBR], [DATE1], [CURNCYID], [RNNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM30701] ON [dbo].[RM30701] ([DATE1], [CUSTNMBR], [CURNCYID], [RNNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM30701] ON [dbo].[RM30701] ([STMTNAME], [DATE1], [CUSTNMBR], [CURNCYID], [RNNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30701].[RNNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30701].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30701].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[MINPYDUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[CUSTMSGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[CUSTMSGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[CUSTMSGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AMNTDUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[STMTMSGS_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARABR_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[DOCARDSC_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AGPERAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AGPERAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AGPERAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AGPERAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AGPERAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AGPERAMT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[AGPERAMT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[AGPERDSC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[AGPERDSC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[AGPERDSC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[AGPERDSC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[AGPERDSC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[AGPERDSC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[AGPERDSC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30701].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30701].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[CUSTBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30701].[DEPRECV]'
GO
GRANT SELECT ON  [dbo].[RM30701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM30701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM30701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM30701] TO [DYNGRP]
GO
