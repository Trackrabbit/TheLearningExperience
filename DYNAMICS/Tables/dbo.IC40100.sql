CREATE TABLE [dbo].[IC40100]
(
[ORCOMID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTCOMID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORGFRIDX] [int] NOT NULL,
[ORGTOIDX] [int] NOT NULL,
[DSTFRIDX] [int] NOT NULL,
[DSTTOIDX] [int] NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IC40100] ADD CONSTRAINT [CK__IC40100__CREATDD__29572725] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[IC40100] ADD CONSTRAINT [CK__IC40100__MODIFDT__2A4B4B5E] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[IC40100] ADD CONSTRAINT [PKIC40100] PRIMARY KEY NONCLUSTERED  ([ORCOMID], [DSTCOMID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IC40100].[ORCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IC40100].[DSTCOMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IC40100].[ORGFRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IC40100].[ORGTOIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IC40100].[DSTFRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IC40100].[DSTTOIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IC40100].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IC40100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IC40100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IC40100].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[IC40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IC40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IC40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IC40100] TO [DYNGRP]
GO
