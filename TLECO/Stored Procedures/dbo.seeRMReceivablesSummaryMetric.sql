SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeRMReceivablesSummaryMetric] as  declare  @RM_DOC_CASH bigint,  @RM_DOC_SALES bigint  select @RM_DOC_SALES = 1 select @RM_DOC_CASH = 9  create table #ReceivablesSummaryTemp (DocTypeDescr char(31) not null,  ReceivablesAmount bigint not null,  ReceivablesCount bigint not null)  insert #ReceivablesSummaryTemp  (DocTypeDescr,  ReceivablesAmount,  ReceivablesCount) select  DOCDESCR as DocTypeDescr,  0 as ReceivablesAmount,  0 as ReceivablesCount from  dbo.RM40401 with (NOLOCK) where  RMDTYPAL >= @RM_DOC_SALES and RMDTYPAL <= @RM_DOC_CASH order by  RMDTYPAL  insert #ReceivablesSummaryTemp  (DocTypeDescr,  ReceivablesAmount,  ReceivablesCount) select  d.DOCDESCR as DocTypeDescr,  sum(o.ORTRXAMT) as ReceivablesAmount,  count(o.ORTRXAMT) as ReceivablesCount from  dbo.RM20101 as o with (NOLOCK),  dbo.RM40401 as d with (NOLOCK) where  d.RMDTYPAL >= @RM_DOC_SALES and d.RMDTYPAL <= @RM_DOC_CASH and  o.RMDTYPAL = d.RMDTYPAL and o.VOIDSTTS = 0 group by  d.DOCDESCR  select  * from  #ReceivablesSummaryTemp  drop table #ReceivablesSummaryTemp    
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesSummaryMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesSummaryMetric] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesSummaryMetric] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeRMReceivablesSummaryMetric] TO [rpt_executive]
GO
