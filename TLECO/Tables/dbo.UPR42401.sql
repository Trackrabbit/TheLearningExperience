CREATE TABLE [dbo].[UPR42401]
(
[Restriction_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Restriction_Type] [smallint] NOT NULL,
[Per_Day_CB] [tinyint] NOT NULL,
[Per_Pay_Period_CB] [tinyint] NOT NULL,
[Required_StartStop_CB] [tinyint] NOT NULL,
[Department_CB] [tinyint] NOT NULL,
[Position_CB] [tinyint] NOT NULL,
[State_Tax_CB] [tinyint] NOT NULL,
[Local_Tax_CB] [tinyint] NOT NULL,
[Shift_CB] [tinyint] NOT NULL,
[Days_Worked_CB] [tinyint] NOT NULL,
[Weeks_Worked_CB] [tinyint] NOT NULL,
[Notes_CB] [tinyint] NOT NULL,
[Require_Electronic_Signa] [tinyint] NOT NULL,
[Per_Day_Max] [smallint] NOT NULL,
[Per_Period_Min] [smallint] NOT NULL,
[Per_Period_Max] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42401] ADD CONSTRAINT [PKUPR42401] PRIMARY KEY NONCLUSTERED  ([Restriction_Code], [Restriction_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42401].[Restriction_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Restriction_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Per_Day_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Per_Pay_Period_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Required_StartStop_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Department_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Position_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[State_Tax_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Local_Tax_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Shift_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Days_Worked_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Weeks_Worked_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Notes_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Require_Electronic_Signa]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Per_Day_Max]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Per_Period_Min]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42401].[Per_Period_Max]'
GO
GRANT SELECT ON  [dbo].[UPR42401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42401] TO [DYNGRP]
GO
