CREATE TABLE [dbo].[CM10100]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[depositnumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPTYPE] [smallint] NOT NULL,
[DEPWTHRCT] [tinyint] NOT NULL,
[DEPDATE] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[DepAmt] [numeric] (19, 5) NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[RCRDSTTS] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM10100] ADD CONSTRAINT [CK__CM10100__TIME1__1CBC4616] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CM10100] ADD CONSTRAINT [CK__CM10100__DEPDATE__17F790F9] CHECK ((datepart(hour,[DEPDATE])=(0) AND datepart(minute,[DEPDATE])=(0) AND datepart(second,[DEPDATE])=(0) AND datepart(millisecond,[DEPDATE])=(0)))
GO
ALTER TABLE [dbo].[CM10100] ADD CONSTRAINT [CK__CM10100__EXCHDAT__18EBB532] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[CM10100] ADD CONSTRAINT [CK__CM10100__EXPNDAT__19DFD96B] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[CM10100] ADD CONSTRAINT [CK__CM10100__GLPOSTD__1AD3FDA4] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[CM10100] ADD CONSTRAINT [CK__CM10100__MODIFDT__1BC821DD] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[CM10100] ADD CONSTRAINT [PKCM10100] PRIMARY KEY NONCLUSTERED  ([CHEKBKID], [depositnumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM10100] ON [dbo].[CM10100] ([CHEKBKID], [DEPWTHRCT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[depositnumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10100].[DEPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10100].[DEPWTHRCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10100].[DEPDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10100].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10100].[DepAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10100].[RCRDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10100].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10100].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10100].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10100].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10100].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10100].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10100].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10100].[MCTRXSTT]'
GO
GRANT SELECT ON  [dbo].[CM10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM10100] TO [DYNGRP]
GO
