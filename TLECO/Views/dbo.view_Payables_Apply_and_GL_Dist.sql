SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[view_Payables_Apply_and_GL_Dist]
AS
 
-- ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
-- view_Payables_Apply_and_GL_Dist
-- Created on Sep 23 2010 by Victoria Yudin
-- Flexible Solutions, Inc. 2
-- For updates see http://victoriayudin.com/gp-reports/
-- Does not take Multicurrency into account
-- Will return multiple lines for payments that were applied 
--    to more than one transaction and for invoices with 
--    multiple GL distributions
-- GL Distributions are shown for the Applied To documents
-- Voided payments are excluded
-- Payments for $0 are excluded
-- Updated on Feb 22, 2012 to allow for multiple identical 
--    GL distributions on same transaction - thanks to 
--    Geraldine for helping me track this down!
-- Updated on Nov 20, 2012 to add Distribution Reference
-- Updated Nov 24, 2013 to add apply to doc due date and 
--    optimize code
-- Updated Feb 24, 2015 to add transaction description
-- ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
 
SELECT
P.VENDORID Vendor_ID,
V.VENDNAME Vendor_Name,
V.VNDCHKNM Vendor_Check_Name,
CASE P.PYENTTYP
    WHEN 0 THEN 'Check'
    WHEN 1 THEN 'Cash'
    WHEN 2 THEN 'Credit Card'
    WHEN 3 THEN 'EFT'
    ELSE 'Other'
    END Payment_Type,
CASE
    WHEN P.PYENTTYP in (0,1,3) THEN P.CHEKBKID
    ELSE ''
    END Checkbook_ID,
CASE P.PYENTTYP
    WHEN 2 THEN P.CARDNAME
    ELSE ''
    END Credit_Card_ID,
P.DOCDATE Payment_Date,
P.PSTGDATE Payment_GL_Date,
P.VCHRNMBR Payment_Voucher_Number,
P.DOCNUMBR Payment_Document_Number,
P.DOCAMNT Payment_Functional_Amount,
coalesce(PA.APTVCHNM,'') Apply_To_Voucher_Number,
CASE PA.APTODCTY
    WHEN 1 THEN 'Invoice'
    WHEN 2 THEN 'Finance Charge'
    WHEN 3 THEN 'Misc Charge'
    ELSE ''
    END Apply_To_Doc_Type,
coalesce(PA.APTODCNM,'') Apply_To_Doc_Number,
coalesce(PA.APTODCDT,'1/1/1900') Apply_To_Doc_Date,
coalesce(PA.ApplyToGLPostDate,'1/1/1900') Apply_To_GL_Date,
coalesce(AD.DUEDATE,'1/1/1900') Apply_To_Due_Date,
coalesce(PA.APPLDAMT,0) Applied_Amount,
coalesce(G.ACTNUMST,'') GL_Account_Number,
coalesce(G2.ACTDESCR,'') GL_Account_Name,
CASE D.DISTTYPE
    WHEN 1 THEN 'Cash'
    WHEN 2 THEN 'Payable'
    WHEN 3 THEN 'Discount Available'
    WHEN 4 THEN 'Discount Taken'
    WHEN 5 THEN 'Finance Charge'
    WHEN 6 THEN 'Purchase'
    WHEN 7 THEN 'Trade Disc.'
    WHEN 8 THEN 'Misc. Charge'
    WHEN 9 THEN 'Freight'
    WHEN 10 THEN 'Taxes'
    WHEN 11 THEN 'Writeoffs'
    WHEN 12 THEN 'Other'
    WHEN 13 THEN 'GST Disc'
    WHEN 14 THEN 'PPS Amount'
    ELSE ''
    END Distribution_Type,
coalesce(D.DEBITAMT,0) Debit,
coalesce(D.CRDTAMNT,0) Credit,
coalesce(D.DistRef,'') Distribution_Reference,
AD.TRXDSCRN Transaction_Description
  
FROM -- payments
(SELECT VENDORID, DOCTYPE, DOCDATE, VCHRNMBR, DOCNUMBR, 
 DOCAMNT, VOIDED, TRXSORCE, CHEKBKID, PSTGDATE, PYENTTYP, 
 CARDNAME
 FROM PM30200 
 WHERE DOCTYPE = 6 AND DOCAMNT <> 0 AND VOIDED = 0
   UNION
 SELECT VENDORID, DOCTYPE, DOCDATE, VCHRNMBR, DOCNUMBR, 
 DOCAMNT, VOIDED, TRXSORCE, CHEKBKID, PSTGDATE, PYENTTYP, 
 CARDNAME
 FROM PM20000 
 WHERE DOCTYPE = 6 AND DOCAMNT <> 0 AND VOIDED = 0) P
  
INNER JOIN PM00200 V -- vendor master
     ON P.VENDORID = V.VENDORID
  
LEFT OUTER JOIN -- apply records
(SELECT VENDORID, VCHRNMBR, DOCTYPE, APTVCHNM, APTODCTY,
 APTODCNM, APTODCDT, ApplyToGLPostDate, APPLDAMT
 FROM PM10200
   UNION
 SELECT VENDORID, VCHRNMBR, DOCTYPE, APTVCHNM, APTODCTY,
 APTODCNM, APTODCDT, ApplyToGLPostDate, APPLDAMT
 FROM PM30300) PA 
    ON P.VCHRNMBR = PA.VCHRNMBR AND P.VENDORID = PA.VENDORID 
    AND P.DOCTYPE = PA.DOCTYPE
  
LEFT OUTER JOIN -- distributions
(SELECT VENDORID, VCHRNMBR, CNTRLTYP, DEBITAMT, CRDTAMNT,
 DSTINDX, DISTTYPE, DistRef, PSTGDATE
 FROM PM10100
 WHERE PSTGSTUS = 1 AND CNTRLTYP = 0
   UNION ALL
 SELECT VENDORID, VCHRNMBR, CNTRLTYP, DEBITAMT, CRDTAMNT,
 DSTINDX, DISTTYPE, DistRef, PSTGDATE
 FROM PM30600 WHERE CNTRLTYP = 0) D 
    ON PA.VENDORID = D.VENDORID AND PA.APTVCHNM = D.VCHRNMBR
  
LEFT OUTER JOIN GL00105 G -- for account number
     ON D.DSTINDX = G.ACTINDX
  
LEFT OUTER JOIN GL00100 G2 -- for account name
     ON D.DSTINDX = G2.ACTINDX
 
LEFT OUTER JOIN -- apply to docs, added for due date
(SELECT DOCTYPE, VCHRNMBR, DUEDATE, TRXDSCRN 
 FROM PM30200
   UNION
 SELECT DOCTYPE, VCHRNMBR, DUEDATE, TRXDSCRN
 FROM PM20000) AD 
    ON PA.APTODCTY = AD.DOCTYPE and PA.APTVCHNM = AD.VCHRNMBR
 
-- add permissions for DYNGRP
GO
GRANT SELECT ON  [dbo].[view_Payables_Apply_and_GL_Dist] TO [DYNGRP]
GO
