CREATE TABLE [dbo].[SVC00205]
(
[SRVRECTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[SVC_Document_Type] [smallint] NOT NULL,
[SVC_Document_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00205] ADD CONSTRAINT [CK__SVC00205__CREATE__56C9B771] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00205] ADD CONSTRAINT [CK__SVC00205__CREATD__55D59338] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00205] ADD CONSTRAINT [PKSVC00205] PRIMARY KEY CLUSTERED  ([SVC_Document_Type], [SRVRECTYPE], [SVC_Document_Number], [LNITMSEQ], [LINITMTYP]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00205].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00205].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00205].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00205].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00205].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00205].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00205].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00205].[SVC_Document_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00205].[SVC_Document_Number]'
GO
GRANT SELECT ON  [dbo].[SVC00205] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00205] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00205] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00205] TO [DYNGRP]
GO
