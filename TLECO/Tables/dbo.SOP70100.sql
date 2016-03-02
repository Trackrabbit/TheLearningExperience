CREATE TABLE [dbo].[SOP70100]
(
[INQID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HISTORY] [tinyint] NOT NULL,
[UNPSTTRX] [tinyint] NOT NULL,
[SORTBY] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCUSTNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCSTNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTDOCDT] [datetime] NOT NULL,
[ENDDOCDT] [datetime] NOT NULL,
[STDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STSOPTYP] [smallint] NOT NULL,
[EDSOPTYP] [smallint] NOT NULL,
[STTDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENITMNBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMSTNMB] [int] NOT NULL,
[EDMASNMB] [int] NOT NULL,
[STTPHON1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDPHON1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STQUOEXD] [datetime] NOT NULL,
[EDQUOEXD] [datetime] NOT NULL,
[STREQDAT] [datetime] NOT NULL,
[ENDREQDT] [datetime] NOT NULL,
[STSPRSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENSPSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTUDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRDF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_Purchasing_Status] [smallint] NOT NULL,
[End_Purchasing_Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__CREATD__07EC11B9] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__EDQUOE__08E035F2] CHECK ((datepart(hour,[EDQUOEXD])=(0) AND datepart(minute,[EDQUOEXD])=(0) AND datepart(second,[EDQUOEXD])=(0) AND datepart(millisecond,[EDQUOEXD])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__ENDDOC__09D45A2B] CHECK ((datepart(hour,[ENDDOCDT])=(0) AND datepart(minute,[ENDDOCDT])=(0) AND datepart(second,[ENDDOCDT])=(0) AND datepart(millisecond,[ENDDOCDT])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__ENDREQ__0AC87E64] CHECK ((datepart(hour,[ENDREQDT])=(0) AND datepart(minute,[ENDREQDT])=(0) AND datepart(second,[ENDREQDT])=(0) AND datepart(millisecond,[ENDREQDT])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__MODIFD__0BBCA29D] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__STQUOE__0CB0C6D6] CHECK ((datepart(hour,[STQUOEXD])=(0) AND datepart(minute,[STQUOEXD])=(0) AND datepart(second,[STQUOEXD])=(0) AND datepart(millisecond,[STQUOEXD])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__STREQD__0DA4EB0F] CHECK ((datepart(hour,[STREQDAT])=(0) AND datepart(minute,[STREQDAT])=(0) AND datepart(second,[STREQDAT])=(0) AND datepart(millisecond,[STREQDAT])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [CK__SOP70100__STTDOC__0E990F48] CHECK ((datepart(hour,[STTDOCDT])=(0) AND datepart(minute,[STTDOCDT])=(0) AND datepart(second,[STTDOCDT])=(0) AND datepart(millisecond,[STTDOCDT])=(0)))
GO
ALTER TABLE [dbo].[SOP70100] ADD CONSTRAINT [PKSOP70100] PRIMARY KEY NONCLUSTERED  ([INQID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[INQID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[HISTORY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[UNPSTTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP70100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STCUSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENCSTNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[STTDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[ENDDOCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[STSOPTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[EDSOPTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STTDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STTITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENITMNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[STMSTNMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[EDMASNMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STTPHON1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENDPHON1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[STQUOEXD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[EDQUOEXD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[STREQDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP70100].[ENDREQDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STSPRSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENSPSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[STTUDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP70100].[ENUSRDF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[Start_Purchasing_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP70100].[End_Purchasing_Status]'
GO
GRANT SELECT ON  [dbo].[SOP70100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP70100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP70100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP70100] TO [DYNGRP]
GO
