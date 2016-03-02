CREATE TABLE [dbo].[IV40600]
(
[USCATVAL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATNUM] [smallint] NOT NULL,
[Image_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserCatLongDescr] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV40600] ADD CONSTRAINT [PKIV40600] PRIMARY KEY NONCLUSTERED  ([USCATNUM], [USCATVAL]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40600].[USCATVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40600].[USCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40600].[Image_URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40600].[UserCatLongDescr]'
GO
GRANT SELECT ON  [dbo].[IV40600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40600] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV40600] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV40600] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV40600] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV40600] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[IV40600] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[IV40600] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[IV40600] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[IV40600] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[IV40600] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[IV40600] TO [rpt_warehouse manager]
GO
