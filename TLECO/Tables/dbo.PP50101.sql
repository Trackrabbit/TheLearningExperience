CREATE TABLE [dbo].[PP50101]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[OFFINDX] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[GLLINMSG] [binary] (4) NOT NULL,
[GLLINMS2] [binary] (4) NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[FUNCRIDX] [smallint] NOT NULL,
[ORIGAMT] [numeric] (19, 5) NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP50101] ADD CONSTRAINT [CK__PP50101__DOCDATE__39CE5167] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PP50101] ADD CONSTRAINT [CK__PP50101__TRXDATE__3AC275A0] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[PP50101] ADD CONSTRAINT [PKPP50101] PRIMARY KEY CLUSTERED  ([USERID], [BCHSOURC], [BACHNUMB], [JRNENTRY], [SQNCLINE], [CURNCYID], [ACTINDX], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PP50101] ON [dbo].[PP50101] ([USERID], [DOCNUMBR], [BCHSOURC], [BACHNUMB], [JRNENTRY], [SQNCLINE], [CURNCYID], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP50101].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP50101].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[GLLINMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[GLLINMS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP50101].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP50101].[FUNCRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP50101].[ORIGAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP50101].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP50101].[DOCDATE]'
GO
GRANT SELECT ON  [dbo].[PP50101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP50101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP50101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP50101] TO [DYNGRP]
GO
