SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510054SI] (@MJW_Investment_Number char(21), @LNSEQNBR numeric(19,5), @VENDORID char(15), @MJW_Units_Purchased numeric(19,5), @MJW_Unit_Price numeric(19,5), @MJW_Units_Sold numeric(19,5), @BSSI_NewUnitPrice numeric(19,5), @BSSI_Gain tinyint, @USERID char(15), @USERDATE datetime, @RCPTNMBR char(21), @SEQCOUNT int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510054 (MJW_Investment_Number, LNSEQNBR, VENDORID, MJW_Units_Purchased, MJW_Unit_Price, MJW_Units_Sold, BSSI_NewUnitPrice, BSSI_Gain, USERID, USERDATE, RCPTNMBR, SEQCOUNT) VALUES ( @MJW_Investment_Number, @LNSEQNBR, @VENDORID, @MJW_Units_Purchased, @MJW_Unit_Price, @MJW_Units_Sold, @BSSI_NewUnitPrice, @BSSI_Gain, @USERID, @USERDATE, @RCPTNMBR, @SEQCOUNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510054SI] TO [DYNGRP]
GO
