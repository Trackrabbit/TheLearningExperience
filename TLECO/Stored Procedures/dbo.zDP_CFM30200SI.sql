SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM30200SI] (@CUSTNMBR char(15), @SOPNUMBE char(21), @SOPTYPE smallint, @DOCDATE datetime, @DUEDATE datetime, @Amount numeric(19,5), @AMNTPAID numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CFM30200 (CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE, DUEDATE, Amount, AMNTPAID) VALUES ( @CUSTNMBR, @SOPNUMBE, @SOPTYPE, @DOCDATE, @DUEDATE, @Amount, @AMNTPAID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM30200SI] TO [DYNGRP]
GO
