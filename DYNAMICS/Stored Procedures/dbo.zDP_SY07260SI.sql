SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07260SI] (@ListDictID smallint, @ListID smallint, @ViewID int, @SEQNUMBR int, @URL char(255), @SRS_Report_Name char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07260 (ListDictID, ListID, ViewID, SEQNUMBR, URL, SRS_Report_Name) VALUES ( @ListDictID, @ListID, @ViewID, @SEQNUMBR, @URL, @SRS_Report_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07260SI] TO [DYNGRP]
GO
