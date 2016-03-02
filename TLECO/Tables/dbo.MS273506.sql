CREATE TABLE [dbo].[MS273506]
(
[MSO_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Doc_Type] [smallint] NOT NULL,
[MSO_Batch_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Batch_Source] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Source_Of_Document] [smallint] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[MSO_BillToGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ShipToGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273506] ADD CONSTRAINT [CK__MS273506__DOCDAT__458D7BFC] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[MS273506] ADD CONSTRAINT [PKMS273506] PRIMARY KEY NONCLUSTERED  ([MSO_Doc_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[MSO_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273506].[MSO_Doc_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[MSO_Batch_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[MSO_Batch_Source]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273506].[MSO_Source_Of_Document]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273506].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[MSO_BillToGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[MSO_ShipToGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273506].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273506].[CURNCYID]'
GO
GRANT SELECT ON  [dbo].[MS273506] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273506] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273506] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273506] TO [DYNGRP]
GO
