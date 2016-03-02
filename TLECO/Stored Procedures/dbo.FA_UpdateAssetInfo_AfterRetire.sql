SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE   PROCEDURE [dbo].[FA_UpdateAssetInfo_AfterRetire]  (  @Transferevent int,  @TransferType int,  @IntercomID varchar(10),  @Group varchar(20), @Sprd_Opt int, @CashP numeric(19,5), @NoncashP numeric(19,5), @OriCashP numeric(19,5), @OriNonCashP numeric(19,5),  @Expofsales numeric(19,5),  @OriExpofsales numeric(19,5), @TransDate datetime,  @Des_FunCurr int, @OutReslt  int OUTPUT  )  AS  declare  @AMOUNT numeric(19,5), @SQL_Statement  nvarchar(1000) , @Assetid varchar(30), @Assstsuf int, @AssetIndex int, @ToAssetIndx int, @Acq_Cost numeric(19,5), @ASSETQTY int, @ASSETBEGQTY int, @Per_Percnt numeric(19,5), @Total_NBV numeric(19,5), @NBV numeric(19,5), @Cash_PerNBV numeric(19,5), @NoncashP_PerNBV numeric(19,5) , @OriCash_PerNBV  numeric(19,5), @OriNoncashP_PerNBV numeric(19,5), @RETIREEVENT int, @Expofsales_PerNBV numeric(19,5), @OriExpofsales_PerNBV numeric(19,5), @FUNLCURR1 varchar(15), @FuncFlg nvarchar(200), @XCHGRATE numeric(19,5), @EXGTBLID varchar(15) , @RTCLCMTD smallint , @I_sViewMode smallint, @I_sMCTrxState smallint, @I_nDenomExchangeRate numeric(19,5) BEGIN   if @TransferType=2   BEGIN   DECLARE NBV CURSOR LOCAL FAST_FORWARD for  select PARTIALPCT,ASSETINDEX,TOASSETINDX from FA00800 where TRANSFEREVENT=@Transferevent  OPEN NBV   FETCH NEXT FROM NBV INTO @Per_Percnt,@AssetIndex,@ToAssetIndx  WHILE @@FETCH_STATUS=0  BEGIN   IF @Per_Percnt < 10000   select @AssetIndex = MAX(ASSETINDEX) from FA00100   set @AMOUNT=0.0   Select @AMOUNT=NETBOOKVALUE from FA00200 where BOOKINDX in (select CORPBOOKINDX from FA49900) and ASSETINDEX=@AssetIndex   select @SQL_Statement = 'select @FUNLCURR=FUNLCURR from '  + @IntercomID + '..MC40000'   set @FuncFlg = N'@FUNLCURR varchar(15) output'   EXEC sp_executesql @SQL_Statement, @FuncFlg, @FUNLCURR= @FUNLCURR1 output   if (select FUNLCURR from MC40000)<> @FUNLCURR1  BEGIN  select @XCHGRATE=XCHGRATE,@EXGTBLID=EXGTBLID from DYNAMICS..MC00100 where EXCHDATE <=@TransDate and  EXPNDATE>=@TransDate and EXGTBLID in (select EXGTBLID from DYNAMICS..MC40300 where CURNCYID=@FUNLCURR1)  select @RTCLCMTD=RTCLCMTD from DYNAMICS..MC40300 where CURNCYID=@FUNLCURR1 and EXGTBLID=@EXGTBLID  select @Des_FunCurr=DECPLCUR-1 from DYNAMICS..MC40200 where CURNCYID=@FUNLCURR1  set @I_sViewMode=1  set @I_sMCTrxState=1  set @I_nDenomExchangeRate=0.00000   Set @AMOUNT = dbo.mcFuncCalculateAmount(@RTCLCMTD,@I_sViewMode,@XCHGRATE,@I_nDenomExchangeRate,@I_sMCTrxState,@Des_FunCurr,@AMOUNT)  end  select @SQL_Statement = 'Update '  + @IntercomID + '..FA00100 set Acquisition_Cost='''+convert(varchar(30),@AMOUNT)+''' where ASSETINDEX='+convert(varchar(30),@ToAssetIndx) select @SQL_Statement = @SQL_Statement + ' Update '  + @IntercomID + '..FA00902 set AMOUNT='''+convert(varchar(30),@AMOUNT)+''' where ASSETINDEX='+convert(varchar(30),@ToAssetIndx)+' AND SOURCDOC = ''FAADD'' AND TRANSACCTTYPE = 3'   select @SQL_Statement =  @SQL_Statement + ' Update '  + @IntercomID + '..FA00902 set AMOUNT='''+convert(varchar(30),(-1)*@AMOUNT)+''' where ASSETINDEX='+convert(varchar(30),@ToAssetIndx)+' AND SOURCDOC = ''FAADD'' AND TRANSACCTTYPE = 7'   select @SQL_Statement =  @SQL_Statement + ' Update '  + @IntercomID + '..FA00200 set BEGINYEARCOST = '''+convert(varchar(30),@AMOUNT)+''',COSTBASIS = '''+convert(varchar(30),@AMOUNT)+''' where ASSETINDEX='''+convert(varchar(10),@ToAssetIndx)+''''   EXEC sp_executesql @SQL_Statement   FETCH NEXT FROM NBV INTO @Per_Percnt,@AssetIndex,@ToAssetIndx   END   CLOSE NBV   DEALLOCATE NBV   END   if @Group<>'' and @Sprd_Opt=3  BEGIN   Select @Total_NBV=SUM(NETBOOKVALUE) from FA00200 where BOOKINDX in (select CORPBOOKINDX from FA49900) and ASSETINDEX in (Select ASSETINDEX from FA10200 where GROUPNAME=@Group)   DECLARE GrpSprd_NBV CURSOR for   select ASSETINDEX,TOASSETINDX,RETIREEVENT from FA00800 where TRANSFEREVENT=@Transferevent   OPEN GrpSprd_NBV   FETCH NEXT FROM GrpSprd_NBV INTO @AssetIndex,@ToAssetIndx,@RETIREEVENT   WHILE @@FETCH_STATUS=0   BEGIN   Select @NBV= NETBOOKVALUE from FA00200 where BOOKINDX in (select CORPBOOKINDX from FA49900) and ASSETINDEX in   (Select ASSETINDEX from FA10200 where ASSETINDEX=@AssetIndex)   set @Cash_PerNBV=(@NBV*@CashP)/@Total_NBV   set @NoncashP_PerNBV=(@NBV*@NoncashP)/@Total_NBV   set @AMOUNT=@Cash_PerNBV+@NoncashP_PerNBV   select @SQL_Statement = 'select @FUNLCURR=FUNLCURR from '  + @IntercomID + '..MC40000'   set @FuncFlg = N'@FUNLCURR varchar(15) output'   EXEC sp_executesql @SQL_Statement, @FuncFlg, @FUNLCURR= @FUNLCURR1 output   if (select FUNLCURR from MC40000)<> @FUNLCURR1  BEGIN  select @XCHGRATE=XCHGRATE,@EXGTBLID=EXGTBLID from DYNAMICS..MC00100 where EXCHDATE <=@TransDate and  EXPNDATE>=@TransDate and EXGTBLID in (select EXGTBLID from DYNAMICS..MC40300 where CURNCYID=@FUNLCURR1)  select @RTCLCMTD=RTCLCMTD from DYNAMICS..MC40300 where CURNCYID=@FUNLCURR1 and EXGTBLID=@EXGTBLID  select @Des_FunCurr=DECPLCUR-1 from DYNAMICS..MC40200 where CURNCYID=@FUNLCURR1  set @I_sViewMode=1  set @I_sMCTrxState=1  set @I_nDenomExchangeRate=0.00000   Set @AMOUNT = dbo.mcFuncCalculateAmount(@RTCLCMTD,@I_sViewMode,@XCHGRATE,@I_nDenomExchangeRate,@I_sMCTrxState,@Des_FunCurr,@AMOUNT)  end   select @SQL_Statement = 'Update '  + @IntercomID + '..FA00100 set Acquisition_Cost='''+convert(varchar(30),@AMOUNT)+''' where ASSETINDEX='''+convert(varchar(10),@ToAssetIndx)+''''   select @SQL_Statement = @SQL_Statement + ' Update '  + @IntercomID + '..FA00902 set AMOUNT='''+convert(varchar(30),@AMOUNT)+''' where ASSETINDEX='+convert(varchar(30),@ToAssetIndx)+' AND SOURCDOC = ''FAADD'' AND TRANSACCTTYPE = 3'   select @SQL_Statement =  @SQL_Statement + ' Update '  + @IntercomID + '..FA00902 set AMOUNT='''+convert(varchar(30),(-1)*@AMOUNT)+''' where ASSETINDEX='+convert(varchar(30),@ToAssetIndx)+' AND SOURCDOC = ''FAADD'' AND TRANSACCTTYPE = 7'   select @SQL_Statement =  @SQL_Statement + ' Update '  + @IntercomID + '..FA00200 set BEGINYEARCOST = '''+convert(varchar(30),@AMOUNT)+''',COSTBASIS = '''+convert(varchar(30),@AMOUNT)+''' where ASSETINDEX='''+convert(varchar(10),@ToAssetIndx)+''''   EXEC sp_executesql @SQL_Statement  select @SQL_Statement=''  set @OriCash_PerNBV=(@NBV*@OriCashP)/@Total_NBV   set @OriNoncashP_PerNBV=(@NBV*@OriNonCashP)/@Total_NBV   set @Expofsales_PerNBV=(@NBV*@Expofsales)/@Total_NBV   set @OriExpofsales_PerNBV=(@NBV*@OriExpofsales)/@Total_NBV   select @SQL_Statement = 'Update FA00700 set CASHPROCEEDS='''+convert(varchar(30),@Cash_PerNBV)+''',Orig_Cash_Proceeds='''+convert(varchar(30),@OriCash_PerNBV)+''',NONCASHPROCEEDS='''+convert(varchar(30),@NoncashP_PerNBV)+''',Orig_Non_Cash_Proceeds='''+convert(varchar(30),@OriNoncashP_PerNBV)+''',EXPOFSALE='''+convert(varchar(30),@Expofsales_PerNBV)+''',Orig_Expenses_of_Sale='''+convert(varchar(30),@OriExpofsales_PerNBV)+''' where ASSETINDEX='''+convert(varchar(10),@AssetIndex)+''' and RETIREEVENT='+convert(varchar(5),@RETIREEVENT)   EXEC sp_executesql @SQL_Statement   FETCH NEXT FROM GrpSprd_NBV INTO @AssetIndex,@ToAssetIndx,@RETIREEVENT   END   CLOSE GrpSprd_NBV   DEALLOCATE GrpSprd_NBV   END  END    
GO
GRANT EXECUTE ON  [dbo].[FA_UpdateAssetInfo_AfterRetire] TO [DYNGRP]
GO
