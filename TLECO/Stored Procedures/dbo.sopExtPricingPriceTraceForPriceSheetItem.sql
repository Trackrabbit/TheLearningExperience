SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopExtPricingPriceTraceForPriceSheetItem]  @piST_GetType char(1), @piST_PriceListCode char(15), @piST_ItemNumber char(31), @piST_UofM char(9), @piDA_Date datetime, @piDE_Qty decimal(19,5), @piST_Currency char(16),    @poDE_Price decimal(19,5) OUTPUT, @poIN_Step1_Step int OUTPUT, @poST_Step1_Scheme char(15) OUTPUT, @poST_Step1_Type char(1) OUTPUT, @poDE_Step1_Value decimal(19,5) OUTPUT, @poIN_Step2_Step int OUTPUT, @poST_Step2_Scheme char(15) OUTPUT, @poST_Step2_Type char(1) OUTPUT, @poDE_Step2_Value decimal(19,5) OUTPUT, @poIN_CurrPriceFound integer  OUTPUT,  @poLO_Error integer OUTPUT  AS  DECLARE @loDE_Value decimal(19,5),  @loDE_EQUOMQTY decimal(19,5),  @loST_ValueType char(1),  @loDA_StartDate datetime,  @loDA_EndDate datetime,  @loST_BaseUofM char(9),  @loDA_NextStartDate datetime,  @loDA_NextEndDate datetime,  @loST_CP_Type char(1),  @loDE_CP_Value decimal(19,5),  @loST_SchemeCode char(15),  @loIN_DecPlaces integer,  @loIN_DPQty integer,  @loST_FUNLCURR char(16),  @loIN_PricesNotReqd integer,  @loIN_ConvertFunctPrice integer  SELECT @loIN_DecPlaces = DECPLCUR - 1, @loIN_DPQty = DECPLQTY - 1  FROM IV00101 where ITEMNMBR = @piST_ItemNumber  IF @piDE_Qty = 0 BEGIN  IF @loIN_DPQty > 0  BEGIN  SET @piDE_Qty = '0.' + SUBSTRING('00000', 1, @loIN_DPQty - 1) + '1'  END  ELSE  BEGIN  SET @piDE_Qty = 1  END END  EXECUTE ExtPricingGetFunctionalCurrency @loST_FUNLCURR OUTPUT  IF @loST_FUNLCURR IS NULL BEGIN  SELECT @loST_FUNLCURR = '' END  SELECT @loIN_PricesNotReqd = SOP40100.Prices_Not_Required_In_Pr,  @loIN_ConvertFunctPrice = SOP40100.Convert_Functional_Price  FROM SOP40100  SET @poIN_CurrPriceFound = 0  IF @piST_Currency = @loST_FUNLCURR BEGIN  GOTO FunctCurrencyRoutines END  IF (SELECT COUNT(*)   FROM IV00105  WHERE ITEMNMBR = @piST_ItemNumber AND  CURNCYID = @piST_Currency) > 0 BEGIN  SELECT  @loIN_DecPlaces = DECPLCUR - 1  FROM IV00105   WHERE ITEMNMBR = @piST_ItemNumber AND  CURNCYID = @piST_Currency END ELSE BEGIN  RETURN 50033 END   SET @poIN_CurrPriceFound = 1  IF @piST_GetType = 'P' BEGIN  GOTO CurrBaseListProduct END  CurrPriceListProduct:  DECLARE scCurrPriceListProduct SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  WHERE SL.PRODTCOD = 'P'  AND SL.LINKCODE = @piST_PriceListCode  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'I'  AND SW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @piST_Currency  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scCurrPriceListProduct  FETCH FIRST FROM scCurrPriceListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scCurrPriceListProduct  DEALLOCATE scCurrPriceListProduct  GOTO CurrPriceListGroup END ELSE BEGIN  FETCH NEXT FROM scCurrPriceListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM  IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step1_Step = 1  set @poST_Step1_Scheme = @loST_SchemeCode  set @poST_Step1_Type = @loST_ValueType  set @poDE_Step1_Value = 0  CLOSE scCurrPriceListProduct  DEALLOCATE scCurrPriceListProduct  IF (@loIN_PricesNotReqd = 1) AND (@loIN_ConvertFunctPrice = 1)  BEGIN  GOTO FunctCurrencyRoutines  END  ELSE  BEGIN  SET @poLO_Error = 50010  RETURN 1  END  END  END END  FETCH FIRST FROM scCurrPriceListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scCurrPriceListProduct DEALLOCATE scCurrPriceListProduct  set @poIN_Step1_Step = 1 set @poST_Step1_Scheme = @loST_SchemeCode set @poST_Step1_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  RETURN 0 END ELSE BEGIN  set @loST_CP_Type = @loST_ValueType  if @loST_ValueType = 'P'  BEGIN  set @loDE_CP_Value = @loDE_Value  set @poDE_Step1_Value = @loDE_Value  END  ELSE  BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @loDE_CP_Value = @loDE_Value * @loDE_EQUOMQTY  END  GOTO CurrBaseListProduct END  CurrPriceListGroup:  DECLARE scCurrPriceListGroup SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  INNER JOIN IV10400 as GW  ON GW.PRCGRPID = SW.ITEMNMBR  WHERE SL.PRODTCOD = 'P'  AND SL.LINKCODE = @piST_PriceListCode  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'G'  AND GW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @piST_Currency  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scCurrPriceListGroup  FETCH FIRST FROM scCurrPriceListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scCurrPriceListGroup  DEALLOCATE scCurrPriceListGroup  GOTO CurrBaseListProduct END ELSE  BEGIN  FETCH NEXT FROM scCurrPriceListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM  IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step1_Step = 2  set @poST_Step1_Scheme = @loST_SchemeCode  set @poST_Step1_Type = @loST_ValueType  set @poDE_Step1_Value = 0  CLOSE scCurrPriceListGroup  DEALLOCATE scCurrPriceListGroup  IF (@loIN_PricesNotReqd = 1) AND (@loIN_ConvertFunctPrice = 1)  BEGIN  GOTO FunctCurrencyRoutines  END  ELSE  BEGIN  SET @poLO_Error = 50015  RETURN 1  END  END  END END  FETCH FIRST FROM scCurrPriceListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scCurrPriceListGroup DEALLOCATE scCurrPriceListGroup  set @poIN_Step1_Step = 2 set @poST_Step1_Scheme = @loST_SchemeCode set @poST_Step1_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  RETURN 0 END ELSE BEGIN  set @loST_CP_Type = @loST_ValueType  if @loST_ValueType = 'P'  BEGIN  set @poDE_Step1_Value = @loDE_Value  set @loDE_CP_Value = @loDE_Value  END  ELSE  BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @loDE_CP_Value = @loDE_Value * @loDE_EQUOMQTY  END  GOTO CurrBaseListProduct END  CurrBaseListProduct:  DECLARE scCurrBaseListProduct SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  INNER JOIN SOP10109 as PH  ON PH.PRCBKID = SL.LINKCODE  WHERE PH.ISBASE = 1  AND SL.PRODTCOD = 'P'  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'I'  AND SW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @piST_Currency  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scCurrBaseListProduct  FETCH FIRST FROM scCurrBaseListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scCurrBaseListProduct  DEALLOCATE scCurrBaseListProduct  GOTO CurrBaseListGroup END ELSE BEGIN  FETCH NEXT FROM scCurrBaseListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM  IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step2_Step = 1  set @poST_Step2_Scheme = @loST_SchemeCode  set @poST_Step2_Type = @loST_ValueType  set @poDE_Step2_Value = 0  CLOSE scCurrBaseListProduct  DEALLOCATE scCurrBaseListProduct  IF (@loIN_PricesNotReqd = 1) AND (@loIN_ConvertFunctPrice = 1)  BEGIN  GOTO FunctCurrencyRoutines  END  ELSE  BEGIN  SET @poLO_Error = 50005  RETURN 1  END  END  END END  FETCH FIRST FROM scCurrBaseListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scCurrBaseListProduct DEALLOCATE scCurrBaseListProduct  set @poIN_Step2_Step = 1 set @poST_Step2_Scheme = @loST_SchemeCode set @poST_Step2_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Step2_Value = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  IF @loST_CP_Type = 'V'  BEGIN  set @poDE_Price = @poDE_Price - @loDE_CP_Value  END  ELSE IF @loST_CP_Type = 'P'   BEGIN  SELECT @poDE_Price = ROUND(@poDE_Price * (@loDE_CP_Value / 100),@loIN_DecPlaces)  END  RETURN 0 END ELSE BEGIN  IF @loST_ValueType <> ' '  BEGIN  IF (@loIN_PricesNotReqd = 1) AND (@loIN_ConvertFunctPrice = 1)  BEGIN  GOTO FunctCurrencyRoutines  END  ELSE  BEGIN  SET @poLO_Error = 50008  RETURN 1  END  END END  CurrBaseListGroup:  DECLARE scCurrBaseListGroup SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  INNER JOIN SOP10109 as PH  ON PH.PRCBKID = SL.LINKCODE  INNER JOIN IV10400 as GW  ON GW.PRCGRPID = SW.ITEMNMBR  WHERE PH.ISBASE = 1  AND SL.PRODTCOD = 'P'  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'G'  AND GW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @piST_Currency  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scCurrBaseListGroup  FETCH FIRST FROM scCurrBaseListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scCurrBaseListGroup  DEALLOCATE scCurrBaseListGroup  IF (@loIN_PricesNotReqd = 1) AND (@loIN_ConvertFunctPrice = 1)  BEGIN  GOTO FunctCurrencyRoutines  END  ELSE  BEGIN  SET @poLO_Error = 50007  RETURN 1  END END ELSE BEGIN  FETCH NEXT FROM scCurrBaseListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM   IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step2_Step = 2  set @poST_Step2_Scheme = @loST_SchemeCode  set @poST_Step2_Type = @loST_ValueType  set @poDE_Step2_Value = 0  CLOSE scCurrBaseListGroup  DEALLOCATE scCurrBaseListGroup  IF (@loIN_PricesNotReqd = 1) AND (@loIN_ConvertFunctPrice = 1)  BEGIN  GOTO FunctCurrencyRoutines  END  ELSE  BEGIN  SET @poLO_Error = 50006  RETURN 1  END  END  END END  FETCH FIRST FROM scCurrBaseListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scCurrBaseListGroup DEALLOCATE scCurrBaseListGroup  set @poIN_Step2_Step = 2 set @poST_Step2_Scheme = @loST_SchemeCode set @poST_Step2_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Step2_Value = @loDE_Value * @loDE_EQUOMQTY  IF @loST_CP_Type = 'V'  BEGIN  set @poDE_Price = @poDE_Price - @loDE_CP_Value  END  ELSE IF @loST_CP_Type = 'P'   BEGIN  SELECT @poDE_Price = ROUND(@poDE_Price * (@loDE_CP_Value / 100),@loIN_DecPlaces)  END  RETURN 0 END ELSE BEGIN  IF @loST_ValueType <> ' '  BEGIN  IF (@loIN_PricesNotReqd = 1) AND (@loIN_ConvertFunctPrice = 1)  BEGIN  GOTO FunctCurrencyRoutines  END  ELSE  BEGIN  SET @poLO_Error = 50009  RETURN 1  END  END END  FunctCurrencyRoutines:  SET @poIN_CurrPriceFound = 0  IF @piST_Currency <>  @loST_FUNLCURR BEGIN  IF @loIN_PricesNotReqd = 0  BEGIN  SET @poLO_Error = 50031  RETURN 1  END  ELSE  BEGIN  IF @loIN_ConvertFunctPrice = 0  BEGIN  SET @poDE_Price = 0  RETURN 0  END  END END  IF @piST_Currency <>  @loST_FUNLCURR BEGIN  SELECT  @loIN_DecPlaces = DECPLCUR - 1  FROM IV00101 where ITEMNMBR = @piST_ItemNumber END  SET @poLO_Error = 0  SET @loST_CP_Type = ' ' SET @loDE_CP_Value = 0  SET @poIN_Step1_Step = 0 SET @poST_Step1_Scheme = ' '  SET @poST_Step1_Type = ' ' SET @poDE_Step1_Value = 0 SET @poIN_Step2_Step = 0 SET @poST_Step2_Scheme = ' ' SET @poST_Step2_Type = ' ' SET @poDE_Step2_Value = 0  IF @piST_GetType = 'P' BEGIN  GOTO BaseListProduct END  PriceListProduct:  DECLARE scPriceListProduct SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  WHERE SL.PRODTCOD = 'P'  AND SL.LINKCODE = @piST_PriceListCode  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'I'  AND SW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @loST_FUNLCURR  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scPriceListProduct  FETCH FIRST FROM scPriceListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scPriceListProduct  DEALLOCATE scPriceListProduct  GOTO PriceListGroup END ELSE BEGIN  FETCH NEXT FROM scPriceListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM  IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step1_Step = 1  set @poST_Step1_Scheme = @loST_SchemeCode  set @poST_Step1_Type = @loST_ValueType  set @poDE_Step1_Value = 0  CLOSE scPriceListProduct  DEALLOCATE scPriceListProduct  SET @poLO_Error = 50010  RETURN 1  END  END END  FETCH FIRST FROM scPriceListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scPriceListProduct DEALLOCATE scPriceListProduct  set @poIN_Step1_Step = 1 set @poST_Step1_Scheme = @loST_SchemeCode set @poST_Step1_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  RETURN 0 END ELSE BEGIN  set @loST_CP_Type = @loST_ValueType  if @loST_ValueType = 'P'  BEGIN  set @loDE_CP_Value = @loDE_Value  set @poDE_Step1_Value = @loDE_Value  END  ELSE  BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @loDE_CP_Value = @loDE_Value * @loDE_EQUOMQTY  END  GOTO BaseListProduct END  PriceListGroup:  DECLARE scPriceListGroup SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  INNER JOIN IV10400 as GW  ON GW.PRCGRPID = SW.ITEMNMBR  WHERE SL.PRODTCOD = 'P'  AND SL.LINKCODE = @piST_PriceListCode  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'G'  AND GW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @loST_FUNLCURR  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scPriceListGroup  FETCH FIRST FROM scPriceListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scPriceListGroup  DEALLOCATE scPriceListGroup  GOTO BaseListProduct END ELSE  BEGIN  FETCH NEXT FROM scPriceListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM  IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step1_Step = 2  set @poST_Step1_Scheme = @loST_SchemeCode  set @poST_Step1_Type = @loST_ValueType  set @poDE_Step1_Value = 0  CLOSE scPriceListGroup  DEALLOCATE scPriceListGroup  SET @poLO_Error = 50015  RETURN 1  END  END END  FETCH FIRST FROM scPriceListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scPriceListGroup DEALLOCATE scPriceListGroup  set @poIN_Step1_Step = 2 set @poST_Step1_Scheme = @loST_SchemeCode set @poST_Step1_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  RETURN 0 END ELSE BEGIN  set @loST_CP_Type = @loST_ValueType  if @loST_ValueType = 'P'  BEGIN  set @poDE_Step1_Value = @loDE_Value  set @loDE_CP_Value = @loDE_Value  END  ELSE  BEGIN  set @poDE_Step1_Value = @loDE_Value * @loDE_EQUOMQTY  set @loDE_CP_Value = @loDE_Value * @loDE_EQUOMQTY  END  GOTO BaseListProduct END  BaseListProduct:  DECLARE scBaseListProduct SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  INNER JOIN SOP10109 as PH  ON PH.PRCBKID = SL.LINKCODE  WHERE PH.ISBASE = 1  AND SL.PRODTCOD = 'P'  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'I'  AND SW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @loST_FUNLCURR  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scBaseListProduct  FETCH FIRST FROM scBaseListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scBaseListProduct  DEALLOCATE scBaseListProduct  GOTO BaseListGroup END ELSE BEGIN  FETCH NEXT FROM scBaseListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM  IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step2_Step = 1  set @poST_Step2_Scheme = @loST_SchemeCode  set @poST_Step2_Type = @loST_ValueType  set @poDE_Step2_Value = 0  CLOSE scBaseListProduct  DEALLOCATE scBaseListProduct  SET @poLO_Error = 50005  RETURN 1  END  END END  FETCH FIRST FROM scBaseListProduct  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scBaseListProduct DEALLOCATE scBaseListProduct  set @poIN_Step2_Step = 1 set @poST_Step2_Scheme = @loST_SchemeCode set @poST_Step2_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Step2_Value = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  IF @loST_CP_Type = 'V'  BEGIN  set @poDE_Price = @poDE_Price - @loDE_CP_Value  END  ELSE IF @loST_CP_Type = 'P'   BEGIN  SELECT @poDE_Price = ROUND(@poDE_Price * (@loDE_CP_Value / 100),@loIN_DecPlaces)  END  RETURN 0 END ELSE BEGIN  IF @loST_ValueType <> ' '  BEGIN  SET @poLO_Error = 50008  RETURN 1  END END  BaseListGroup:  DECLARE scBaseListGroup SCROLL CURSOR FOR  SELECT SH.PRCSHID, SWU.PSITMVAL, SWU.EQUOMQTY, SW.PRODTCOD, SH.STRTDATE, SH.ENDDATE, SW.BASEUOFM FROM RM00500 as SL  INNER JOIN SOP10110 as SH  ON SH.PRCSHID = SL.PRCSHID  INNER JOIN IV10401 as SW  ON SW.PRCSHID = SL.PRCSHID  INNER JOIN IV10402 as SWU  ON SWU.PRCSHID = SL.PRCSHID  AND SWU.ITEMNMBR = SW.ITEMNMBR  INNER JOIN SOP10109 as PH  ON PH.PRCBKID = SL.LINKCODE  INNER JOIN IV10400 as GW  ON GW.PRCGRPID = SW.ITEMNMBR  WHERE PH.ISBASE = 1  AND SL.PRODTCOD = 'P'  AND SH.ACTIVE = 1  AND SW.ACTIVE = 1  AND SW.EPITMTYP = 'G'  AND GW.ITEMNMBR = @piST_ItemNumber  AND SH.STRTDATE <= @piDA_Date  AND SH.ENDDATE >= @piDA_Date  AND SH.PROMO = 0  AND SH.CURNCYID = @loST_FUNLCURR  AND SWU.UOFM = @piST_UofM  AND @piDE_Qty BETWEEN SWU.QTYFROM AND SWU.QTYTO  ORDER BY SH.STRTDATE DESC,  SH.ENDDATE  OPEN scBaseListGroup  FETCH FIRST FROM scBaseListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  IF @@FETCH_STATUS <> 0 BEGIN  CLOSE scBaseListGroup  DEALLOCATE scBaseListGroup  SET @poLO_Error = 50007  RETURN 1 END ELSE BEGIN  FETCH NEXT FROM scBaseListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_NextStartDate,  @loDA_NextEndDate,  @loST_BaseUofM   IF @@FETCH_STATUS = 0  BEGIN  IF @loDA_StartDate = @loDA_NextStartDate and @loDA_EndDate = @loDA_NextEndDate  BEGIN  set @poIN_Step2_Step = 2  set @poST_Step2_Scheme = @loST_SchemeCode  set @poST_Step2_Type = @loST_ValueType  set @poDE_Step2_Value = 0  CLOSE scBaseListGroup  DEALLOCATE scBaseListGroup  SET @poLO_Error = 50006  RETURN 1  END  END END  FETCH FIRST FROM scBaseListGroup  INTO @loST_SchemeCode,  @loDE_Value,  @loDE_EQUOMQTY,  @loST_ValueType,  @loDA_StartDate,  @loDA_EndDate,  @loST_BaseUofM  CLOSE scBaseListGroup DEALLOCATE scBaseListGroup  set @poIN_Step2_Step = 2 set @poST_Step2_Scheme = @loST_SchemeCode set @poST_Step2_Type = @loST_ValueType  IF @loST_ValueType = 'N' BEGIN  set @poDE_Price = @loDE_Value * @loDE_EQUOMQTY  set @poDE_Step2_Value = @loDE_Value * @loDE_EQUOMQTY  IF @loST_CP_Type = 'V'  BEGIN  set @poDE_Price = @poDE_Price - @loDE_CP_Value  END  ELSE IF @loST_CP_Type = 'P'   BEGIN  SELECT @poDE_Price = ROUND(@poDE_Price * (@loDE_CP_Value / 100),@loIN_DecPlaces)  END  RETURN 0 END ELSE BEGIN  IF @loST_ValueType <> ' '  BEGIN  SET @poLO_Error = 50009  RETURN 1  END END    
GO
GRANT EXECUTE ON  [dbo].[sopExtPricingPriceTraceForPriceSheetItem] TO [DYNGRP]
GO
