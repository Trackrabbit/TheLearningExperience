SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POA40003SI] (@PONUMBER char(17), @VENDORID char(15), @STATGRP smallint, @DOCDATE datetime, @POA_Created_By char(15), @POA_PO_Approval_Status smallint, @REMSUBTO numeric(19,5), @POA_Approved_By char(15), @APPRVLDT datetime, @POA_Approval_Time datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POA40003 (PONUMBER, VENDORID, STATGRP, DOCDATE, POA_Created_By, POA_PO_Approval_Status, REMSUBTO, POA_Approved_By, APPRVLDT, POA_Approval_Time) VALUES ( @PONUMBER, @VENDORID, @STATGRP, @DOCDATE, @POA_Created_By, @POA_PO_Approval_Status, @REMSUBTO, @POA_Approved_By, @APPRVLDT, @POA_Approval_Time) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40003SI] TO [DYNGRP]
GO
