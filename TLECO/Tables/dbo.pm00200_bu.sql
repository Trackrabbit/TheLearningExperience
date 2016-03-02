CREATE TABLE [dbo].[pm00200_bu]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCHKNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDSHNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADDCDPR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDPAD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDSFR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDTRO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCLSID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCNTCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPSZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACNMVNDR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXIDNMBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDSTTS] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PARVENID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRDDISCT] [smallint] NOT NULL,
[TEN99TYPE] [smallint] NOT NULL,
[TEN99BOXNUMBER] [smallint] NOT NULL,
[MINORDER] [numeric] (19, 5) NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINPYTYP] [smallint] NOT NULL,
[MINPYPCT] [smallint] NOT NULL,
[MINPYDLR] [numeric] (19, 5) NOT NULL,
[MXIAFVND] [smallint] NOT NULL,
[MAXINDLR] [numeric] (19, 5) NOT NULL,
[COMMENT1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRLMTDLR] [numeric] (19, 5) NOT NULL,
[PYMNTPRI] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KGLDSTHS] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[HOLD] [tinyint] NOT NULL,
[PTCSHACF] [smallint] NOT NULL,
[CREDTLMT] [smallint] NOT NULL,
[WRITEOFF] [smallint] NOT NULL,
[MXWOFAMT] [numeric] (19, 5) NOT NULL,
[SBPPSDED] [tinyint] NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[DXVARNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRTCOMDT] [datetime] NOT NULL,
[CRTEXPDT] [datetime] NOT NULL,
[RTOBUTKN] [tinyint] NOT NULL,
[XPDTOBLG] [tinyint] NOT NULL,
[PRSPAYEE] [tinyint] NOT NULL,
[PMAPINDX] [int] NOT NULL,
[PMCSHIDX] [int] NOT NULL,
[PMDAVIDX] [int] NOT NULL,
[PMDTKIDX] [int] NOT NULL,
[PMFINIDX] [int] NOT NULL,
[PMMSCHIX] [int] NOT NULL,
[PMFRTIDX] [int] NOT NULL,
[PMTAXIDX] [int] NOT NULL,
[PMWRTIDX] [int] NOT NULL,
[PMPRCHIX] [int] NOT NULL,
[PMRTNGIX] [int] NOT NULL,
[PMTDSCIX] [int] NOT NULL,
[ACPURIDX] [int] NOT NULL,
[PURPVIDX] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Revalue_Vendor] [tinyint] NOT NULL,
[Post_Results_To] [smallint] NOT NULL,
[FREEONBOARD] [smallint] NOT NULL,
[GOVCRPID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOVINDID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[DOCFMTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TaxInvRecvd] [tinyint] NOT NULL,
[USERLANG] [smallint] NOT NULL,
[WithholdingType] [smallint] NOT NULL,
[WithholdingFormType] [smallint] NOT NULL,
[WithholdingEntityType] [smallint] NOT NULL,
[TaxFileNumMode] [smallint] NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[LaborPmtType] [smallint] NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[VADCD1099] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VNDCHKNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VENDSHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VADDCDPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VADCDPAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VADCDSFR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VADCDTRO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VNDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VNDCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[PHNUMBR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[PHNUMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[ACNMVNDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[TXIDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[VENDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[PARVENID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[TRDDISCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[TEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[TEN99BOXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[pm00200_bu].[MINORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[MINPYTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[MINPYPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[pm00200_bu].[MINPYDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[MXIAFVND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[pm00200_bu].[MAXINDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[pm00200_bu].[CRLMTDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[PYMNTPRI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[KGLDSTHS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PTCSHACF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[CREDTLMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[WRITEOFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[pm00200_bu].[MXWOFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[SBPPSDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[DXVARNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[pm00200_bu].[CRTCOMDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[pm00200_bu].[CRTEXPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[RTOBUTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[XPDTOBLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PRSPAYEE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMAPINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMCSHIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMDAVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMDTKIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMFINIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMMSCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMFRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMTAXIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMWRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMPRCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMRTNGIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PMTDSCIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[ACPURIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[pm00200_bu].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[pm00200_bu].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[pm00200_bu].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[Revalue_Vendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[Post_Results_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[FREEONBOARD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[GOVCRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[GOVINDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[DOCFMTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[TaxInvRecvd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[USERLANG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[WithholdingType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[WithholdingFormType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[WithholdingEntityType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[TaxFileNumMode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[pm00200_bu].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[LaborPmtType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[CBVAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00200_bu].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00200_bu].[VADCD1099]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[pm00200_bu].[DEX_ROW_TS]'
GO
GRANT SELECT ON  [dbo].[pm00200_bu] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[pm00200_bu] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[pm00200_bu] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[pm00200_bu] TO [DYNGRP]
GO
