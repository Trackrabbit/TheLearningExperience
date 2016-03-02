SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_POP_Make_PO](  @PromisedDate datetime,  @OrderedBy char(15),  @BatchNum char(15),  @ItemNumber char(30),  @VendorItemNumber char(30),  @LocationCode char(10),  @UofM char(8),  @Qty numeric(19,5),  @Cost numeric(19,5),  @VendorID char(15),  @ShipTo char(30),  @ShipMethod char(20),  @UserDate datetime,  @CallNumber char(16),  @PO_Number char(17) output,  @PO_LineSeq numeric(19,5) output,  @DropShipCustomer char(15) = '',  @DropShipCustomerSite char(21) = '',  @CompanyID smallint,  @CURNCYID  char(15),  @CURRNIDX  smallint,  @I_sRateCalcMethod  smallint ,           @I_sViewMode  smallint,            @I_nExchangeRate  numeric(15,7),       @I_nDenomExchangeRate numeric(15,7),       @I_sMCTrxState  smallint,            @I_sDecimalPlaces  smallint,           @RateType  char(15),  @ExchangeTableType char(15),  @ExchangeDate datetime,  @ExchangeTime datetime,  @AccountIndex int,  @Consolidate tinyint   ) as  Declare @UseStandardCost int,  @PurchasingUofM char(8),  @BaseUofM char(8),  @FactorEnteredtoBaseUofM numeric(19,5),  @FactorBasetoPurchUofM numeric(19,5),  @UofMSchedule char(10),  @PriceSchedule char(15),  @CurrencyID char(15),  @NowDateTime datetime,  @NowTime datetime,  @O_iErrorState int  declare @H_PONUMBER char(17), @H_POSTATUS smallint, @H_STATGRP smallint, @H_POTYPE smallint, @H_USER2ENT char(15), @H_CONFIRM1 char(21), @H_DOCDATE datetime, @H_LSTEDTDT datetime, @H_LSTPRTDT datetime, @H_PRMDATE datetime, @H_PRMSHPDTE datetime, @H_REQDATE datetime, @H_REQTNDT datetime, @H_LOCNCODE char(11), @H_SHIPMTHD char(15), @H_TXRGNNUM char(25), @H_REMSUBTO numeric(19,5), @H_SUBTOTAL numeric(19,5), @H_TRDISAMT numeric(19,5), @H_FRTAMNT numeric(19,5), @H_MSCCHAMT numeric(19,5), @H_TAXAMNT numeric(19,5), @H_VENDORID char(15), @H_VENDNAME char(65), @H_MINORDER numeric(19,5), @H_VADCDPAD char(15), @H_CMPANYID smallint, @H_PRBTADCD char(15), @H_PRSTADCD char(15), @H_CMPNYNAM char(31), @H_CONTACT char(31), @H_ADDRESS1 char(31), @H_ADDRESS2 char(31), @H_ADDRESS3 char(31), @H_CITY char(31), @H_STATE char(29), @H_ZIPCODE char(11), @H_CCODE char(7), @H_COUNTRY char(21), @H_PHONE1 char(21), @H_PHONE2 char(21), @H_PHONE3 char(21), @H_FAX char(21), @H_PYMTRMID char(21), @H_DSCDLRAM numeric(19,5), @H_DSCPCTAM smallint, @H_DISAMTAV numeric(19,5), @H_DRCPERDZ smallint, @H_DISCDATE datetime, @H_DUEDATE datetime, @H_TRDPCTPR int, @H_CUSTNMBR char(15), @H_TIMESPRT smallint, @H_CREATDDT datetime, @H_MODIFDT datetime, @H_PONOTIDS_1 numeric(19,5), @H_PONOTIDS_2 numeric(19,5), @H_PONOTIDS_3 numeric(19,5), @H_PONOTIDS_4 numeric(19,5), @H_PONOTIDS_5 numeric(19,5), @H_PONOTIDS_6 numeric(19,5), @H_PONOTIDS_7 numeric(19,5), @H_PONOTIDS_8 numeric(19,5), @H_PONOTIDS_9 numeric(19,5), @H_COMMNTID char(15), @H_COMMENT_1 char(51), @H_COMMENT_2 char(51), @H_COMMENT_3 char(51), @H_COMMENT_4 char(51), @H_JOBNUMBR char(17), @H_COSTCODE char(27), @H_COSTTYPE smallint, @H_CANCSUB numeric(19,5), @H_CURNCYID  char(15), @H_CURRNIDX  smallint, @H_RATETPID  char(15), @H_EXGTBLID  char(15), @H_XCHGRATE  numeric(19,5), @H_EXCHDATE  datetime, @H_TIME1  datetime, @H_RATECALC  smallint, @H_DENXRATE  numeric(19,5), @H_MCTRXSTT  smallint, @H_OREMSUBT  numeric(19,5), @H_ORSUBTOT  numeric(19,5), @H_Originating_Canceled_Sub  numeric(19,5), @H_ORTDISAM  numeric(19,5), @H_ORFRTAMT  numeric(19,5), @H_OMISCAMT  numeric(19,5), @H_ORTAXAMT  numeric(19,5), @H_ORDDLRAT  numeric(19,5), @H_ODISAMTAV  numeric(19,5), @H_BUYERID  char(15), @H_ONORDAMT  numeric(19,5), @H_ORORDAMT  numeric(19,5), @H_CMMTTEXT  char(255), @H_TaxScheduleID char(15), @H_FScheduleID char(15), @H_MScheduleID char(15), @H_FTaxable tinyint, @H_MTaxable tinyint, @H_PURCHCMPNYNAM char(65), @H_PURCHCONTACT char(31), @H_PURCHADDRESS1 char(31), @H_PURCHADDRESS2 char(31), @H_PURCHADDRESS3 char(31), @H_PURCHCITY char(31), @H_PURCHSTATE char(29), @H_PURCHZIPCODE char(11), @H_PURCHCCode char(7), @H_PURCHCOUNTRY char(21), @H_PURCHPHONE1 char(21), @H_PURCHPHONE2 char(21), @H_PURCHPHONE3 char(21), @H_PURCHFAX char(21), @H_TaxRegNum char(25)  declare @L_PONUMBER char(17), @L_ORD int, @L_POLNESTA smallint, @L_POTYPE smallint, @L_ITEMNMBR char(31), @L_ITEMDESC char(100), @L_VENDORID char(15), @L_VNDITNUM char(31), @L_VNDITDSC char(51), @L_NONINVEN smallint, @L_LOCNCODE char(11), @L_UOFM char(9), @L_UMQTYINB numeric(19,5), @L_QTYORDER numeric(19,5), @L_QTYCANCE numeric(19,5), @L_UNITCOST numeric(19,5), @L_EXTDCOST numeric(19,5), @L_INVINDX int, @L_REQDATE datetime, @L_PRMDATE datetime, @L_PRMSHPDTE datetime, @L_REQSTDBY char(21), @L_COMMNTID char(15), @L_DOCTYPE smallint, @L_POLNEARY_1 numeric(19,5), @L_POLNEARY_2 numeric(19,5), @L_POLNEARY_3 numeric(19,5), @L_POLNEARY_4 numeric(19,5), @L_POLNEARY_5 numeric(19,5), @L_DECPLCUR smallint, @OrigDecCur smallint, @L_DECPLQTY smallint, @L_ITMTRKOP smallint, @L_BRKFLD1 smallint, @L_BRKFLD2 smallint, @L_BRKFLD3 smallint, @L_PO_Line_Status_Orig smallint, @L_QTY_Canceled_Orig numeric(19,5), @L_PostedSubtotal numeric(19,5), @L_JOBNUMBR char(17), @L_COSTCODE char(27), @L_COSTTYPE smallint, @L_CURNCYID char(15), @L_CURRNIDX smallint, @L_XCHGRATE numeric(19,5), @L_RATECALC smallint, @L_DENXRATE numeric(19,5), @L_ORUNTCST numeric(19,5), @L_OREXTCST numeric(19,5), @L_LINEORIGIN smallint, @L_FREEONBOARD smallint, @L_ODECPLCU smallint, @L_VCTNMTHD smallint, @ItemDescription char(100), @L_Origin smallint, @L_LandCostGroupID char(15), @SVC_Doc_Type smallint, @CallLine int, @VendorPurAdd char(15), @LineNumber smallint, @L_SHIPMTHD char(20), @L_ExtCost_DECPLCUR smallint, @FreeOnBoard smallint, @NonIV smallint, @NonInventoried tinyint, @CMPNTSEQ int  declare @CreateHeader tinyint, @CurrencyIndex smallint declare @LineItemType char(3),  @POTaxOption smallint,  @POLineTaxSchID char(15),  @POLinSiteSchID char(15),  @VendorTaxID char(15),  @NONIVSCH char(15) declare @MinDate datetime  exec smGetMinDate @MinDate output   select @H_CMPANYID = @CompanyID select @H_POTYPE = 1 if not exists(select * from IV00101 where ITEMNMBR = @ItemNumber)  select @NonInventoried = 1 select @CreateHeader = 1, @CallLine = @PO_LineSeq  select @SVC_Doc_Type = SRCDOCTYP, @LineItemType = LINITMTYP, @ItemDescription = ITEMDESC, @CMPNTSEQ = CMPNTSEQ from SVC00710  where SRCDOCNUM = @CallNumber and ITEMNMBR = @ItemNumber and LNITMSEQ =@CallLine if @LineItemType  = 'A' or @LineItemType = 'E'   select @H_POTYPE = 2  if @SVC_Doc_Type = 1 select @L_Origin = 5  else if @SVC_Doc_Type = 2 select @L_Origin = 7 else select @L_Origin = 6  if @Consolidate = 1   begin  if @DropShipCustomer > ''   select @H_PONUMBER = MAX(PONUMBER) from POP10100 where POSTATUS = 1 and POTYPE = @H_POTYPE and VENDORID = @VendorID and CUSTNMBR = @DropShipCustomer  else  begin  if @ShipTo > ''  select @H_PONUMBER = MAX(PONUMBER) from POP10100 where POSTATUS = 1 and POTYPE = @H_POTYPE and VENDORID = @VendorID and PRSTADCD = @ShipTo  else  begin  if @LocationCode > ''  select @H_PONUMBER = MAX(PONUMBER) from POP10100 where POSTATUS = 1 and POTYPE = @H_POTYPE and VENDORID = @VendorID and PRSTADCD = @LocationCode  else  select @H_PONUMBER = MAX(PONUMBER) from POP10100 where POSTATUS = 1 and POTYPE = @H_POTYPE and VENDORID = @VendorID and CUSTNMBR = ''  end  end   if @H_PONUMBER > ''  select @CreateHeader = 0  end   select @H_CMPNYNAM = CMPNYNAM, @H_PRBTADCD = LOCATNID from DYNAMICS..SY01500 where CMPANYID = @CompanyID  if @DropShipCustomer > ''   BEGIN  select @H_CMPNYNAM = CUSTNAME, @H_CUSTNMBR = CUSTNMBR, @H_PRSTADCD = PRSTADCD   from RM00101 where CUSTNMBR = @DropShipCustomer  select  @H_CONTACT = CNTCPRSN,@H_ADDRESS1 = ADDRESS1, @H_ADDRESS2 = ADDRESS2,@H_ADDRESS3 = ADDRESS3,  @H_CITY = CITY, @H_STATE = STATE, @H_ZIPCODE = ZIP, @H_CCODE = CCode, @H_COUNTRY = COUNTRY, @H_PHONE1 = PHONE1,@H_PHONE2 = PHONE2,  @H_PHONE3 = PHONE3, @H_FAX = FAX, @H_CUSTNMBR = CUSTNMBR  from RM00102 where CUSTNMBR = @DropShipCustomer and ADRSCODE = @DropShipCustomerSite  select @POLinSiteSchID = PCTAXSCH from IV40700 where LOCNCODE = @LocationCode  END  else  BEGIN  select @H_CUSTNMBR = ''  select @H_CONTACT = LOCNDSCR,@H_ADDRESS1 = ADDRESS1, @H_ADDRESS2 = ADDRESS2,@H_ADDRESS3 = ADDRESS3,  @H_CITY = CITY, @H_STATE = STATE, @H_ZIPCODE = ZIPCODE, @H_CCODE = CCode, @H_COUNTRY = COUNTRY, @H_PHONE1 = PHONE1,@H_PHONE2 = PHONE2,  @H_PHONE3 = PHONE3, @H_FAX = FAXNUMBR, @H_PRSTADCD = LOCNCODE, @POLinSiteSchID = PCTAXSCH   from IV40700 where LOCNCODE = @LocationCode  if @ShipTo > ''  BEGIN  select @H_POTYPE =1,@H_PRSTADCD = @ShipTo, @H_ADDRESS1 = ADDRESS1, @H_ADDRESS2 = ADDRESS2,  @H_ADDRESS3 = ADDRESS3,@H_CONTACT=DSCRIPTN, @H_CMPNYNAM = DSCRIPTN, @L_SHIPMTHD = SHIPMTHD,  @H_CITY = CITY, @H_STATE = STATE, @H_ZIPCODE = ZIP, @H_COUNTRY = COUNTRY   from SVC00980 where SVC_Misc_Address_Code = @ShipTo  if @L_SHIPMTHD > '' select @ShipMethod = @L_SHIPMTHD  END  END select @POLinSiteSchID = PCTAXSCH from IV40700 where LOCNCODE = @LocationCode select @L_ExtCost_DECPLCUR = DECPLCUR from MC40000  left join DYNAMICS..MC40200 on MC40000.FUNCRIDX = DYNAMICS..MC40200.CURRNIDX  if (select SHIPTYPE from SY03000 where SHIPMTHD = @ShipMethod) = 0   begin  select @VendorPurAdd = VADCDPAD from PM00200 where VENDORID =@VendorID  select @H_TaxScheduleID = TAXSCHID from PM00300 where VENDORID =@VendorID and ADRSCODE = @VendorPurAdd  select @POLinSiteSchID = isnull(@H_TaxScheduleID,'')  end else  select @H_TaxScheduleID = COPTXSCH from DYNAMICS..SY01500 where CMPANYID = @CompanyID select @H_FTaxable = Purchase_Freight_Taxable , @H_MTaxable= Purchase_Misc_Taxable,  @H_FScheduleID = FRTSCHID,@H_MScheduleID = MSCSCHID from POP40100 select @NowDateTime = getdate() exec SVC_util_split_datetime @NowDateTime, @H_DOCDATE output, @NowTime output  select  @H_PYMTRMID = PYMTRMID,  @H_VENDNAME = VENDNAME,  @H_VADCDPAD = VADCDPAD,  @H_PONOTIDS_3 = NOTEINDX,  @CurrencyID = CURNCYID, @H_PURCHCMPNYNAM = VENDNAME, @H_PURCHCONTACT =VNDCNTCT, @H_PURCHADDRESS1 =ADDRESS1, @H_PURCHADDRESS2 =ADDRESS2, @H_PURCHADDRESS3 =ADDRESS3, @H_PURCHCITY = CITY, @H_PURCHSTATE =STATE, @H_PURCHZIPCODE =ZIPCODE, @H_PURCHCCode =CCode, @H_PURCHCOUNTRY =COUNTRY, @H_PURCHPHONE1 =PHNUMBR1, @H_PURCHPHONE2 =PHNUMBR2, @H_PURCHPHONE3 =PHONE3, @H_PURCHFAX =FAXNUMBR, @H_TaxRegNum = TXRGNNUM,  @VendorTaxID = TAXSCHID  from PM00200 where VENDORID = @VendorID select @H_DUEDATE = @UserDate exec SVC_POP_Get_Due_Date @H_PYMTRMID,@H_DUEDATE output  if @LineItemType = 'N' or @NonInventoried = 1  begin  select @L_UNITCOST = UNITCOST, @L_ORUNTCST = 0, @L_ITEMDESC = ITEMDESC from SVC00203  where SRVRECTYPE = 2 and CALLNBR =@CallNumber and LNITMSEQ =@CallLine and LINITMTYP = 'P' and CMPNTSEQ = @CMPNTSEQ   select @L_ITMTRKOP = 1,@NonIV = 1,  @L_DECPLCUR = 9,   @L_DECPLQTY = DECPLQTY,  @L_POLNEARY_1 = 0, @POTaxOption = Purchase_Non_IV_Taxable, @NONIVSCH = NONIVSCH,  @L_VCTNMTHD = 0 from POP40100  if @POTaxOption = 1  select @POLineTaxSchID = @NONIVSCH  end else  begin  select  @L_UNITCOST = CURRCOST,@NonIV = 0,  @L_ITEMDESC = ITEMDESC,  @L_INVINDX = IVIVINDX,  @L_ITMTRKOP = ITMTRKOP,  @L_DECPLCUR = DECPLCUR,   @L_DECPLQTY = DECPLQTY,  @L_POLNEARY_1 = NOTEINDX,  @UofMSchedule = UOMSCHDL,  @L_VCTNMTHD = VCTNMTHD,  @PurchasingUofM = PRCHSUOM,  @POTaxOption = Purchase_Tax_Options,  @POLineTaxSchID = Purchase_Item_Tax_Schedu   from IV00101 where ITEMNMBR = @ItemNumber  select @L_LandCostGroupID = Landed_Cost_Group_ID from IV00102 where ITEMNMBR = @ItemNumber and LOCNCODE = @LocationCode  select @L_VNDITDSC = VNDITDSC ,  @L_ORUNTCST = Last_Originating_Cost, @FreeOnBoard = FREEONBOARD  from IV00103 where  ITEMNMBR = @ItemNumber and VENDORID = @VendorID  if @L_DECPLCUR > 0 select @L_DECPLCUR = @L_DECPLCUR + 6  else select @L_DECPLCUR = @L_ExtCost_DECPLCUR + 6   end if @AccountIndex = 0 or @AccountIndex is null   select @AccountIndex = ACTINDX from SY01100 where SERIES = 5 and SEQNUMBR = 100 select @L_INVINDX = @AccountIndex  if @H_POTYPE = 2   begin  exec SVC_POP_GetDropShipAccount @DropShipCustomer, @ItemNumber, @L_INVINDX output  if @POTaxOption = 3  select @POLinSiteSchID = isnull(@H_TaxScheduleID,'')  end  if (@LineItemType  = 'A' or @LineItemType = 'E') and @SVC_Doc_Type = 1   select @L_UNITCOST = UNITCOST, @L_ORUNTCST = 0 from SVC00203  where SRVRECTYPE = 2 and CALLNBR =@CallNumber and LNITMSEQ =@CallLine and   CMPNTSEQ = @CMPNTSEQ and LINITMTYP = @LineItemType if @CurrencyID = '' or @CurrencyID is null  select @CurrencyID = FUNLCURR, @CurrencyIndex = FUNCRIDX from MC40000  else  select @CurrencyIndex = CURRNIDX from DYNAMICS..MC40200 where CURNCYID = @CurrencyID  if @CURRNIDX = 0   select  @CURRNIDX = @CurrencyIndex  IF EXISTS(SELECT * FROM IV00105 WHERE ITEMNMBR = @ItemNumber AND CURRNIDX = @CURRNIDX)  SELECT @OrigDecCur = DECPLCUR-1 FROM IV00105 WHERE ITEMNMBR = @ItemNumber AND CURRNIDX = @CURRNIDX ELSE  SELECT @OrigDecCur = DECPLCUR-1 FROM IV00101 WHERE ITEMNMBR = @ItemNumber   if @OrigDecCur = 0 or @OrigDecCur is null  select @OrigDecCur = DECPLCUR from DYNAMICS..MC40200 where CURRNIDX = @CURRNIDX  exec SVC_Get_QtyInBase @ItemNumber,@UofM,2,@FactorEnteredtoBaseUofM OUTPUT select @L_UOFM = @PurchasingUofM, @L_UMQTYINB = @FactorEnteredtoBaseUofM exec SVC_Get_QtyInBase @ItemNumber,@L_UOFM,2,@FactorBasetoPurchUofM OUTPUT  IF @UofM > ''     select @L_UOFM = @UofM  if @FactorBasetoPurchUofM = 0 select @FactorBasetoPurchUofM = 1  select @L_UNITCOST = (@L_UNITCOST * @FactorEnteredtoBaseUofM ), @L_QTYORDER = @Qty  if @L_QTYORDER = 0   select @L_QTYORDER = @Qty if @Cost = 0   select @L_EXTDCOST = @L_QTYORDER * isnull(@L_UNITCOST,0)  else  select @L_EXTDCOST = @Qty * @Cost  if @I_sDecimalPlaces = 0 select @I_sDecimalPlaces = 1 else select @I_sDecimalPlaces = @I_sDecimalPlaces - 1 if  @L_ORUNTCST > 0   begin  select @L_ORUNTCST = @L_ORUNTCST * @FactorEnteredtoBaseUofM  select @L_OREXTCST = @L_QTYORDER * @L_ORUNTCST   exec SVC_Convert_Amount @I_sRateCalcMethod, 4,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @L_OREXTCST, @L_EXTDCOST OUTPUT, @O_iErrorState OUTPUT  exec SVC_Convert_Amount @I_sRateCalcMethod, 4,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @L_ORUNTCST, @L_UNITCOST OUTPUT, @O_iErrorState OUTPUT  end else  begin  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @L_EXTDCOST,@L_OREXTCST OUTPUT, @O_iErrorState OUTPUT  exec SVC_Convert_Amount @I_sRateCalcMethod, @I_sViewMode,@I_nExchangeRate,  @I_nDenomExchangeRate,@I_sMCTrxState,@I_sDecimalPlaces,  @L_UNITCOST,@L_ORUNTCST OUTPUT, @O_iErrorState OUTPUT  end  select @L_EXTDCOST = round(@L_EXTDCOST, @L_ExtCost_DECPLCUR - 1), @L_OREXTCST = round(@L_OREXTCST, @L_ExtCost_DECPLCUR - 1)   if @CreateHeader = 1  begin  exec SVC_POP_Get_Next_PO_Number @PO_Number output  select @PO_LineSeq = 16384, @LineNumber = 1  exec SVC_Get_Next_Note_Index @H_PONOTIDS_1 output  end else   begin  select @PO_Number = @H_PONUMBER  select @PO_LineSeq = max(ORD) + 16384, @LineNumber = max(isnull(LineNumber,0)) + 1 from POP10110 where PONUMBER = @H_PONUMBER  select @PO_LineSeq = isnull(@PO_LineSeq,16384), @LineNumber = isnull(@LineNumber, 1)  end  select @H_PONOTIDS_2=NOTEINDX, @L_POLNEARY_2 = NOTEINDX from IV40700 where LOCNCODE = @LocationCode select @H_PONOTIDS_4 = 0.0 select @H_PONOTIDS_5 = NOTEINDX from SY03300 where PYMTRMID = @H_PYMTRMID select @H_PONOTIDS_6 = NOTEINDX from SY03000 where SHIPMTHD = @ShipMethod select @H_PONOTIDS_7 = NOTEINDX from DYNAMICS..MC40200 where CURRNIDX = @CURRNIDX select @L_POLNEARY_3 = 0.0 select @L_POLNEARY_4 = NOTEINDX from GL00100 where ACTINDX = @L_INVINDX  select @L_POLNEARY_5 = 0.0  if @ItemDescription > '' select @L_ITEMDESC = @ItemDescription  insert POP10110 with (rowlock) select @PO_Number , @PO_LineSeq, 1, @H_POTYPE , @ItemNumber , isnull(@L_ITEMDESC ,''), @VendorID , isnull(@VendorItemNumber,@ItemNumber), isnull(@L_VNDITDSC,isnull(@L_ITEMDESC,'')), isnull(@NonIV,0) , @LocationCode, isnull(@L_UOFM,''), isnull(@L_UMQTYINB,1), isnull(@L_QTYORDER,0), 0, 0, isnull(@L_QTYORDER,0), isnull(@L_UNITCOST,0.0), isnull(@L_EXTDCOST,0.0), isnull(@L_INVINDX,0), @H_DOCDATE, @PromisedDate , @PromisedDate, @CallNumber , '' , 1 , isnull(@L_POLNEARY_1,0.0), isnull(@L_POLNEARY_2,0.0), isnull(@L_POLNEARY_3,0.0), isnull(@L_POLNEARY_4,0.0), isnull(@L_POLNEARY_5,0.0), 0,0,0,0,  isnull(@L_DECPLCUR ,0), isnull(@L_DECPLQTY,0), isnull(@L_ITMTRKOP,0), isnull(@L_VCTNMTHD,''), 0, 0, 0.0, 0.0, '', '' , 0, isnull(@CURNCYID,''), isnull(@CURRNIDX,0), isnull(@I_nExchangeRate,0), isnull(@I_sRateCalcMethod,0), isnull(@I_nDenomExchangeRate,0), isnull(@L_ORUNTCST,0), isnull(@L_OREXTCST,0), isnull(@L_Origin,0), isnull(@FreeOnBoard,0), isnull(@OrigDecCur,1), 0,0,'',0, @MinDate,@MinDate,1, isnull(@POTaxOption,0),isnull(@POLineTaxSchID,''), isnull(@POLinSiteSchID,''),0,0,0,0,0,0, isnull(@L_LandCostGroupID,''),0,@ShipMethod,0,0 , @LineNumber, @PromisedDate, @MinDate, @MinDate,1, isnull(@H_PRSTADCD,''), isnull(@H_CMPNYNAM,''), isnull(@H_CONTACT,''), isnull(@H_ADDRESS1,''), isnull(@H_ADDRESS2,''), isnull(@H_ADDRESS3,''), isnull(@H_CITY,''), isnull(@H_STATE,''), isnull(@H_ZIPCODE,''), isnull(@H_CCODE ,''),  isnull(@H_COUNTRY,''), isnull(@H_PHONE1,''), isnull(@H_PHONE2,''), isnull(@H_PHONE3,''), isnull(@H_FAX,''), 0,0, '','', 0, 0, @MinDate  if @CreateHeader = 1  Insert POP10100 with (rowlock) values (@PO_Number, 1, 1, @H_POTYPE, @OrderedBy, isnull(@CallNumber,''), @UserDate,  @UserDate, @MinDate, @PromisedDate, @PromisedDate, @UserDate, @MinDate, isnull(@ShipMethod,''), isnull(@H_TaxRegNum,''), isnull(@L_EXTDCOST,0), isnull(@L_EXTDCOST,0), 0.0, 0.0, 0.0, 0.0, @VendorID, isnull(@H_VENDNAME,''), 0.0, isnull(@H_VADCDPAD,''), isnull(@H_CMPANYID,0), isnull(@H_PRBTADCD,''), isnull(@H_PRSTADCD,''), isnull(@H_CMPNYNAM,''), isnull(@H_CONTACT,''), isnull(@H_ADDRESS1,''), isnull(@H_ADDRESS2,''), isnull(@H_ADDRESS3,''), isnull(@H_CITY,''), isnull(@H_STATE,''), isnull(@H_ZIPCODE,''), isnull(@H_CCODE,''),  isnull(@H_COUNTRY,''), isnull(@H_PHONE1,''), isnull(@H_PHONE2,''), isnull(@H_PHONE3,''), isnull(@H_FAX,''), isnull(@H_PYMTRMID,''), 0.0, 0, 0.0, @MinDate, isnull(@H_DUEDATE,@UserDate), 0, isnull(@H_CUSTNMBR,''), 0, @UserDate, @UserDate, isnull(@H_PONOTIDS_1,0.0), isnull(@H_PONOTIDS_2,0.0), isnull(@H_PONOTIDS_3,0.0), isnull(@H_PONOTIDS_4,0.0), isnull(@H_PONOTIDS_5,0.0), isnull(@H_PONOTIDS_6,0.0), isnull(@H_PONOTIDS_7,0.0), 0,0,0, 0,0,0,0,0,  '', 0.0, isnull(@CURNCYID,''), isnull(@CURRNIDX,0), isnull(@RateType,''), isnull(@ExchangeTableType,''), isnull(@I_nExchangeRate,0), isnull(@ExchangeDate,@MinDate), isnull(@ExchangeTime,@MinDate), isnull(@I_sRateCalcMethod,0), isnull(@I_nDenomExchangeRate,0), isnull(@I_sMCTrxState,0), isnull(@L_OREXTCST,0), isnull(@L_OREXTCST,0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '',0,0,  0,@MinDate,'',@MinDate,'',0, 0,0,0,0,0,0, isnull(@H_TaxScheduleID,''),0, 1,1,isnull(@H_FTaxable,0),isnull(@H_MTaxable,0), isnull(@H_FScheduleID,''),isnull(@H_MScheduleID,''), 0,0,0,0,0,0,0,0,0,0,'',0,0 , '', @MinDate,0,  isnull(@H_PURCHCMPNYNAM ,''), isnull(@H_PURCHCONTACT ,''), isnull(@H_PURCHADDRESS1 ,''), isnull(@H_PURCHADDRESS2 ,''), isnull(@H_PURCHADDRESS3 ,''), isnull(@H_PURCHCITY ,''), isnull(@H_PURCHSTATE ,''), isnull(@H_PURCHZIPCODE ,''), isnull(@H_PURCHCCode ,''), isnull(@H_PURCHCOUNTRY, ''), isnull(@H_PURCHPHONE1 ,''), isnull(@H_PURCHPHONE2 ,''), isnull(@H_PURCHPHONE3 ,''), isnull(@H_PURCHFAX ,''), 0,0, 9,2,9, 0, 0.0,0.0,@MinDate ) else  update POP10100 with (rowlock) set REMSUBTO = REMSUBTO + @L_EXTDCOST,SUBTOTAL = SUBTOTAL + @L_EXTDCOST,  OREMSUBT = OREMSUBT + @L_OREXTCST, ORSUBTOT = ORSUBTOT + @L_OREXTCST  where PONUMBER = @H_PONUMBER  return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_POP_Make_PO] TO [DYNGRP]
GO
