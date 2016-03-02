CREATE TABLE [dbo].[AAG00404]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeDateID] [int] NOT NULL,
[aaTrxDimCodeDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00404] ADD CONSTRAINT [CK__AAG00404__aaTrxD__5729AA24] CHECK ((datepart(hour,[aaTrxDimCodeDate])=(0) AND datepart(minute,[aaTrxDimCodeDate])=(0) AND datepart(second,[aaTrxDimCodeDate])=(0) AND datepart(millisecond,[aaTrxDimCodeDate])=(0)))
GO
ALTER TABLE [dbo].[AAG00404] ADD CONSTRAINT [PKAAG00404] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaTrxDimCodeDateID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00404] ON [dbo].[AAG00404] ([aaTrxDimID], [aaTrxDimCodeDate]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00404].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00404].[aaTrxDimCodeDateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00404].[aaTrxDimCodeDate]'
GO
GRANT SELECT ON  [dbo].[AAG00404] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00404] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00404] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00404] TO [DYNGRP]
GO
