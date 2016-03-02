SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM40000SI] (@VENDORID char(15), @PONUMBER char(17), @POSTATUS smallint, @DOCDATE datetime, @DUEDATE datetime, @Amount numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CFM40000 (VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount) VALUES ( @VENDORID, @PONUMBER, @POSTATUS, @DOCDATE, @DUEDATE, @Amount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM40000SI] TO [DYNGRP]
GO