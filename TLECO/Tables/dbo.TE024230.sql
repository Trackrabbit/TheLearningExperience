CREATE TABLE [dbo].[TE024230]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TERMINATIONDATE_I] [datetime] NOT NULL,
[TERMINATED_I] [tinyint] NOT NULL,
[TERMSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TERMSETUPNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEIN_I] [datetime] NOT NULL,
[DATEOUT_I] [datetime] NOT NULL,
[CLOSEDBY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEOFLASTCHANGE_I] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXITINTERVIEWDATE_I] [datetime] NOT NULL,
[REHIRE_I] [tinyint] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX2_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TE024230] ADD CONSTRAINT [CK__TE024230__DATEIN__3C36205A] CHECK ((datepart(hour,[DATEIN_I])=(0) AND datepart(minute,[DATEIN_I])=(0) AND datepart(second,[DATEIN_I])=(0) AND datepart(millisecond,[DATEIN_I])=(0)))
GO
ALTER TABLE [dbo].[TE024230] ADD CONSTRAINT [CK__TE024230__DATEOF__3D2A4493] CHECK ((datepart(hour,[DATEOFLASTCHANGE_I])=(0) AND datepart(minute,[DATEOFLASTCHANGE_I])=(0) AND datepart(second,[DATEOFLASTCHANGE_I])=(0) AND datepart(millisecond,[DATEOFLASTCHANGE_I])=(0)))
GO
ALTER TABLE [dbo].[TE024230] ADD CONSTRAINT [CK__TE024230__DATEOU__3E1E68CC] CHECK ((datepart(hour,[DATEOUT_I])=(0) AND datepart(minute,[DATEOUT_I])=(0) AND datepart(second,[DATEOUT_I])=(0) AND datepart(millisecond,[DATEOUT_I])=(0)))
GO
ALTER TABLE [dbo].[TE024230] ADD CONSTRAINT [CK__TE024230__EXITIN__3F128D05] CHECK ((datepart(hour,[EXITINTERVIEWDATE_I])=(0) AND datepart(minute,[EXITINTERVIEWDATE_I])=(0) AND datepart(second,[EXITINTERVIEWDATE_I])=(0) AND datepart(millisecond,[EXITINTERVIEWDATE_I])=(0)))
GO
ALTER TABLE [dbo].[TE024230] ADD CONSTRAINT [CK__TE024230__TERMIN__4006B13E] CHECK ((datepart(hour,[TERMINATIONDATE_I])=(0) AND datepart(minute,[TERMINATIONDATE_I])=(0) AND datepart(second,[TERMINATIONDATE_I])=(0) AND datepart(millisecond,[TERMINATIONDATE_I])=(0)))
GO
ALTER TABLE [dbo].[TE024230] ADD CONSTRAINT [PKTE024230] PRIMARY KEY CLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2TE024230] ON [dbo].[TE024230] ([TERMINATED_I], [TERMINATIONDATE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TE024230].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TE024230].[TERMINATIONDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TE024230].[TERMINATED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TE024230].[TERMSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TE024230].[TERMSETUPNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TE024230].[DATEIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TE024230].[DATEOUT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TE024230].[CLOSEDBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TE024230].[DATEOFLASTCHANGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TE024230].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TE024230].[EXITINTERVIEWDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TE024230].[REHIRE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TE024230].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TE024230].[NOTESINDEX2_I]'
GO
GRANT SELECT ON  [dbo].[TE024230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TE024230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TE024230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TE024230] TO [DYNGRP]
GO
