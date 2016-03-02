SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00103N_6] (@BS int, @VNDITNUM char(31), @ITEMNMBR char(31), @VENDORID char(15), @VNDITNUM_RS char(31), @ITEMNMBR_RS char(31), @VENDORID_RS char(15), @VNDITNUM_RE char(31), @ITEMNMBR_RE char(31), @VENDORID_RE char(15)) AS  set nocount on IF @VNDITNUM_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, VENDORID, ITMVNDTY, VNDITNUM, QTYRQSTN, QTYONORD, QTY_Drop_Shipped, LSTORDDT, LSORDQTY, LRCPTQTY, LSRCPTDT, LRCPTCST, AVRGLDTM, NORCTITM, MINORQTY, MAXORDQTY, ECORDQTY, VNDITDSC, Last_Originating_Cost, Last_Currency_ID, FREEONBOARD, PRCHSUOM, CURRNIDX, PLANNINGLEADTIME, ORDERMULTIPLE, MNFCTRITMNMBR, DEX_ROW_ID FROM .IV00103 WHERE ( VNDITNUM = @VNDITNUM AND ITEMNMBR = @ITEMNMBR AND VENDORID > @VENDORID OR VNDITNUM = @VNDITNUM AND ITEMNMBR > @ITEMNMBR OR VNDITNUM > @VNDITNUM ) ORDER BY VNDITNUM ASC, ITEMNMBR ASC, VENDORID ASC END ELSE IF @VNDITNUM_RS = @VNDITNUM_RE BEGIN SELECT TOP 25  ITEMNMBR, VENDORID, ITMVNDTY, VNDITNUM, QTYRQSTN, QTYONORD, QTY_Drop_Shipped, LSTORDDT, LSORDQTY, LRCPTQTY, LSRCPTDT, LRCPTCST, AVRGLDTM, NORCTITM, MINORQTY, MAXORDQTY, ECORDQTY, VNDITDSC, Last_Originating_Cost, Last_Currency_ID, FREEONBOARD, PRCHSUOM, CURRNIDX, PLANNINGLEADTIME, ORDERMULTIPLE, MNFCTRITMNMBR, DEX_ROW_ID FROM .IV00103 WHERE VNDITNUM = @VNDITNUM_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( VNDITNUM = @VNDITNUM AND ITEMNMBR = @ITEMNMBR AND VENDORID > @VENDORID OR VNDITNUM = @VNDITNUM AND ITEMNMBR > @ITEMNMBR OR VNDITNUM > @VNDITNUM ) ORDER BY VNDITNUM ASC, ITEMNMBR ASC, VENDORID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, VENDORID, ITMVNDTY, VNDITNUM, QTYRQSTN, QTYONORD, QTY_Drop_Shipped, LSTORDDT, LSORDQTY, LRCPTQTY, LSRCPTDT, LRCPTCST, AVRGLDTM, NORCTITM, MINORQTY, MAXORDQTY, ECORDQTY, VNDITDSC, Last_Originating_Cost, Last_Currency_ID, FREEONBOARD, PRCHSUOM, CURRNIDX, PLANNINGLEADTIME, ORDERMULTIPLE, MNFCTRITMNMBR, DEX_ROW_ID FROM .IV00103 WHERE VNDITNUM BETWEEN @VNDITNUM_RS AND @VNDITNUM_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( VNDITNUM = @VNDITNUM AND ITEMNMBR = @ITEMNMBR AND VENDORID > @VENDORID OR VNDITNUM = @VNDITNUM AND ITEMNMBR > @ITEMNMBR OR VNDITNUM > @VNDITNUM ) ORDER BY VNDITNUM ASC, ITEMNMBR ASC, VENDORID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00103N_6] TO [DYNGRP]
GO
