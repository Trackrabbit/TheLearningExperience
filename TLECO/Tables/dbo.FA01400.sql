CREATE TABLE [dbo].[FA01400]
(
[ASSETINDEX] [int] NOT NULL,
[PURCHLINESEQ] [int] NOT NULL,
[PURCHDESC] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Acquisition_Cost] [numeric] (19, 5) NOT NULL,
[Orig_Acquisition_Cost] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FA_AP_Post_Index] [int] NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA01400] ADD CONSTRAINT [CK__FA01400__LASTMNT__75B852E5] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA01400] ADD CONSTRAINT [CK__FA01400__TIME1__76AC771E] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[FA01400] ADD CONSTRAINT [CK__FA01400__DOCDATE__72DBE63A] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01400] ADD CONSTRAINT [CK__FA01400__EXCHDAT__73D00A73] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01400] ADD CONSTRAINT [CK__FA01400__LASTMNT__74C42EAC] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01400] ADD CONSTRAINT [PKFA01400] PRIMARY KEY CLUSTERED  ([ASSETINDEX], [PURCHLINESEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA01400] ON [dbo].[FA01400] ([ASSETINDEX], [DOCDATE], [PURCHLINESEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA01400] ON [dbo].[FA01400] ([ASSETINDEX], [VENDORID], [DOCDATE], [PURCHLINESEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA01400] ON [dbo].[FA01400] ([FA_AP_Post_Index], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01400].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01400].[PURCHLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[PURCHDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01400].[Acquisition_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01400].[Orig_Acquisition_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01400].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01400].[FA_AP_Post_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01400].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01400].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01400].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01400].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01400].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01400].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01400].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01400].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01400].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01400].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA01400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA01400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA01400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA01400] TO [DYNGRP]
GO
