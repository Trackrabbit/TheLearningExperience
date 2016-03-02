CREATE TABLE [dbo].[PP400000]
(
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSTTUS] [smallint] NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[CNTRLTRX] [int] NOT NULL,
[CNTRLTOT] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHEMSG1] [binary] (4) NOT NULL,
[BCHEMSG2] [binary] (4) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE TRIGGER [dbo].[PP_PP400000_Delete] ON [dbo].[PP400000] FOR DELETE AS DELETE FROM PP400001 FROM PP400001 a, deleted b   WHERE a.BACHNUMB = b.BACHNUMB AND a.BCHSOURC = b.BCHSOURC DELETE FROM PP400002 FROM PP400002 a, deleted b   WHERE a.BACHNUMB = b.BACHNUMB AND a.BCHSOURC = b.BCHSOURC   
GO
ALTER TABLE [dbo].[PP400000] ADD CONSTRAINT [CK__PP400000__CREATD__3044E72D] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[PP400000] ADD CONSTRAINT [CK__PP400000__MODIFD__31390B66] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PP400000] ADD CONSTRAINT [PKPP400000] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP400000] ON [dbo].[PP400000] ([BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PP400000] ON [dbo].[PP400000] ([SERIES], [BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PP400000] ON [dbo].[PP400000] ([SERIES], [BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PP400000] ON [dbo].[PP400000] ([SERIES], [BCHSOURC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400000].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400000].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400000].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400000].[BCHSTTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400000].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400000].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP400000].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400000].[CNTRLTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP400000].[CNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP400000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP400000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP400000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400000].[BCHEMSG1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400000].[BCHEMSG2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400000].[TRXSORCE]'
GO
GRANT SELECT ON  [dbo].[PP400000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP400000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP400000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP400000] TO [DYNGRP]
GO
