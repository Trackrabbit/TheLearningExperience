CREATE TABLE [dbo].[DD40100]
(
[DDSETPID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDCOMPNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDCOIDEN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDIMDEST] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDIMDENM] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDIMORIG] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDIMORNM] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDORGDFI] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDTRANUM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDACTNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDINDNAM] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDTRANS] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDDISC20] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDDESC10] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDEMPINF] [smallint] NOT NULL,
[DDDESTIN] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDNXTACH] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDINCACH] [tinyint] NOT NULL,
[DDHEAD] [smallint] NOT NULL,
[DDFOOT] [smallint] NOT NULL,
[DDAUTOST] [tinyint] NOT NULL,
[DDHANDDEP] [smallint] NOT NULL,
[DDDAYSPAY2POST] [smallint] NOT NULL,
[DDNEXTDEPNO] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDMASKDLR] [tinyint] NOT NULL,
[DDVOIDED] [tinyint] NOT NULL,
[DDPRECNT] [smallint] NOT NULL,
[DDEXCEPTLIST] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDPOPSET] [smallint] NOT NULL,
[DDACTIVI] [smallint] NOT NULL,
[DDBANKRE] [smallint] NOT NULL,
[DDSERVICECODE] [smallint] NOT NULL,
[EFTPaymentMethod] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD40100] ADD CONSTRAINT [PKDD40100] PRIMARY KEY NONCLUSTERED  ([DDSETPID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDSETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDCOMPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDCOIDEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDIMDEST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDIMDENM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDIMORIG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDIMORNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDORGDFI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDTRANUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDACTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDINDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDTRANS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDDISC20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDDESC10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDEMPINF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDDESTIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDNXTACH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDINCACH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDHEAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDFOOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDAUTOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDHANDDEP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDDAYSPAY2POST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDNEXTDEPNO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDMASKDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDVOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDPRECNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40100].[DDEXCEPTLIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDPOPSET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDACTIVI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDBANKRE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[DDSERVICECODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40100].[EFTPaymentMethod]'
GO
GRANT SELECT ON  [dbo].[DD40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD40100] TO [DYNGRP]
GO
