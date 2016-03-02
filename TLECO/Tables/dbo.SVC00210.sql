CREATE TABLE [dbo].[SVC00210]
(
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[FRMSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00210] ADD CONSTRAINT [CK__SVC00210__CREATE__5C8290C7] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00210] ADD CONSTRAINT [CK__SVC00210__CREATD__5B8E6C8E] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00210] ADD CONSTRAINT [PKSVC00210] PRIMARY KEY CLUSTERED  ([CALLNBR], [SRVRECTYPE], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00210].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00210].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00210].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00210].[FRMSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00210].[TOSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00210].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00210].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00210].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00210].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00210].[CREATETIME]'
GO
GRANT SELECT ON  [dbo].[SVC00210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00210] TO [DYNGRP]
GO
