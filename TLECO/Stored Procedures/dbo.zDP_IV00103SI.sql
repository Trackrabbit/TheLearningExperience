SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00103SI] (@ITEMNMBR char(31), @VENDORID char(15), @ITMVNDTY smallint, @VNDITNUM char(31), @QTYRQSTN numeric(19,5), @QTYONORD numeric(19,5), @QTY_Drop_Shipped numeric(19,5), @LSTORDDT datetime, @LSORDQTY numeric(19,5), @LRCPTQTY numeric(19,5), @LSRCPTDT datetime, @LRCPTCST numeric(19,5), @AVRGLDTM int, @NORCTITM smallint, @MINORQTY numeric(19,5), @MAXORDQTY numeric(19,5), @ECORDQTY numeric(19,5), @VNDITDSC char(101), @Last_Originating_Cost numeric(19,5), @Last_Currency_ID char(15), @FREEONBOARD smallint, @PRCHSUOM char(9), @CURRNIDX smallint, @PLANNINGLEADTIME smallint, @ORDERMULTIPLE numeric(19,5), @MNFCTRITMNMBR char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00103 (ITEMNMBR, VENDORID, ITMVNDTY, VNDITNUM, QTYRQSTN, QTYONORD, QTY_Drop_Shipped, LSTORDDT, LSORDQTY, LRCPTQTY, LSRCPTDT, LRCPTCST, AVRGLDTM, NORCTITM, MINORQTY, MAXORDQTY, ECORDQTY, VNDITDSC, Last_Originating_Cost, Last_Currency_ID, FREEONBOARD, PRCHSUOM, CURRNIDX, PLANNINGLEADTIME, ORDERMULTIPLE, MNFCTRITMNMBR) VALUES ( @ITEMNMBR, @VENDORID, @ITMVNDTY, @VNDITNUM, @QTYRQSTN, @QTYONORD, @QTY_Drop_Shipped, @LSTORDDT, @LSORDQTY, @LRCPTQTY, @LSRCPTDT, @LRCPTCST, @AVRGLDTM, @NORCTITM, @MINORQTY, @MAXORDQTY, @ECORDQTY, @VNDITDSC, @Last_Originating_Cost, @Last_Currency_ID, @FREEONBOARD, @PRCHSUOM, @CURRNIDX, @PLANNINGLEADTIME, @ORDERMULTIPLE, @MNFCTRITMNMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00103SI] TO [DYNGRP]
GO