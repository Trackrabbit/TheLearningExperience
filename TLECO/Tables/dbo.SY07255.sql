CREATE TABLE [dbo].[SY07255]
(
[ActionStatusID] [int] NOT NULL,
[ORD] [int] NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERRVAL] [int] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Date01] [datetime] NOT NULL,
[User_Defined_Date02] [datetime] NOT NULL,
[User_Defined_LongInt01] [int] NOT NULL,
[User_Defined_LongInt02] [int] NOT NULL,
[User_Defined_Text01] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text02] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text03] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text04] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text05] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VERIFIED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07255] ADD CONSTRAINT [CK__SY07255__User_De__7E2D9D55] CHECK ((datepart(hour,[User_Defined_Date01])=(0) AND datepart(minute,[User_Defined_Date01])=(0) AND datepart(second,[User_Defined_Date01])=(0) AND datepart(millisecond,[User_Defined_Date01])=(0)))
GO
ALTER TABLE [dbo].[SY07255] ADD CONSTRAINT [CK__SY07255__User_De__7F21C18E] CHECK ((datepart(hour,[User_Defined_Date02])=(0) AND datepart(minute,[User_Defined_Date02])=(0) AND datepart(second,[User_Defined_Date02])=(0) AND datepart(millisecond,[User_Defined_Date02])=(0)))
GO
ALTER TABLE [dbo].[SY07255] ADD CONSTRAINT [PKSY07255] PRIMARY KEY NONCLUSTERED  ([ActionStatusID], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07255].[ActionStatusID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07255].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07255].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07255].[ERRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07255].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07255].[User_Defined_Date01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY07255].[User_Defined_Date02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07255].[User_Defined_LongInt01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07255].[User_Defined_LongInt02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07255].[User_Defined_Text01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07255].[User_Defined_Text02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07255].[User_Defined_Text03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07255].[User_Defined_Text04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07255].[User_Defined_Text05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07255].[VERIFIED]'
GO
GRANT SELECT ON  [dbo].[SY07255] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07255] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07255] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07255] TO [DYNGRP]
GO
