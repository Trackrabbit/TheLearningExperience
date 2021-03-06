CREATE TABLE [dbo].[TA60100]
(
[TRKUSER] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[SRBCHSEC_1] [binary] (4) NOT NULL,
[SRBCHSEC_2] [binary] (4) NOT NULL,
[SRBCHSEC_3] [binary] (4) NOT NULL,
[SRBCHSEC_4] [binary] (4) NOT NULL,
[SRBCHSEC_5] [binary] (4) NOT NULL,
[SRBCHSEC_6] [binary] (4) NOT NULL,
[SRBCHSEC_7] [binary] (4) NOT NULL,
[SRSFNSEC_1] [binary] (4) NOT NULL,
[SRSFNSEC_2] [binary] (4) NOT NULL,
[SRSFNSEC_3] [binary] (4) NOT NULL,
[SRSFNSEC_4] [binary] (4) NOT NULL,
[SRSFNSEC_5] [binary] (4) NOT NULL,
[SRSFNSEC_6] [binary] (4) NOT NULL,
[SRSFNSEC_7] [binary] (4) NOT NULL,
[MSCPRMIS] [binary] (4) NOT NULL,
[BUYERACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2TA60100] ON [dbo].[TA60100] ([CMPANYID], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[TRKUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TA60100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRBCHSEC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRBCHSEC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRBCHSEC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRBCHSEC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRBCHSEC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRBCHSEC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRBCHSEC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRSFNSEC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRSFNSEC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRSFNSEC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRSFNSEC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRSFNSEC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRSFNSEC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[SRSFNSEC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[MSCPRMIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA60100].[BUYERACTIVE]'
GO
GRANT REFERENCES ON  [dbo].[TA60100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[TA60100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TA60100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TA60100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TA60100] TO [DYNGRP]
GO
