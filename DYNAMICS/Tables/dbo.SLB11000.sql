CREATE TABLE [dbo].[SLB11000]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Additional_Table_Number] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[TABLTECH] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TABLDESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB11000] ADD CONSTRAINT [PKSLB11000] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [Table_Number], [Additional_Table_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SLB11000] ON [dbo].[SLB11000] ([SmartList_ID], [Table_Number], [PRODID], [TABLTECH]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11000].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11000].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11000].[Additional_Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11000].[TABLTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11000].[TABLDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11000].[TBLPHYSNM]'
GO
GRANT SELECT ON  [dbo].[SLB11000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB11000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB11000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB11000] TO [DYNGRP]
GO
