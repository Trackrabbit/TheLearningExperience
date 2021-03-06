CREATE TABLE [dbo].[IV40202]
(
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[EQUIVUOM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQUOMQTY] [numeric] (19, 5) NOT NULL,
[QTYBSUOM] [numeric] (19, 5) NOT NULL,
[UOFMLONGDESC] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__IV40202__DEX_ROW__53C3F8EB] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV40202C] ON [dbo].[IV40202] AFTER INSERT AS set nocount on BEGIN UPDATE dbo.IV40201 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV40201, inserted WHERE IV40201.UOMSCHDL = inserted.UOMSCHDL END set nocount off   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV40202D] ON [dbo].[IV40202] AFTER DELETE AS set nocount on BEGIN UPDATE dbo.IV40201 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV40201, deleted WHERE IV40201.UOMSCHDL = deleted.UOMSCHDL END set nocount off   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV40202U] ON [dbo].[IV40202] AFTER UPDATE AS  set nocount on BEGIN  UPDATE dbo.IV40202 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV40202, inserted WHERE IV40202.UOMSCHDL = inserted.UOMSCHDL AND IV40202.SEQNUMBR = inserted.SEQNUMBR  UPDATE dbo.IV40201 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV40201, inserted WHERE IV40201.UOMSCHDL = inserted.UOMSCHDL END set nocount off    
GO
ALTER TABLE [dbo].[IV40202] ADD CONSTRAINT [PKIV40202] PRIMARY KEY CLUSTERED  ([UOMSCHDL], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV40202] ON [dbo].[IV40202] ([UOMSCHDL], [EQUIVUOM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV40202] ON [dbo].[IV40202] ([UOMSCHDL], [QTYBSUOM], [UOFM], [EQUIVUOM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV40202] ON [dbo].[IV40202] ([UOMSCHDL], [UOFM], [EQUIVUOM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40202].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40202].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40202].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40202].[EQUIVUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV40202].[EQUOMQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV40202].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40202].[UOFMLONGDESC]'
GO
GRANT SELECT ON  [dbo].[IV40202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40202] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV40202] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV40202] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV40202] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV40202] TO [RAPIDGRP]
GO
