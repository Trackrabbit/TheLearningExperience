CREATE TABLE [dbo].[B0510040]
(
[MJW_Redemption_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Reason] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Category] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID_From] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID_To] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510040] ADD CONSTRAINT [PKB0510040] PRIMARY KEY NONCLUSTERED  ([MJW_Redemption_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510040] ON [dbo].[B0510040] ([MJW_Redemption_Category], [MJW_Redemption_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510040].[MJW_Redemption_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510040].[MJW_Redemption_Reason]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510040].[MJW_Redemption_Category]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510040].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510040].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510040].[MJW_Series_ID_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510040].[MJW_Series_ID_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510040].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510040] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510040] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510040] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510040] TO [DYNGRP]
GO
