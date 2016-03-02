SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[popUpdateRequisitionsForPurchase]   @I_sTableName varchar(27) = NULL,  @I_sPONumber                char(21)    = NULL,  @O_PurchasedReqCount int   = NULL output,  @O_iErrorState int         = NULL output  as   select  @O_iErrorState  = 0,  @O_PurchasedReqCount = 0  if  @I_sPONumber is NULL or  @I_sTableName is NULL begin  SELECT @O_iErrorState = 20949  RETURN end   CREATE TABLE #ReqPurchased  (  POPRequisitionNumber char(17) NOT NULL,  DOCDATE datetime NOT NULL,  REQDATE datetime NOT NULL,  REQSTDBY char (21) NOT NULL,  RequisitionStatus smallint NOT NULL,  RequisitionDescription char(61) NOT NULL,  PRSTADCD char (15) NOT NULL,  DOCAMNT numeric (19, 5) NOT NULL,  LineNumber smallint NOT NULL,  ORD int NOT NULL,  VENDORID varchar(17) NOT NULL,  HISTORY tinyint NOT NULL,  QTYTOPURCH numeric(19, 5) NOT NULL,  Workflow_Status smallint  )  CREATE INDEX PK#ReqPurchased ON #ReqPurchased(POPRequisitionNumber)   UPDATE POP10200  SET RequisitionStatus = CASE   WHEN ((select count(RequisitionLineStatus) from POP10210 where POPRequisitionNumber = Link.SOPNUMBE and RequisitionLineStatus = 2)  = (select count(RequisitionLineStatus) from POP10210 where POPRequisitionNumber = Link.SOPNUMBE))THEN  4   WHEN ((select count(RequisitionLineStatus) from POP10210 where POPRequisitionNumber = Link.SOPNUMBE and RequisitionLineStatus = 2) > 0)THEN  3    ELSE   Req.RequisitionStatus  END FROM POP10200 Req  INNER JOIN SOP60100 Link  ON Req.POPRequisitionNumber = Link.SOPNUMBE   WHERE Link.PONUMBER = @I_sPONumber  INSERT INTO #ReqPurchased  SELECT Req.POPRequisitionNumber, min(Req.DOCDATE), min(Req.REQDATE), '', min(Req.RequisitionStatus), '',   '', 0, 0, 0, '', 0, 0, Req.Workflow_Status  FROM POP10200 Req  INNER JOIN SOP60100 Link  ON Req.POPRequisitionNumber = Link.SOPNUMBE   WHERE Link.PONUMBER = @I_sPONumber and ((Req.RequisitionStatus = 4)  or ((select count(RequisitionLineStatus) from POP10210 where POPRequisitionNumber = Link.SOPNUMBE and (RequisitionLineStatus = 2 or RequisitionLineStatus = 3))  = (select count(RequisitionLineStatus) from POP10210 where POPRequisitionNumber = Link.SOPNUMBE)))  GROUP BY Req.POPRequisitionNumber, Req.Workflow_Status  select @O_PurchasedReqCount = @@ROWCOUNT  if @O_PurchasedReqCount > 0  BEGIN  exec  ('insert '+ @I_sTableName +  ' select POPRequisitionNumber, DOCDATE, REQDATE, REQSTDBY, RequisitionStatus, RequisitionDescription, PRSTADCD, DOCAMNT, 0, 0, '''', 0, 0, Workflow_Status from #ReqPurchased' )    select @O_iErrorState = @@error  END drop table #ReqPurchased   RETURN    
GO
GRANT EXECUTE ON  [dbo].[popUpdateRequisitionsForPurchase] TO [DYNGRP]
GO