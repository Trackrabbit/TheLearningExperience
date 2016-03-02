CREATE TABLE [dbo].[MS273514]
(
[MSO_Transfer_Date] [datetime] NOT NULL,
[MSO_Transfer_Time] [datetime] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTX2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_TrxType] [int] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[MSO_New_SOP_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_New_SOP_Type] [smallint] NOT NULL,
[MSO_PreAuthorize_Amount] [numeric] (19, 5) NOT NULL,
[MSO_BookAmount] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCRDAMT] [numeric] (19, 5) NOT NULL,
[USERDATE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273514] ADD CONSTRAINT [CK__MS273514__MSO_Tr__1AD82821] CHECK ((datepart(day,[MSO_Transfer_Time])=(1) AND datepart(month,[MSO_Transfer_Time])=(1) AND datepart(year,[MSO_Transfer_Time])=(1900)))
GO
ALTER TABLE [dbo].[MS273514] ADD CONSTRAINT [CK__MS273514__MSO_Tr__19E403E8] CHECK ((datepart(hour,[MSO_Transfer_Date])=(0) AND datepart(minute,[MSO_Transfer_Date])=(0) AND datepart(second,[MSO_Transfer_Date])=(0) AND datepart(millisecond,[MSO_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[MS273514] ADD CONSTRAINT [CK__MS273514__USERDA__1BCC4C5A] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[MS273514] ADD CONSTRAINT [PKMS273514] PRIMARY KEY NONCLUSTERED  ([MSO_Transfer_Date], [MSO_Transfer_Time], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273514].[MSO_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273514].[MSO_Transfer_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273514].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[ERMSGTX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273514].[MSO_TrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273514].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[MSO_New_SOP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273514].[MSO_New_SOP_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273514].[MSO_PreAuthorize_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[MSO_BookAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273514].[CRCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273514].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273514].[USERID]'
GO
GRANT SELECT ON  [dbo].[MS273514] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273514] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273514] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273514] TO [DYNGRP]
GO
