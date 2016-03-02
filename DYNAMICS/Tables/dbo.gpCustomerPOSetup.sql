CREATE TABLE [dbo].[gpCustomerPOSetup]
(
[SOPTYPE] [smallint] NOT NULL,
[gpCheckType] [tinyint] NOT NULL,
[gpCheckTypeWindow] [tinyint] NOT NULL,
[MakeRequired] [tinyint] NOT NULL,
[WarningLevel] [smallint] NOT NULL,
[gpWarningMessage] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CheckWorkAndHistory] [smallint] NOT NULL,
[PASSWORD] [binary] (16) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gpCustomerPOSetup] ADD CONSTRAINT [PKgpCustomerPOSetup] PRIMARY KEY NONCLUSTERED  ([SOPTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpCustomerPOSetup].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpCustomerPOSetup].[gpCheckType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpCustomerPOSetup].[gpCheckTypeWindow]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpCustomerPOSetup].[MakeRequired]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpCustomerPOSetup].[WarningLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gpCustomerPOSetup].[gpWarningMessage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpCustomerPOSetup].[CheckWorkAndHistory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpCustomerPOSetup].[PASSWORD]'
GO
GRANT SELECT ON  [dbo].[gpCustomerPOSetup] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gpCustomerPOSetup] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gpCustomerPOSetup] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gpCustomerPOSetup] TO [DYNGRP]
GO
