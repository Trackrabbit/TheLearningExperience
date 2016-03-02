CREATE TABLE [dbo].[MS273503]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_UserCanSelect] [tinyint] NOT NULL,
[MSO_AllowCredit] [tinyint] NOT NULL,
[MSO_AllowForce] [tinyint] NOT NULL,
[MSO_AllowSale] [tinyint] NOT NULL,
[MSO_AllowVoid] [tinyint] NOT NULL,
[MSO_AllowBook] [tinyint] NOT NULL,
[MSO_AllowShip] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273503] ADD CONSTRAINT [PKMS273503] PRIMARY KEY NONCLUSTERED  ([USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MS273503] ON [dbo].[MS273503] ([MSO_EngineGUID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273503].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273503].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273503].[MSO_UserCanSelect]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273503].[MSO_AllowCredit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273503].[MSO_AllowForce]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273503].[MSO_AllowSale]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273503].[MSO_AllowVoid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273503].[MSO_AllowBook]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273503].[MSO_AllowShip]'
GO
GRANT SELECT ON  [dbo].[MS273503] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273503] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273503] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273503] TO [DYNGRP]
GO
