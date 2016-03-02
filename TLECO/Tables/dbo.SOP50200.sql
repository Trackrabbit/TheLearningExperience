CREATE TABLE [dbo].[SOP50200]
(
[DOCTYPE] [smallint] NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DOCPRINTSEQ] [int] NOT NULL,
[ShipToName] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Reprint] [tinyint] NOT NULL,
[Email_Type] [smallint] NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP50200] ADD CONSTRAINT [PKSOP50200] PRIMARY KEY NONCLUSTERED  ([USERID], [SEQNUMBR], [DOCTYPE], [LOCNCODE], [DOCPRINTSEQ], [SOPTYPE], [SOPNUMBE], [Email_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP50200] ON [dbo].[SOP50200] ([USERID], [SEQNUMBR], [DOCTYPE], [CUSTNMBR], [LOCNCODE], [DOCPRINTSEQ], [SOPTYPE], [SOPNUMBE], [Email_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50200].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50200].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50200].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50200].[DOCPRINTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[ShipToName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50200].[Reprint]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50200].[Email_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50200].[PHONNAME]'
GO
GRANT SELECT ON  [dbo].[SOP50200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP50200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP50200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP50200] TO [DYNGRP]
GO
