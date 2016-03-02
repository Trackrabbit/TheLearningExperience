CREATE TABLE [dbo].[HRPS0400]
(
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pay_Step_Table_Desc] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pay_Step_Unit_Of_Pay] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPS0400] ADD CONSTRAINT [PKHRPS0400] PRIMARY KEY NONCLUSTERED  ([PYSTPTBLID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPS0400].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPS0400].[Pay_Step_Table_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRPS0400].[Pay_Step_Unit_Of_Pay]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPS0400].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[HRPS0400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPS0400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPS0400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPS0400] TO [DYNGRP]
GO
