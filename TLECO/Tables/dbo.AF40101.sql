CREATE TABLE [dbo].[AF40101]
(
[REPORTID] [smallint] NOT NULL,
[MNHDRCNT] [smallint] NOT NULL,
[MNFTRCNT] [smallint] NOT NULL,
[SHDRCNT] [smallint] NOT NULL,
[SFTRCNT] [smallint] NOT NULL,
[ROWCNT1] [smallint] NOT NULL,
[COLCNT] [smallint] NOT NULL,
[SHDRPCNT] [smallint] NOT NULL,
[SFTRPCNT] [smallint] NOT NULL,
[MNHDRFLG] [smallint] NOT NULL,
[MNFTRFLG] [smallint] NOT NULL,
[SHDRFLAG] [smallint] NOT NULL,
[SFTRFLAG] [smallint] NOT NULL,
[MNHDRSIZ] [smallint] NOT NULL,
[MNFTRSIZ] [smallint] NOT NULL,
[SHDRSIZE_1] [smallint] NOT NULL,
[SHDRSIZE_2] [smallint] NOT NULL,
[SHDRSIZE_3] [smallint] NOT NULL,
[SHDRSIZE_4] [smallint] NOT NULL,
[SHDRSIZE_5] [smallint] NOT NULL,
[SFTRSIZE_1] [smallint] NOT NULL,
[SFTRSIZE_2] [smallint] NOT NULL,
[SFTRSIZE_3] [smallint] NOT NULL,
[SFTRSIZE_4] [smallint] NOT NULL,
[SFTRSIZE_5] [smallint] NOT NULL,
[SHDROPT_1] [smallint] NOT NULL,
[SHDROPT_2] [smallint] NOT NULL,
[SHDROPT_3] [smallint] NOT NULL,
[SHDROPT_4] [smallint] NOT NULL,
[SHDROPT_5] [smallint] NOT NULL,
[SHDRPRT_1] [smallint] NOT NULL,
[SHDRPRT_2] [smallint] NOT NULL,
[SHDRPRT_3] [smallint] NOT NULL,
[SHDRPRT_4] [smallint] NOT NULL,
[SHDRPRT_5] [smallint] NOT NULL,
[SFTROPT_1] [smallint] NOT NULL,
[SFTROPT_2] [smallint] NOT NULL,
[SFTROPT_3] [smallint] NOT NULL,
[SFTROPT_4] [smallint] NOT NULL,
[SFTROPT_5] [smallint] NOT NULL,
[SFTRPRT_1] [smallint] NOT NULL,
[SFTRPRT_2] [smallint] NOT NULL,
[SFTRPRT_3] [smallint] NOT NULL,
[SFTRPRT_4] [smallint] NOT NULL,
[SFTRPRT_5] [smallint] NOT NULL,
[COLHDCNT] [smallint] NOT NULL,
[COLDHSIZ_1] [smallint] NOT NULL,
[COLDHSIZ_2] [smallint] NOT NULL,
[COLDHSIZ_3] [smallint] NOT NULL,
[COLDHSIZ_4] [smallint] NOT NULL,
[COLDHSIZ_5] [smallint] NOT NULL,
[COLDHSIZ_6] [smallint] NOT NULL,
[RTOTLSIZ] [smallint] NOT NULL,
[COLTOSIZ] [smallint] NOT NULL,
[COLOFSIZ] [smallint] NOT NULL,
[LFTMARGN] [smallint] NOT NULL,
[RTMARGIN] [smallint] NOT NULL,
[TOPMARGN] [smallint] NOT NULL,
[BOTMARGN] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF40101] ADD CONSTRAINT [PKAF40101] PRIMARY KEY NONCLUSTERED  ([REPORTID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[MNHDRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[MNFTRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[ROWCNT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRPCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRPCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[MNHDRFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[MNFTRFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[MNHDRSIZ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[MNFTRSIZ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRSIZE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRSIZE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRSIZE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRSIZE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRSIZE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRSIZE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRSIZE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRSIZE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRSIZE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRSIZE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDROPT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDROPT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDROPT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDROPT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDROPT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRPRT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRPRT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRPRT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRPRT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SHDRPRT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTROPT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTROPT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTROPT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTROPT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTROPT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRPRT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRPRT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRPRT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRPRT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[SFTRPRT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLHDCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLDHSIZ_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLDHSIZ_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLDHSIZ_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLDHSIZ_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLDHSIZ_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLDHSIZ_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[RTOTLSIZ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLTOSIZ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[COLOFSIZ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[LFTMARGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[RTMARGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[TOPMARGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF40101].[BOTMARGN]'
GO
GRANT SELECT ON  [dbo].[AF40101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF40101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF40101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF40101] TO [DYNGRP]
GO
