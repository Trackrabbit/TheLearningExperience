CREATE TABLE [dbo].[SVC00310]
(
[EQUIPID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Customer_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Customer_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Config_Reference] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Config_Reference] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Confg_Level] [smallint] NOT NULL,
[To_Config_Level] [smallint] NOT NULL,
[From_Config_Sequence] [smallint] NOT NULL,
[To_Config_Sequence] [smallint] NOT NULL,
[From_Serial_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Serial_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Item_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[To_Item_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00310] ADD CONSTRAINT [CK__SVC00310__TIME1__1A7FC340] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00310] ADD CONSTRAINT [CK__SVC00310__DATE1__198B9F07] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SVC00310] ADD CONSTRAINT [PKSVC00310] PRIMARY KEY CLUSTERED  ([EQUIPID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00310].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00310].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00310].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00310].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[From_Customer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[To_Customer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[From_Config_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[To_Config_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00310].[From_Confg_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00310].[To_Config_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00310].[From_Config_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00310].[To_Config_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[From_Serial_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[To_Serial_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[From_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[To_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00310].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[SVC00310] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00310] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00310] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00310] TO [DYNGRP]
GO
