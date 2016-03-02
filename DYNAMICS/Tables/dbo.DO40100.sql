CREATE TABLE [dbo].[DO40100]
(
[CMPANYID] [smallint] NOT NULL,
[WINDLIVEID] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WINLIVEPASSWORD] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMERCEACCTNUM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMERCEORG] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ECOMMORDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ECOMMINVID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OCSACTIVE] [tinyint] NOT NULL,
[PSACTIVE] [tinyint] NOT NULL,
[PMTSERVCID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VoidAVSAuthorization] [tinyint] NOT NULL,
[VerifyAVSUsing] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[ONLINECERTIFICATE] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DO40100] ADD CONSTRAINT [PKDO40100] PRIMARY KEY NONCLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO40100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[WINDLIVEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[WINLIVEPASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[COMMERCEACCTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[COMMERCEORG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[ECOMMORDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[ECOMMINVID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[DOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO40100].[OCSACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO40100].[PSACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[PMTSERVCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO40100].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO40100].[VoidAVSAuthorization]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO40100].[VerifyAVSUsing]'
GO
GRANT SELECT ON  [dbo].[DO40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DO40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DO40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DO40100] TO [DYNGRP]
GO
