SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602100SI] (@CUSTNMBR char(15), @BSSI_Customer_Type char(31), @BSSI_ParentCompanyID char(31), @BSSI_SeperateInvoice tinyint, @STRTDATE datetime, @ENDDATE datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602100 (CUSTNMBR, BSSI_Customer_Type, BSSI_ParentCompanyID, BSSI_SeperateInvoice, STRTDATE, ENDDATE) VALUES ( @CUSTNMBR, @BSSI_Customer_Type, @BSSI_ParentCompanyID, @BSSI_SeperateInvoice, @STRTDATE, @ENDDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602100SI] TO [DYNGRP]
GO
