CREATE TABLE [dbo].[IV50200]
(
[INCLUDEITEM] [tinyint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BINNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMCLSCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABCCODE] [smallint] NOT NULL,
[ITMGEDSC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTCNTDT] [datetime] NOT NULL,
[STCKCNTINTRVL] [smallint] NOT NULL,
[NXTCNTDT] [datetime] NOT NULL,
[NXTCNTTM] [datetime] NOT NULL,
[UPDATED] [tinyint] NOT NULL,
[ITEMTYPE] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntegerValue] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV50200] ADD CONSTRAINT [CK__IV50200__NXTCNTT__33BFA6FF] CHECK ((datepart(day,[NXTCNTTM])=(1) AND datepart(month,[NXTCNTTM])=(1) AND datepart(year,[NXTCNTTM])=(1900)))
GO
ALTER TABLE [dbo].[IV50200] ADD CONSTRAINT [CK__IV50200__LSTCNTD__31D75E8D] CHECK ((datepart(hour,[LSTCNTDT])=(0) AND datepart(minute,[LSTCNTDT])=(0) AND datepart(second,[LSTCNTDT])=(0) AND datepart(millisecond,[LSTCNTDT])=(0)))
GO
ALTER TABLE [dbo].[IV50200] ADD CONSTRAINT [CK__IV50200__NXTCNTD__32CB82C6] CHECK ((datepart(hour,[NXTCNTDT])=(0) AND datepart(minute,[NXTCNTDT])=(0) AND datepart(second,[NXTCNTDT])=(0) AND datepart(millisecond,[NXTCNTDT])=(0)))
GO
ALTER TABLE [dbo].[IV50200] ADD CONSTRAINT [PKIV50200] PRIMARY KEY NONCLUSTERED  ([USERID], [IntegerValue], [ITEMNMBR], [LOCNCODE], [BINNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV50200] ON [dbo].[IV50200] ([INCLUDEITEM], [USERID], [IntegerValue], [LOCNCODE], [BINNMBR], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV50200] ON [dbo].[IV50200] ([USERID], [IntegerValue], [LOCNCODE], [BINNMBR], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50200].[INCLUDEITEM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50200].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50200].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50200].[BINNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50200].[ITMCLSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50200].[ABCCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50200].[ITMGEDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50200].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV50200].[LSTCNTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50200].[STCKCNTINTRVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV50200].[NXTCNTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV50200].[NXTCNTTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50200].[UPDATED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50200].[ITEMTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50200].[IntegerValue]'
GO
GRANT SELECT ON  [dbo].[IV50200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV50200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV50200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV50200] TO [DYNGRP]
GO
