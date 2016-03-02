CREATE TABLE [dbo].[SY08140]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[TYPEID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[DSPLNAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbTargetStringOne] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbTargetStringTwo] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbTargetStringThree] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScbTargetLongOne] [int] NOT NULL,
[ScbTargetLongTwo] [int] NOT NULL,
[ScbTargetLongThree] [int] NOT NULL,
[ScbTargetLongFour] [int] NOT NULL,
[ScbTargetLongFive] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY08140] ADD CONSTRAINT [PKSY08140] PRIMARY KEY NONCLUSTERED  ([USERID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08140].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[TYPEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[CmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08140].[DSPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08140].[ScbTargetStringOne]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08140].[ScbTargetStringTwo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08140].[ScbTargetStringThree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[ScbTargetLongOne]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[ScbTargetLongTwo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[ScbTargetLongThree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[ScbTargetLongFour]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08140].[ScbTargetLongFive]'
GO
GRANT SELECT ON  [dbo].[SY08140] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY08140] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY08140] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY08140] TO [DYNGRP]
GO
