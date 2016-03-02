CREATE TABLE [dbo].[WDC41300]
(
[Field_Security_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Security_Descripti] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WDC_Dict] [smallint] NOT NULL,
[WDC_Form] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WDC_Window] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WDC_Field] [char] (93) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WDC_Table] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WDC_Dictionary_Sort] [char] (241) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WDC_Security_Mode] [smallint] NOT NULL,
[Password_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WDC_Conditional] [tinyint] NOT NULL,
[WDC_Script_Dict] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[WDC_Script] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WDC41300] ADD CONSTRAINT [CK__WDC41300__CREATD__58671BC9] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[WDC41300] ADD CONSTRAINT [CK__WDC41300__MODIFD__595B4002] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[WDC41300] ADD CONSTRAINT [PKWDC41300] PRIMARY KEY NONCLUSTERED  ([Field_Security_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WDC41300] ON [dbo].[WDC41300] ([Field_Security_Descripti], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4WDC41300] ON [dbo].[WDC41300] ([Password_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5WDC41300] ON [dbo].[WDC41300] ([SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WDC41300] ON [dbo].[WDC41300] ([WDC_Dictionary_Sort], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[Field_Security_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[Field_Security_Descripti]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41300].[WDC_Dict]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[WDC_Form]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[WDC_Window]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[WDC_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[WDC_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[WDC_Dictionary_Sort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41300].[WDC_Security_Mode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[Password_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41300].[WDC_Conditional]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41300].[WDC_Script_Dict]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC41300].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[WDC41300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WDC41300].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WDC41300].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WDC41300].[LSTUSRED]'
GO
GRANT SELECT ON  [dbo].[WDC41300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WDC41300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WDC41300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WDC41300] TO [DYNGRP]
GO
