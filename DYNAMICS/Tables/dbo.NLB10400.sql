CREATE TABLE [dbo].[NLB10400]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ribbon_Command_Group] [smallint] NOT NULL,
[Command_Number] [smallint] NOT NULL,
[Command_Description] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Command_Type] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[PRCDNAME] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ribbon_Button_Size] [smallint] NOT NULL,
[Ribbon_Button_Priority] [smallint] NOT NULL,
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPRTFTYP] [smallint] NOT NULL,
[Action_Type] [smallint] NOT NULL,
[Drill_Down_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB10400] ADD CONSTRAINT [PKNLB10400] PRIMARY KEY CLUSTERED  ([Navigation_ID], [Ribbon_Command_Group], [Command_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Ribbon_Command_Group]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Command_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[Command_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Command_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[FORMNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[PRCDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Ribbon_Button_Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Ribbon_Button_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[RPRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[XPRTFTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10400].[Action_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10400].[Drill_Down_ID]'
GO
GRANT SELECT ON  [dbo].[NLB10400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10400] TO [DYNGRP]
GO
