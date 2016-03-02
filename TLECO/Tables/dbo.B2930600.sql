CREATE TABLE [dbo].[B2930600]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[BSSI_Journal_Entry] [int] NOT NULL,
[BSSI_Journal_Entry_Accru] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930600] ADD CONSTRAINT [PKB2930600] PRIMARY KEY CLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930600].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930600].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930600].[BSSI_Journal_Entry]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930600].[BSSI_Journal_Entry_Accru]'
GO
GRANT SELECT ON  [dbo].[B2930600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930600] TO [DYNGRP]
GO
