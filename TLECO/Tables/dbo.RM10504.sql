CREATE TABLE [dbo].[RM10504]
(
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[NCOMAMNT] [numeric] (19, 5) NOT NULL,
[COMPRCNT] [smallint] NOT NULL,
[PRCTOSAL] [smallint] NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[COMTRSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORCOMAMT] [numeric] (19, 5) NOT NULL,
[ORNCMAMT] [numeric] (19, 5) NOT NULL,
[ORSLSAMT] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM10504] ADD CONSTRAINT [PKRM10504] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM10504] ON [dbo].[RM10504] ([COMTRSRC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1RM10504] ON [dbo].[RM10504] ([SLPRSNID], [RMDTYPAL], [DOCNUMBR], [SALSTERR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10504].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10504].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10504].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10504].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10504].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10504].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10504].[NCOMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10504].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10504].[PRCTOSAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10504].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10504].[COMTRSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10504].[ORCOMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10504].[ORNCMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10504].[ORSLSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10504].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[RM10504] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM10504] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM10504] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM10504] TO [DYNGRP]
GO
