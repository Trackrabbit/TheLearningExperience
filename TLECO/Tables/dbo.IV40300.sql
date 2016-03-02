CREATE TABLE [dbo].[IV40300]
(
[Reason_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Reason_Code_Description] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[Types_of_Adj_Var] [smallint] NOT NULL,
[Adjustment] [tinyint] NOT NULL,
[Variance] [tinyint] NOT NULL,
[OFFINDX] [int] NOT NULL,
[Item_Transfer] [tinyint] NOT NULL,
[InTransit_Transfer] [tinyint] NOT NULL,
[Item_Bin_Transfer] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV40300] ADD CONSTRAINT [CK__IV40300__CREATDD__0D99FE17] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[IV40300] ADD CONSTRAINT [PKIV40300] PRIMARY KEY CLUSTERED  ([Reason_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV40300] ON [dbo].[IV40300] ([Reason_Code_Description], [Reason_Code], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40300].[Reason_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40300].[Reason_Code_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[Types_of_Adj_Var]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[Adjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[Variance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[Item_Transfer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[InTransit_Transfer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40300].[Item_Bin_Transfer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV40300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV40300].[CREATDDT]'
GO
GRANT SELECT ON  [dbo].[IV40300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40300] TO [DYNGRP]
GO
