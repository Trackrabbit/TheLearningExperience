CREATE TABLE [dbo].[CPO40001]
(
[CMPANYID] [smallint] NOT NULL,
[Commitment_Approval] [tinyint] NOT NULL,
[Track_Commitment] [tinyint] NOT NULL,
[BUDPWRD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Approval_Type] [smallint] NOT NULL,
[Approval_Variance] [tinyint] NOT NULL,
[Approval_Variance_Type] [smallint] NOT NULL,
[Variance_Amount] [numeric] (19, 5) NOT NULL,
[CPOP_Variance_Percentage] [numeric] (19, 5) NOT NULL,
[Approval_Password] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CPO40001] ADD CONSTRAINT [PKCPO40001] PRIMARY KEY NONCLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO40001].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO40001].[Commitment_Approval]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO40001].[Track_Commitment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CPO40001].[BUDPWRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO40001].[Approval_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO40001].[Approval_Variance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO40001].[Approval_Variance_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CPO40001].[Variance_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CPO40001].[CPOP_Variance_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CPO40001].[Approval_Password]'
GO
GRANT SELECT ON  [dbo].[CPO40001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CPO40001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CPO40001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CPO40001] TO [DYNGRP]
GO
