CREATE TABLE [dbo].[SVC03000]
(
[SVC_Master_Document_Type] [smallint] NOT NULL,
[SVC_Master_Document_Numb] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Source_Document_ID] [smallint] NOT NULL,
[SVC_Source_Doc_Type] [smallint] NOT NULL,
[SRCDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Document_ID] [smallint] NOT NULL,
[SVC_Module] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[SVC_Modified_Time] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC03000] ADD CONSTRAINT [CK__SVC03000__CREATE__3EDD1F47] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC03000] ADD CONSTRAINT [CK__SVC03000__SVC_Mo__40C567B9] CHECK ((datepart(day,[SVC_Modified_Time])=(1) AND datepart(month,[SVC_Modified_Time])=(1) AND datepart(year,[SVC_Modified_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC03000] ADD CONSTRAINT [CK__SVC03000__CREATD__3DE8FB0E] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC03000] ADD CONSTRAINT [CK__SVC03000__MODIFD__3FD14380] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SVC03000] ADD CONSTRAINT [PKSVC03000] PRIMARY KEY CLUSTERED  ([SVC_Master_Document_Type], [SVC_Master_Document_Numb], [SVC_Source_Doc_Type], [SRCDOCNUM], [SVC_Module], [DOCNUMBR], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC03000] ON [dbo].[SVC03000] ([SVC_Module], [DOCNUMBR], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC03000] ON [dbo].[SVC03000] ([SVC_Source_Doc_Type], [SRCDOCNUM], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC03000].[SVC_Master_Document_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC03000].[SVC_Master_Document_Numb]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC03000].[SVC_Source_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC03000].[SVC_Source_Doc_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC03000].[SRCDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC03000].[SVC_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC03000].[SVC_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC03000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC03000].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC03000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC03000].[CREATETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC03000].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC03000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC03000].[SVC_Modified_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC03000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC03000].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[SVC03000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC03000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC03000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC03000] TO [DYNGRP]
GO
