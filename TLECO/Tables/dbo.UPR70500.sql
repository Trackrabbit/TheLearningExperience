CREATE TABLE [dbo].[UPR70500]
(
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTNOTS] [tinyint] NOT NULL,
[PRNTTYPE] [smallint] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[INCLGNDS] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[SORTBY] [smallint] NOT NULL,
[MTHSLCTD] [smallint] NOT NULL,
[AUCTRLCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCINEMP] [tinyint] NOT NULL,
[SFUTASUT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTEMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTEMNAM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDEPT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTPYCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTDEDCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTBFTCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTLTXCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSTXCD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTJBTIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCHKNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTPYDT] [datetime] NOT NULL,
[STPSTDDT] [datetime] NOT NULL,
[STTEMPCL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STPRTKDT] [smallint] NOT NULL,
[STTLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTSPRVSRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENAUCNCD] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFUTASUT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEMPL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENEMPNAM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDEPT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPAYCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDEDCCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENBNFTCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ELCLTXCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSTTXCD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENJBTITL] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCHKNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDPAYDT] [datetime] NOT NULL,
[ENPSTDDT] [datetime] NOT NULL,
[ENEMPCLS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EPRTKNDT] [smallint] NOT NULL,
[ENDLOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSPRVSRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGSRTBY] [smallint] NOT NULL,
[STTACNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RANGEBY] [smallint] NOT NULL,
[EMPLINFO] [tinyint] NOT NULL,
[EMPLSUMM] [tinyint] NOT NULL,
[PAYCODES] [tinyint] NOT NULL,
[DEDUCTNS] [tinyint] NOT NULL,
[BENEFITS] [tinyint] NOT NULL,
[TAXINFOR] [tinyint] NOT NULL,
[STATETAX] [tinyint] NOT NULL,
[LOCALTX1] [tinyint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR70500] ADD CONSTRAINT [CK__UPR70500__ENDDAT__62BF5114] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR70500] ADD CONSTRAINT [CK__UPR70500__ENDPAY__63B3754D] CHECK ((datepart(hour,[ENDPAYDT])=(0) AND datepart(minute,[ENDPAYDT])=(0) AND datepart(second,[ENDPAYDT])=(0) AND datepart(millisecond,[ENDPAYDT])=(0)))
GO
ALTER TABLE [dbo].[UPR70500] ADD CONSTRAINT [CK__UPR70500__ENPSTD__64A79986] CHECK ((datepart(hour,[ENPSTDDT])=(0) AND datepart(minute,[ENPSTDDT])=(0) AND datepart(second,[ENPSTDDT])=(0) AND datepart(millisecond,[ENPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR70500] ADD CONSTRAINT [CK__UPR70500__STPSTD__61CB2CDB] CHECK ((datepart(hour,[STPSTDDT])=(0) AND datepart(minute,[STPSTDDT])=(0) AND datepart(second,[STPSTDDT])=(0) AND datepart(millisecond,[STPSTDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR70500] ADD CONSTRAINT [CK__UPR70500__STRTDA__5FE2E469] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[UPR70500] ADD CONSTRAINT [CK__UPR70500__STRTPY__60D708A2] CHECK ((datepart(hour,[STRTPYDT])=(0) AND datepart(minute,[STRTPYDT])=(0) AND datepart(second,[STRTPYDT])=(0) AND datepart(millisecond,[STRTPYDT])=(0)))
GO
ALTER TABLE [dbo].[UPR70500] ADD CONSTRAINT [PKUPR70500] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[PRNTNOTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR70500].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[MTHSLCTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[AUCTRLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[INCINEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[SFUTASUT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTACNCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTEMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTEMNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STRTDEPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STRTPYCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTDEDCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTBFTCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTLTXCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTSTXCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTJBTIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STCHKNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR70500].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR70500].[STRTPYDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR70500].[STPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTEMPCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[STPRTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STRTSPRVSRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENAUCNCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[EFUTASUT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENDEMPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENEMPNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENDDEPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENDPAYCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENDEDCCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENBNFTCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ELCLTXCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENSTTXCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENJBTITL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENCHKNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR70500].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR70500].[ENDPAYDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR70500].[ENPSTDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENEMPCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[EPRTKNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENDLOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[ENDSPRVSRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[SEGSRTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[STTACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[EACCNBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[EACCNBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[EACCNBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR70500].[EACCNBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[RANGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[EMPLINFO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[EMPLSUMM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[PAYCODES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[DEDUCTNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[BENEFITS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[TAXINFOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[STATETAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[LOCALTX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR70500].[YEAR1]'
GO
GRANT REFERENCES ON  [dbo].[UPR70500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR70500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR70500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR70500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR70500] TO [DYNGRP]
GO
