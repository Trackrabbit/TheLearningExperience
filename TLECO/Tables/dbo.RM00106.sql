CREATE TABLE [dbo].[RM00106]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email_Type] [smallint] NOT NULL,
[Email_Recipient] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00106] ADD CONSTRAINT [PKRM00106] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR], [Email_Type], [Email_Recipient]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00106].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00106].[Email_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00106].[Email_Recipient]'
GO
GRANT SELECT ON  [dbo].[RM00106] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00106] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00106] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00106] TO [DYNGRP]
GO
