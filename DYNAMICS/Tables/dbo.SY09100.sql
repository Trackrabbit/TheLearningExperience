CREATE TABLE [dbo].[SY09100]
(
[SECURITYROLEID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECURITYROLENAME] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECURITYROLEDESC] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECROLETYPE] [smallint] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY09100] ADD CONSTRAINT [CK__SY09100__CREATDD__74794A92] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY09100] ADD CONSTRAINT [CK__SY09100__MODIFDT__756D6ECB] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY09100] ADD CONSTRAINT [PKSY09100] PRIMARY KEY NONCLUSTERED  ([SECURITYROLEID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY09100] ON [dbo].[SY09100] ([SECROLETYPE], [SECURITYROLEID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09100].[SECURITYROLEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09100].[SECURITYROLENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09100].[SECURITYROLEDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY09100].[SECROLETYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09100].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY09100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09100].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY09100].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SY09100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY09100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY09100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY09100] TO [DYNGRP]
GO
