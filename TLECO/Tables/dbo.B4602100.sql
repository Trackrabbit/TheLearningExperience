CREATE TABLE [dbo].[B4602100]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Customer_Type] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ParentCompanyID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SeperateInvoice] [tinyint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602100] ADD CONSTRAINT [CK__B4602100__ENDDAT__188A5D9B] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602100] ADD CONSTRAINT [CK__B4602100__STRTDA__17963962] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602100] ADD CONSTRAINT [PKB4602100] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602100].[BSSI_Customer_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602100].[BSSI_ParentCompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602100].[BSSI_SeperateInvoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602100].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602100].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[B4602100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602100] TO [DYNGRP]
GO
