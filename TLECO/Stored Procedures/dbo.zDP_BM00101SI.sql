SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM00101SI] (@ITEMNMBR char(31), @Bill_Status smallint, @Status_Ord int, @BM_Stock_Method smallint, @Effective_Date datetime, @Obsolete_Date datetime, @UOFM char(9), @NOTEINDX numeric(19,5), @CREATDDT datetime, @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .BM00101 (ITEMNMBR, Bill_Status, Status_Ord, BM_Stock_Method, Effective_Date, Obsolete_Date, UOFM, NOTEINDX, CREATDDT, MODIFDT) VALUES ( @ITEMNMBR, @Bill_Status, @Status_Ord, @BM_Stock_Method, @Effective_Date, @Obsolete_Date, @UOFM, @NOTEINDX, @CREATDDT, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM00101SI] TO [DYNGRP]
GO
