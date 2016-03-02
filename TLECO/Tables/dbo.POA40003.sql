CREATE TABLE [dbo].[POA40003]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATGRP] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[POA_Created_By] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POA_PO_Approval_Status] [smallint] NOT NULL,
[REMSUBTO] [numeric] (19, 5) NOT NULL,
[POA_Approved_By] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPRVLDT] [datetime] NOT NULL,
[POA_Approval_Time] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POA40003] ADD CONSTRAINT [CK__POA40003__POA_Ap__6A7188C2] CHECK ((datepart(day,[POA_Approval_Time])=(1) AND datepart(month,[POA_Approval_Time])=(1) AND datepart(year,[POA_Approval_Time])=(1900)))
GO
ALTER TABLE [dbo].[POA40003] ADD CONSTRAINT [CK__POA40003__APPRVL__68894050] CHECK ((datepart(hour,[APPRVLDT])=(0) AND datepart(minute,[APPRVLDT])=(0) AND datepart(second,[APPRVLDT])=(0) AND datepart(millisecond,[APPRVLDT])=(0)))
GO
ALTER TABLE [dbo].[POA40003] ADD CONSTRAINT [CK__POA40003__DOCDAT__697D6489] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[POA40003] ADD CONSTRAINT [PKPOA40003] PRIMARY KEY NONCLUSTERED  ([PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7POA40003] ON [dbo].[POA40003] ([POA_Created_By], [POA_PO_Approval_Status], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5POA40003] ON [dbo].[POA40003] ([POA_Created_By], [POA_PO_Approval_Status], [PONUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6POA40003] ON [dbo].[POA40003] ([POA_Created_By], [POA_PO_Approval_Status], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POA40003] ON [dbo].[POA40003] ([POA_PO_Approval_Status], [STATGRP], [POA_Created_By], [REMSUBTO], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POA40003] ON [dbo].[POA40003] ([POA_PO_Approval_Status], [STATGRP], [PONUMBER], [REMSUBTO], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POA40003] ON [dbo].[POA40003] ([POA_PO_Approval_Status], [STATGRP], [VENDORID], [REMSUBTO], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POA40003].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POA40003].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POA40003].[STATGRP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POA40003].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POA40003].[POA_Created_By]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POA40003].[POA_PO_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POA40003].[REMSUBTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POA40003].[POA_Approved_By]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POA40003].[APPRVLDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POA40003].[POA_Approval_Time]'
GO
GRANT SELECT ON  [dbo].[POA40003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POA40003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POA40003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POA40003] TO [DYNGRP]
GO
