CREATE TABLE [dbo].[PA00002]
(
[INDEX1] [smallint] NOT NULL,
[paNextDocumentNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[paAutoCreateVendors] [tinyint] NOT NULL,
[paAutoCreateCustomerVend] [tinyint] NOT NULL,
[paCreateVendorType] [smallint] NOT NULL,
[paDefaultVendorClass] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paNextVendorID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paDebitDescriptionPrefix] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paVoucherDescrPrefix] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paAutoOpenSelectChecks] [tinyint] NOT NULL,
[paIntegrateEFT] [tinyint] NOT NULL,
[paCreateCustomerType] [smallint] NOT NULL,
[paDefaultCustomerClass] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paNextCustomerID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paPMPrefix] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paPMNextDocument] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paRMPrefix] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paConsolidationIndex] [int] NOT NULL,
[CRTMPVND] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PA00002] ADD CONSTRAINT [PKPA00002] PRIMARY KEY NONCLUSTERED  ([INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paNextDocumentNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[paAutoCreateVendors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[paAutoCreateCustomerVend]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[paCreateVendorType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paDefaultVendorClass]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paNextVendorID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paDebitDescriptionPrefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paVoucherDescrPrefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[paAutoOpenSelectChecks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[paIntegrateEFT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[paCreateCustomerType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paDefaultCustomerClass]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paNextCustomerID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paPMPrefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paPMNextDocument]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PA00002].[paRMPrefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[paConsolidationIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PA00002].[CRTMPVND]'
GO
GRANT SELECT ON  [dbo].[PA00002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PA00002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PA00002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PA00002] TO [DYNGRP]
GO
