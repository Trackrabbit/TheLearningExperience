CREATE TABLE [dbo].[IV40100]
(
[SETUPKEY] [smallint] NOT NULL,
[USCATDSC_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATDSC_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATDSC_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATDSC_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATDSC_5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATDSC_6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCDCRADJ] [tinyint] NOT NULL,
[ACSGFLOC] [smallint] NOT NULL,
[MAINLOCN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[NXADJDOC] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXTRDNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NXTVDNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NXPRDNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALADJOVR] [tinyint] NOT NULL,
[AVAROVRD] [tinyint] NOT NULL,
[ATRSOVRD] [tinyint] NOT NULL,
[ATPSTVRNC] [tinyint] NOT NULL,
[ENABLEMULTIBIN] [tinyint] NOT NULL,
[ENPICKSHORTTSK] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISABLEAVGPERPADJ] [tinyint] NOT NULL,
[DISABLEPERPADJ] [tinyint] NOT NULL,
[ALLEXPLOTSIV] [tinyint] NOT NULL,
[ALLEXPLOTSIVPASS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALLEXPLOTSOTHER] [tinyint] NOT NULL,
[ALLEXPLOTOTHERPASS] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USEEXISTINGSNLOTS] [tinyint] NOT NULL,
[ASSIGNLOTNUMBY] [smallint] NOT NULL,
[NXTSPNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VIALOCN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Next_Bin_XFer_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV40100] ADD CONSTRAINT [PKIV40100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[USCATDSC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[USCATDSC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[USCATDSC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[USCATDSC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[USCATDSC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[USCATDSC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[DCDCRADJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ACSGFLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[MAINLOCN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[NXADJDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[TXTRDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[NXTVDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[NXPRDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ALADJOVR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[AVAROVRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ATRSOVRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ATPSTVRNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ENABLEMULTIBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ENPICKSHORTTSK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[DISABLEAVGPERPADJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[DISABLEPERPADJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ALLEXPLOTSIV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[ALLEXPLOTSIVPASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ALLEXPLOTSOTHER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[ALLEXPLOTOTHERPASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[USEEXISTINGSNLOTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40100].[ASSIGNLOTNUMBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[NXTSPNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[VIALOCN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40100].[Next_Bin_XFer_Doc_Number]'
GO
GRANT SELECT ON  [dbo].[IV40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV40100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV40100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV40100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV40100] TO [RAPIDGRP]
GO
