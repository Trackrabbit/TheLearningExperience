SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM10100SI] (@DATE1 datetime, @TIME1 datetime, @CAM_ControlAccountIndex int, @CAM_Account_Num_String char(129), @CAM_ControlAcctDescr char(33), @VENDORID char(15), @ACTINDX int, @ACTNUMST char(129), @ACTDESCR char(51), @VCHRNMBR char(21), @APTVCHNM char(21), @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @CAM_Amount_Total numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CAM10100 (DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total) VALUES ( @DATE1, @TIME1, @CAM_ControlAccountIndex, @CAM_Account_Num_String, @CAM_ControlAcctDescr, @VENDORID, @ACTINDX, @ACTNUMST, @ACTDESCR, @VCHRNMBR, @APTVCHNM, @DEBITAMT, @CRDTAMNT, @CAM_Amount_Total) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10100SI] TO [DYNGRP]
GO
