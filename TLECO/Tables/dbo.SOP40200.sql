CREATE TABLE [dbo].[SOP40200]
(
[DOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SETUPKEY] [smallint] NOT NULL,
[DOCTYABR] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCUFORM] [smallint] NOT NULL,
[DAYTOEXP] [smallint] NOT NULL,
[ALLREPEA] [tinyint] NOT NULL,
[ALLOCABY] [smallint] NOT NULL,
[USEPROSP] [tinyint] NOT NULL,
[USNXTINV] [tinyint] NOT NULL,
[USPFULPR] [tinyint] NOT NULL,
[QUOTOINV] [tinyint] NOT NULL,
[QUOTOORD] [tinyint] NOT NULL,
[INVTOBAC] [tinyint] NOT NULL,
[BACTOINV] [tinyint] NOT NULL,
[BACTOORD] [tinyint] NOT NULL,
[ORDTOBAC] [tinyint] NOT NULL,
[ORDTOORD] [tinyint] NOT NULL,
[USDOCID1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USDOCID2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYDEFAU] [smallint] NOT NULL,
[SOPALLOW_1] [tinyint] NOT NULL,
[SOPALLOW_2] [tinyint] NOT NULL,
[SOPALLOW_3] [tinyint] NOT NULL,
[SOPALLOW_4] [tinyint] NOT NULL,
[SOPALLOW_5] [tinyint] NOT NULL,
[SOPALLOW_6] [tinyint] NOT NULL,
[SOPALLOW_7] [tinyint] NOT NULL,
[SOPALLOW_8] [tinyint] NOT NULL,
[SOPALLOW_9] [tinyint] NOT NULL,
[SOPALLOW_10] [tinyint] NOT NULL,
[SOPPSSWD_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_7] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_8] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_9] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPPSSWD_10] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPSEQNC_1] [smallint] NOT NULL,
[SOPSEQNC_2] [smallint] NOT NULL,
[SOPSEQNC_3] [smallint] NOT NULL,
[SOPSEQNC_4] [smallint] NOT NULL,
[SOPSEQNC_5] [smallint] NOT NULL,
[SOPSEQNC_6] [smallint] NOT NULL,
[SOPSEQNC_7] [smallint] NOT NULL,
[SOPSEQNC_8] [smallint] NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[SHPPGDOC] [tinyint] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[ALLBACKODPRT] [tinyint] NOT NULL,
[XORDINVC] [tinyint] NOT NULL,
[USDOCID3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKFLOWENABLED] [tinyint] NOT NULL,
[UPDTONPRINT] [tinyint] NOT NULL,
[CREDITLIMITHOLDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPDTACTUALSHPDT] [tinyint] NOT NULL,
[WORKFLOWHOLDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OVERRIDEIVCBILLQTY] [tinyint] NOT NULL,
[ENABLEBACKORDER] [tinyint] NOT NULL,
[ENABLECANCELED] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_1] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_2] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_3] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_4] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_5] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_6] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_7] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_8] [tinyint] NOT NULL,
[SOPSTATUSACTIVE_9] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP40200] ADD CONSTRAINT [CK__SOP40200__CREATD__4DBF7024] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SOP40200] ADD CONSTRAINT [CK__SOP40200__MODIFD__4EB3945D] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SOP40200] ADD CONSTRAINT [PKSOP40200] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [DOCID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[DOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP40200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[DOCTYABR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[DOCUFORM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[DAYTOEXP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[ALLREPEA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[ALLOCABY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[USEPROSP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[USNXTINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[USPFULPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[QUOTOINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[QUOTOORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[INVTOBAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[BACTOINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[BACTOORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[ORDTOBAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[ORDTOORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[USDOCID1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[USDOCID2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[QTYDEFAU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPALLOW_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[SOPPSSWD_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSEQNC_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP40200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP40200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SHPPGDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[ALLBACKODPRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[XORDINVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[USDOCID3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[WORKFLOWENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[UPDTONPRINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[CREDITLIMITHOLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[UPDTACTUALSHPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40200].[WORKFLOWHOLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[OVERRIDEIVCBILLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[ENABLEBACKORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[ENABLECANCELED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40200].[SOPSTATUSACTIVE_9]'
GO
GRANT SELECT ON  [dbo].[SOP40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP40200] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP40200] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP40200] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40200] TO [RAPIDGRP]
GO
