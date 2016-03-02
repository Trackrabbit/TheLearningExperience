CREATE TABLE [dbo].[B4640039]
(
[BSSI_Building_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PropertyAttribute] [smallint] NOT NULL,
[BSSI_PropertyAttrOldVal] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PropertyAttrNewVal] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Comment] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640039] ADD CONSTRAINT [CK__B4640039__DATE1__4473017A] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4640039] ADD CONSTRAINT [CK__B4640039__Effect__456725B3] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640039] ADD CONSTRAINT [PKB4640039] PRIMARY KEY CLUSTERED  ([BSSI_Building_ID], [BSSI_PropertyAttribute], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640039].[BSSI_Building_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640039].[BSSI_PropertyAttribute]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640039].[BSSI_PropertyAttrOldVal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640039].[BSSI_PropertyAttrNewVal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640039].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640039].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640039].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640039].[BSSI_Comment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640039].[Effective_Date]'
GO
GRANT SELECT ON  [dbo].[B4640039] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640039] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640039] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640039] TO [DYNGRP]
GO
