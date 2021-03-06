CREATE TABLE [dbo].[CFMACTIV]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EBS_Forecast_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOGINDAT] [datetime] NOT NULL,
[LOGINTIM] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFMACTIV] ADD CONSTRAINT [CK__CFMACTIV__LOGINT__5299FF31] CHECK ((datepart(day,[LOGINTIM])=(1) AND datepart(month,[LOGINTIM])=(1) AND datepart(year,[LOGINTIM])=(1900)))
GO
ALTER TABLE [dbo].[CFMACTIV] ADD CONSTRAINT [CK__CFMACTIV__LOGIND__51A5DAF8] CHECK ((datepart(hour,[LOGINDAT])=(0) AND datepart(minute,[LOGINDAT])=(0) AND datepart(second,[LOGINDAT])=(0) AND datepart(millisecond,[LOGINDAT])=(0)))
GO
ALTER TABLE [dbo].[CFMACTIV] ADD CONSTRAINT [PKCFMACTIV] PRIMARY KEY NONCLUSTERED  ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFMACTIV].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CFMACTIV].[EBS_Forecast_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CFMACTIV].[LOGINDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CFMACTIV].[LOGINTIM]'
GO
GRANT SELECT ON  [dbo].[CFMACTIV] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CFMACTIV] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CFMACTIV] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CFMACTIV] TO [DYNGRP]
GO
