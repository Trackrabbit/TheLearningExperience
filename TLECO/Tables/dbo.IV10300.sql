CREATE TABLE [dbo].[IV10300]
(
[STCKCNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCKCNTDSCRPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCKCNTSTTS] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CNTSTRTDT] [datetime] NOT NULL,
[CNTSTRTTM] [datetime] NOT NULL,
[ATPSTVRNC] [tinyint] NOT NULL,
[RSSTCKCNT] [tinyint] NOT NULL,
[DFLTCNTDT] [datetime] NOT NULL,
[DFLTCNTTM] [datetime] NOT NULL,
[LSTCNTDT] [datetime] NOT NULL,
[ENABLEMULTIBIN] [tinyint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [CK__IV10300__CNTSTRT__3F6663D5] CHECK ((datepart(day,[CNTSTRTTM])=(1) AND datepart(month,[CNTSTRTTM])=(1) AND datepart(year,[CNTSTRTTM])=(1900)))
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [CK__IV10300__DFLTCNT__414EAC47] CHECK ((datepart(day,[DFLTCNTTM])=(1) AND datepart(month,[DFLTCNTTM])=(1) AND datepart(year,[DFLTCNTTM])=(1900)))
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [CK__IV10300__CNTSTRT__3E723F9C] CHECK ((datepart(hour,[CNTSTRTDT])=(0) AND datepart(minute,[CNTSTRTDT])=(0) AND datepart(second,[CNTSTRTDT])=(0) AND datepart(millisecond,[CNTSTRTDT])=(0)))
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [CK__IV10300__DFLTCNT__405A880E] CHECK ((datepart(hour,[DFLTCNTDT])=(0) AND datepart(minute,[DFLTCNTDT])=(0) AND datepart(second,[DFLTCNTDT])=(0) AND datepart(millisecond,[DFLTCNTDT])=(0)))
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [CK__IV10300__DOCDATE__4242D080] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [CK__IV10300__GLPOSTD__4336F4B9] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [CK__IV10300__LSTCNTD__442B18F2] CHECK ((datepart(hour,[LSTCNTDT])=(0) AND datepart(minute,[LSTCNTDT])=(0) AND datepart(second,[LSTCNTDT])=(0) AND datepart(millisecond,[LSTCNTDT])=(0)))
GO
ALTER TABLE [dbo].[IV10300] ADD CONSTRAINT [PKIV10300] PRIMARY KEY NONCLUSTERED  ([STCKCNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV10300] ON [dbo].[IV10300] ([LSTCNTDT], [STCKCNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10300] ON [dbo].[IV10300] ([STCKCNTDSCRPTN], [STCKCNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV10300] ON [dbo].[IV10300] ([STCKCNTSTTS], [STCKCNTID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10300].[STCKCNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10300].[STCKCNTDSCRPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10300].[STCKCNTSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10300].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10300].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10300].[CNTSTRTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10300].[CNTSTRTTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10300].[ATPSTVRNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10300].[RSSTCKCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10300].[DFLTCNTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10300].[DFLTCNTTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10300].[LSTCNTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10300].[ENABLEMULTIBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10300].[LOCNCODE]'
GO
GRANT SELECT ON  [dbo].[IV10300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10300] TO [DYNGRP]
GO
