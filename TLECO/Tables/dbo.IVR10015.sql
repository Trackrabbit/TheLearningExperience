CREATE TABLE [dbo].[IVR10015]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMSTATUS_I] [smallint] NOT NULL,
[BOMTYPE_I] [smallint] NOT NULL,
[MAKEBUYCODE_I] [smallint] NOT NULL,
[ITEMDESIGNAUTHORIT_I] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[REVISIONLEVEL_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DWGNUM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DWGSIZE_I] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABCCODE_I] [smallint] NOT NULL,
[FLOORSTOCK_I] [tinyint] NOT NULL,
[ITEMUSEUP_I] [tinyint] NOT NULL,
[CALCMRP_I] [tinyint] NOT NULL,
[QAQCNEEDED_I] [tinyint] NOT NULL,
[MINIMUMISSUE_I] [numeric] (19, 5) NOT NULL,
[IVCARRYINGCOST_I] [numeric] (19, 5) NOT NULL,
[IVSETUPCOST_I] [numeric] (19, 5) NOT NULL,
[AVERAGEORDQTY_I] [numeric] (19, 5) NOT NULL,
[SHRINKAGEPERCENT_I] [int] NOT NULL,
[DESTTESTINGREQD_I] [tinyint] NOT NULL,
[ALTERNATE_I] [tinyint] NOT NULL,
[SHIPPINGUOFM_I] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGNOTEINDEX_I] [numeric] (19, 5) NOT NULL,
[ITEMFULFILLMETHOD] [smallint] NOT NULL,
[LLC] [int] NOT NULL,
[RUNNUMBER] [int] NOT NULL,
[FG_STD_QTY_I] [numeric] (19, 5) NOT NULL,
[QASTDATE] [datetime] NOT NULL,
[QAENDDATE] [datetime] NOT NULL,
[DAYTOEXP] [smallint] NOT NULL,
[INCL_EXP_TO_ENG] [tinyint] NOT NULL,
[ISCHANGD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR10015] ADD CONSTRAINT [CK__IVR10015__CHANGE__1DF12CC8] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[IVR10015] ADD CONSTRAINT [CK__IVR10015__EFFECT__1EE55101] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[IVR10015] ADD CONSTRAINT [CK__IVR10015__QAENDD__1FD9753A] CHECK ((datepart(hour,[QAENDDATE])=(0) AND datepart(minute,[QAENDDATE])=(0) AND datepart(second,[QAENDDATE])=(0) AND datepart(millisecond,[QAENDDATE])=(0)))
GO
ALTER TABLE [dbo].[IVR10015] ADD CONSTRAINT [CK__IVR10015__QASTDA__20CD9973] CHECK ((datepart(hour,[QASTDATE])=(0) AND datepart(minute,[QASTDATE])=(0) AND datepart(second,[QASTDATE])=(0) AND datepart(millisecond,[QASTDATE])=(0)))
GO
ALTER TABLE [dbo].[IVR10015] ADD CONSTRAINT [PKIVR10015] PRIMARY KEY CLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IVR10015] ON [dbo].[IVR10015] ([CALCMRP_I], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5IVR10015] ON [dbo].[IVR10015] ([ISCHANGD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IVR10015] ON [dbo].[IVR10015] ([LLC], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IVR10015] ON [dbo].[IVR10015] ([MAKEBUYCODE_I], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVR10015].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[ITEMSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[BOMTYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[MAKEBUYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVR10015].[ITEMDESIGNAUTHORIT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVR10015].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVR10015].[REVISIONLEVEL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVR10015].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVR10015].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVR10015].[DWGNUM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVR10015].[DWGSIZE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[ABCCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[FLOORSTOCK_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[ITEMUSEUP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[CALCMRP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[QAQCNEEDED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVR10015].[MINIMUMISSUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVR10015].[IVCARRYINGCOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVR10015].[IVSETUPCOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVR10015].[AVERAGEORDQTY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[SHRINKAGEPERCENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[DESTTESTINGREQD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[ALTERNATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[SHIPPINGUOFM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVR10015].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVR10015].[MFGNOTEINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[ITEMFULFILLMETHOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[LLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[RUNNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVR10015].[FG_STD_QTY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVR10015].[QASTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVR10015].[QAENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[DAYTOEXP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[INCL_EXP_TO_ENG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVR10015].[ISCHANGD]'
GO
GRANT SELECT ON  [dbo].[IVR10015] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVR10015] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVR10015] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVR10015] TO [DYNGRP]
GO
