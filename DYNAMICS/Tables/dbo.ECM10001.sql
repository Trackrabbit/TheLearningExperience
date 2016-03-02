CREATE TABLE [dbo].[ECM10001]
(
[CompanyID] [int] NOT NULL,
[ReqID] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SequenceID] [int] NOT NULL,
[PONumber] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Item] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GenericDescription] [char] (53) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ReqVendor] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RequiredBy] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ECM10001] ADD CONSTRAINT [CK__ECM10001__Requir__3F9B6DFF] CHECK ((datepart(hour,[RequiredBy])=(0) AND datepart(minute,[RequiredBy])=(0) AND datepart(second,[RequiredBy])=(0) AND datepart(millisecond,[RequiredBy])=(0)))
GO
ALTER TABLE [dbo].[ECM10001] ADD CONSTRAINT [PKECM10001] PRIMARY KEY CLUSTERED  ([CompanyID], [ReqID], [SequenceID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10001].[CompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10001].[ReqID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10001].[SequenceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10001].[PONumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10001].[Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10001].[GenericDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10001].[ReqVendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ECM10001].[RequiredBy]'
GO
GRANT SELECT ON  [dbo].[ECM10001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ECM10001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ECM10001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ECM10001] TO [DYNGRP]
GO
