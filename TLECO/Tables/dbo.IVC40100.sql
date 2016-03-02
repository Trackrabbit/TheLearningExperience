CREATE TABLE [dbo].[IVC40100]
(
[SETUPKEY] [smallint] NOT NULL,
[DPYITMCS] [tinyint] NOT NULL,
[ACDSTRBN] [tinyint] NOT NULL,
[TRKVDTRX] [tinyint] NOT NULL,
[TRXDTL] [tinyint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INVCFRMT] [smallint] NOT NULL,
[RETNFRMT] [smallint] NOT NULL,
[PKSLPFMT] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[USEADVTX] [smallint] NOT NULL,
[NONIVSCH] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NONIVTXB] [smallint] NOT NULL,
[FRGTTXBL] [smallint] NOT NULL,
[MISCTXBL] [smallint] NOT NULL,
[USRDFPR1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDRPR2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USEACFRM] [smallint] NOT NULL,
[RTNUSIVC] [tinyint] NOT NULL,
[PKSLPIVC] [tinyint] NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCALLOW_1] [tinyint] NOT NULL,
[IVCALLOW_2] [tinyint] NOT NULL,
[IVCALLOW_3] [tinyint] NOT NULL,
[IVCALLOW_4] [tinyint] NOT NULL,
[IVCALLOW_5] [tinyint] NOT NULL,
[IVCALLOW_6] [tinyint] NOT NULL,
[IVCALLOW_7] [tinyint] NOT NULL,
[IVCALLOW_8] [tinyint] NOT NULL,
[IVCALLOW_9] [tinyint] NOT NULL,
[IVCALLOW_10] [tinyint] NOT NULL,
[IVCALLOW_11] [tinyint] NOT NULL,
[IVCPSSWD_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_7] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_8] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_9] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_10] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCPSSWD_11] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVCSEQNC_1] [smallint] NOT NULL,
[IVCSEQNC_2] [smallint] NOT NULL,
[IVCSEQNC_3] [smallint] NOT NULL,
[IVCSEQNC_4] [smallint] NOT NULL,
[IVCSEQNC_5] [smallint] NOT NULL,
[IVCSEQNC_6] [smallint] NOT NULL,
[IVCSEQNC_7] [smallint] NOT NULL,
[IVCSEQNC_8] [smallint] NOT NULL,
[IVCSEQNC_9] [smallint] NOT NULL,
[IVCSEQNC_10] [smallint] NOT NULL,
[IVCSEQNC_11] [smallint] NOT NULL,
[IVCDSTCK] [binary] (4) NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVC40100] ADD CONSTRAINT [PKIVC40100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[DPYITMCS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[ACDSTRBN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[TRKVDTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[TRXDTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[INVCFRMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[RETNFRMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[PKSLPFMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[USEADVTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[NONIVSCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[NONIVTXB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[FRGTTXBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[MISCTXBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[USRDFPR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[USRDRPR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[USEACFRM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[RTNUSIVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[PKSLPIVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCALLOW_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC40100].[IVCPSSWD_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCSEQNC_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[IVCDSTCK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC40100].[NUMOFTRX]'
GO
GRANT SELECT ON  [dbo].[IVC40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVC40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVC40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVC40100] TO [DYNGRP]
GO
