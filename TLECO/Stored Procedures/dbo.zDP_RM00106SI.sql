SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00106SI] (@CUSTNMBR char(15), @Email_Type smallint, @Email_Recipient char(81), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM00106 (CUSTNMBR, Email_Type, Email_Recipient) VALUES ( @CUSTNMBR, @Email_Type, @Email_Recipient) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00106SI] TO [DYNGRP]
GO
