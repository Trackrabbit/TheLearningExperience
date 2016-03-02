SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprGetPension]  @IN_EmployeeID char(15),  @IN_sCheckDate datetime,  @IN_eCheckDate datetime,  @OUT_TotalPenGrossWages dec(19,5) output,  @OUT_TotalPenFedWH dec(19,5) output,  @O_iErrorState int output as  DECLARE   @TotalPensionAmount dec(19,5),  @TotalPensionFedWH dec(19,5),  @EmployeeID char(15),  @AuditControlCode char(15),  @CheckNumber char(21),  @PaymentNumber int,  @CheckDate datetime,  @GrossWages dec(19,5),  @FederalWithholding dec(19,5),  @TrxAmount dec(19,5),  @FederalFlatTax smallint,  @RemainingGrossWages dec(19,5),  @RemainingFederalWH dec(19,5),  @PayType smallint  SELECT @TotalPensionAmount = 0 SELECT @TotalPensionFedWH = 0  DECLARE CheckHist CURSOR FOR SELECT EMPLOYID, AUCTRLCD, CHEKNMBR, PYADNMBR, CHEKDATE, GRWGPRN, FDWDGPRN FROM UPR30100  WHERE CHEKDATE between @IN_sCheckDate AND @IN_eCheckDate AND EMPLOYID = @IN_EmployeeID ORDER BY EMPLOYID, AUCTRLCD, CHEKNMBR, PYADNMBR, CHEKDATE  OPEN CheckHist FETCH NEXT FROM CheckHist INTO   @EmployeeID,  @AuditControlCode,  @CheckNumber,  @PaymentNumber,  @CheckDate,  @GrossWages,  @FederalWithholding  WHILE @@FETCH_STATUS = 0 BEGIN   DECLARE TrxHist CURSOR FOR  SELECT a.UPRTRXAM, b.FFEDTXRT, b.PAYTYPE  FROM UPR30300 AS a INNER JOIN UPR00400 AS b  ON a.EMPLOYID = b.EMPLOYID  AND a.PAYROLCD = b.PAYRCORD  WHERE (b.PAYTYPE = 11 or (b.FFEDTXRT <> 0 and b.PAYTYPE <> 14 and b.PAYTYPE <> 15))  AND b.SBJTFDTX = 1  AND a.PYRLRTYP = 1  AND a.CHEKDATE = @CheckDate  AND a.EMPLOYID = @EmployeeID  AND a.AUCTRLCD = @AuditControlCode  AND a.CHEKNMBR = @CheckNumber  AND a.PYADNMBR = @PaymentNumber  ORDER BY b.FFEDTXRT,b.PAYRCORD desc  OPEN TrxHist  FETCH NEXT FROM TrxHist INTO   @TrxAmount,  @FederalFlatTax,  @PayType  SELECT @RemainingFederalWH = @FederalWithholding  SELECT @RemainingGrossWages = @GrossWages   WHILE @@FETCH_STATUS = 0  BEGIN  IF @PayType = 11  SELECT @TotalPensionAmount = @TotalPensionAmount + @TrxAmount  IF @FederalFlatTax <> 0   BEGIN  SELECT @RemainingFederalWH = @RemainingFederalWH - (@TrxAmount * (@FederalFlatTax/10000.00))  SELECT @RemainingGrossWages = @RemainingGrossWages - @TrxAmount  IF @PayType = 11  SELECT @TotalPensionFedWH = @TotalPensionFedWH + (@TrxAmount * (@FederalFlatTax/10000.00))  END  ELSE  IF @PayType = 11  IF @RemainingGrossWages <> 0.00  SELECT @TotalPensionFedWH = @TotalPensionFedWH + (@RemainingFederalWH * (@TrxAmount/@RemainingGrossWages))   FETCH NEXT FROM TrxHist INTO   @TrxAmount,  @FederalFlatTax,  @PayType  END   DEALLOCATE  TrxHist  FETCH NEXT FROM CheckHist INTO   @EmployeeID,  @AuditControlCode,  @CheckNumber,  @PaymentNumber,  @CheckDate,  @GrossWages,  @FederalWithholding  END  DEALLOCATE  CheckHist  SELECT @OUT_TotalPenGrossWages = @TotalPensionAmount SELECT @OUT_TotalPenFedWH = round(@TotalPensionFedWH, 2)  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprGetPension] TO [DYNGRP]
GO