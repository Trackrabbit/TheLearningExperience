SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[smChangeVendorMaster]  @I_charStartVendor char(30),  @I_charEndVendor char(30),  @O_iErrorState int=NULL  output with encryption as set transaction isolation level read uncommitted set nocount on declare @VENDORID  char (255), @cStatement varchar(255), @maxvalueVENDOR1 numeric (19,5), @maxvalueVENDOR2 numeric (19,5), @LSTCHNUM char (30), @LSTINNUM char (30), @LSTCHKDT datetime, @LSTPURDT datetime, @FSTPURDT datetime, @DBNAME char(25), @DBID smallint, @tTransaction tinyint, @cStartVendor char(50), @cEndVendor char(50), @iStatus int,  @HIESTBAL numeric(19,5), @HIESTBAL2 numeric(19,5), @CURRBLNC numeric(19,5), @CURRBLNC2 numeric(19,5), @NOINVYTD numeric(19,5), @NOINVYTD2 numeric(19,5), @NOINVLIF numeric(19,5), @NOINVLIF2 numeric(19,5), @NOINVLYR numeric(19,5), @NOINVLYR2 numeric(19,5), @NOPINYTD numeric(19,5), @NOPINYTD2 numeric(19,5), @NOPILIFE numeric(19,5), @NOPILIFE2 numeric(19,5), @AMBLDTYD numeric(19,5), @AMBLDTYD2 numeric(19,5), @AMBLDLIF numeric(19,5), @AMBLDLIF2 numeric(19,5), @AMBLDLYR numeric(19,5), @AMBLDLYR2 numeric(19,5), @AMTPDYTD numeric(19,5), @AMTPDYTD2 numeric(19,5), @AMTPDLIF numeric(19,5), @AMTPDLIF2 numeric(19,5), @AMTPDLYR numeric(19,5), @AMTPDLYR2 numeric(19,5), @TEN99AYTD numeric(19,5), @TEN99ALIF numeric(19,5), @TEN99ALYR numeric(19,5), @DISAVYTD numeric(19,5), @DISAVLIF numeric(19,5), @DISAVLYR numeric(19,5), @DISTKYTD numeric(19,5), @DISTKNLF numeric(19,5), @DISTKLYR numeric(19,5), @DISLSYTD numeric(19,5), @DISLSTLF numeric(19,5), @DISLSLYR numeric(19,5), @FINCHLIF numeric(19,5), @FINCHLYR numeric(19,5), @FINCHYTD numeric(19,5), @WROFSYTD numeric(19,5), @WROFSLIF numeric(19,5),  @WROFSLYR numeric(19,5), @RTRNSYTD numeric(19,5), @RTRNSLIF numeric(19,5), @RTRNSLYR numeric(19,5), @TRDTKLIF numeric(19,5), @TRDTLYR numeric(19,5), @TRDTYTD numeric(19,5), @NFNCHLIF numeric(19,5), @NFNCHLYR numeric(19,5), @NFNCHYTD numeric(19,5), @RTNGOWED numeric(19,5), @CURUNPBN numeric(19,5), @UNPDFNCH numeric(19,5), @DYCHTCLR numeric(19,5), @AVGDTPYR numeric(19,5), @AVDTPLIF numeric(19,5), @LSTINVAM numeric(19,5), @LSTCHAMT numeric(19,5), @ACCRDINV numeric(19,5), @ONORDAMT numeric(19,5), @TEN99AYTD2 numeric(19,5), @TEN99ALIF2 numeric(19,5), @TEN99ALYR2 numeric(19,5), @DISAVYTD2 numeric(19,5), @DISAVLIF2 numeric(19,5), @DISAVLYR2 numeric(19,5), @DISTKYTD2 numeric(19,5), @DISTKNLF2 numeric(19,5), @DISTKLYR2 numeric(19,5), @DISLSYTD2 numeric(19,5), @DISLSTLF2 numeric(19,5), @DISLSLYR2 numeric(19,5), @FINCHLIF2 numeric(19,5), @FINCHLYR2 numeric(19,5), @FINCHYTD2 numeric(19,5), @WROFSYTD2 numeric(19,5), @WROFSLIF2 numeric(19,5), @WROFSLYR2 numeric(19,5), @RTRNSYTD2 numeric(19,5), @RTRNSLIF2 numeric(19,5), @RTRNSLYR2 numeric(19,5), @TRDTKLIF2 numeric(19,5), @TRDTLYR2 numeric(19,5), @TRDTYTD2 numeric(19,5), @NFNCHLIF2 numeric(19,5), @NFNCHLYR2 numeric(19,5), @NFNCHYTD2 numeric(19,5), @RTNGOWED2 numeric(19,5), @CURUNPBN2 numeric(19,5), @UNPDFNCH2 numeric(19,5), @ACCRDINV2 numeric(19,5), @ONORDAMT2 numeric(19,5) select @DBNAME=DB_NAME() select @DBID=CMPANYID from DYNAMICS..SY01500 where INTERID=@DBNAME  exec @iStatus=smFormatStringsForExecs @I_vInputString=@I_charStartVendor, @O_cOutputString=@cStartVendor output, @O_iErrorState=@O_iErrorState output if @iStatus <> 0 or @O_iErrorState <> 0 begin set @O_iErrorState=90 return end exec @iStatus=smFormatStringsForExecs @I_vInputString=@I_charEndVendor, @O_cOutputString=@cEndVendor output, @O_iErrorState=@O_iErrorState output if @iStatus <> 0 or @O_iErrorState <> 0 begin set @O_iErrorState=91 return end select 	@O_iErrorState=0 exec @iStatus=taVendorCombinerPre @I_charStartVendor output, @I_charEndVendor output, @cStartVendor output, @cEndVendor output, @O_iErrorState output if @O_iErrorState <> 0 begin return end if	@I_charStartVendor is NULL or @I_charEndVendor is NULL or @cStartVendor is NULL or @cEndVendor is NULL begin select @O_iErrorState=1	 return end CREATE TABLE dbo.#tmpPM00202 ( PERIODID smallint NOT NULL, YEAR1 smallint NOT NULL, HISTTYPE smallint NOT NULL, AMBLDLIF numeric(19,5) NOT NULL, AMTPDLIF numeric(19,5) NOT NULL, TEN99ALIF numeric(19,5) NOT NULL, DISAVLIF numeric(19,5) NOT NULL, DISTKNLF numeric(19,5) NOT NULL, DISLSTLF numeric(19,5) NOT NULL, FINCHLIF numeric(19,5) NOT NULL, WROFSLIF numeric(19,5) NOT NULL, RTRNSLIF numeric(19,5) NOT NULL, TRDTKLIF numeric(19,5) NOT NULL, NFNCHLIF int NOT NULL, NOINVLIF int NOT NULL) if @@error <> 0 begin select @O_iErrorState=4	 return end select  @HIESTBAL=HIESTBAL, @CURRBLNC=CURRBLNC, @NOINVYTD=NOINVYTD, @NOINVLIF=NOINVLIF, @NOINVLYR=NOINVLYR, @NOPINYTD=NOPINYTD, @NOPILIFE=NOPILIFE, @AMBLDTYD=AMBLDTYD, @AMBLDLIF=AMBLDLIF, @AMBLDLYR=AMBLDLYR, @AMTPDYTD=AMTPDYTD, @AMTPDLIF=AMTPDLIF, @AMTPDLYR=AMTPDLYR, @TEN99AYTD=TEN99AYTD, @TEN99ALIF=TEN99ALIF, @TEN99ALYR=TEN99ALYR, @DISAVYTD=DISAVYTD, @DISAVLIF=DISAVLIF, @DISAVLYR=DISAVLYR, @DISTKYTD=DISTKYTD, @DISTKNLF=DISTKNLF, @DISTKLYR=DISTKLYR, @DISLSYTD=DISLSYTD, @DISLSTLF=DISLSTLF, @DISLSLYR=DISLSLYR, @FINCHLIF=FINCHLIF, @FINCHLYR=FINCHLYR, @FINCHYTD=FINCHYTD, @WROFSYTD=WROFSYTD, @WROFSLIF=WROFSLIF, @WROFSLYR=WROFSLYR, @RTRNSYTD=RTRNSYTD, @RTRNSLIF=RTRNSLIF, @RTRNSLYR=RTRNSLYR, @TRDTKLIF=TRDTKLIF, @TRDTLYR=TRDTLYR, @TRDTYTD=TRDTYTD, @NFNCHLIF=NFNCHLIF, @NFNCHLYR=NFNCHLYR, @NFNCHYTD=NFNCHYTD, @RTNGOWED=RTNGOWED, @CURUNPBN=CURUNPBN, @UNPDFNCH=UNPDFNCH, @ACCRDINV=ACCRDINV, @ONORDAMT=ONORDAMT from PM00201 where VENDORID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=5	 return end  select	@HIESTBAL=isnull(@HIESTBAL,0), @CURRBLNC=isnull(@CURRBLNC,0), @NOINVYTD=isnull(@NOINVYTD,0), @NOINVLIF=isnull(@NOINVLIF,0), @NOINVLYR=isnull(@NOINVLYR,0), @NOPINYTD=isnull(@NOPINYTD,0), @NOPILIFE=isnull(@NOPILIFE,0), @AMBLDTYD=isnull(@AMBLDTYD,0), @AMBLDLIF=isnull(@AMBLDLIF,0), @AMBLDLYR=isnull(@AMBLDLYR,0), @AMTPDYTD=isnull(@AMTPDYTD,0), @AMTPDLIF=isnull(@AMTPDLIF,0), @AMTPDLYR=isnull(@AMTPDLYR,0), @TEN99AYTD=isnull(@TEN99AYTD,0), @TEN99ALIF=isnull(@TEN99ALIF,0), @TEN99ALYR=isnull(@TEN99ALYR,0), @DISAVYTD=isnull(@DISAVYTD,0), @DISAVLIF=isnull(@DISAVLIF,0), @DISAVLYR=isnull(@DISAVLYR,0), @DISTKYTD=isnull(@DISTKYTD,0), @DISTKNLF=isnull(@DISTKNLF,0), @DISTKLYR=isnull(@DISTKLYR,0), @DISLSYTD=isnull(@DISLSYTD,0), @DISLSTLF=isnull(@DISLSTLF,0), @DISLSLYR=isnull(@DISLSLYR,0), @FINCHLIF=isnull(@FINCHLIF,0), @FINCHLYR=isnull(@FINCHLYR,0), @FINCHYTD=isnull(@FINCHYTD,0), @WROFSYTD=isnull(@WROFSYTD,0), @WROFSLIF=isnull(@WROFSLIF,0), @WROFSLYR=isnull(@WROFSLYR,0), @RTRNSYTD=isnull(@RTRNSYTD,0), @RTRNSLIF=isnull(@RTRNSLIF,0), @RTRNSLYR=isnull(@RTRNSLYR,0), @TRDTKLIF=isnull(@TRDTKLIF,0), @TRDTLYR=isnull(@TRDTLYR,0), @TRDTYTD=isnull(@TRDTYTD,0), @NFNCHLIF=isnull(@NFNCHLIF,0), @NFNCHLYR=isnull(@NFNCHLYR,0), @NFNCHYTD=isnull(@NFNCHYTD,0), @RTNGOWED=isnull(@RTNGOWED,0), @CURUNPBN=isnull(@CURUNPBN,0), @UNPDFNCH=isnull(@UNPDFNCH,0), @ACCRDINV=isnull(@ACCRDINV,0), @ONORDAMT=isnull(@ONORDAMT,0) select  @HIESTBAL2=HIESTBAL, @CURRBLNC2=CURRBLNC, @NOINVYTD2=NOINVYTD, @NOINVLIF2=NOINVLIF, @NOINVLYR2=NOINVLYR, @NOPINYTD2=NOPINYTD, @NOPILIFE2=NOPILIFE, @AMBLDTYD2=AMBLDTYD, @AMBLDLIF2=AMBLDLIF, @AMBLDLYR2=AMBLDLYR, @AMTPDYTD2=AMTPDYTD, @AMTPDLIF2=AMTPDLIF, @AMTPDLYR2=AMTPDLYR, @TEN99AYTD2=TEN99AYTD, @TEN99ALIF2=TEN99ALIF, @TEN99ALYR2=TEN99ALYR, @DISAVYTD2=DISAVYTD, @DISAVLIF2=DISAVLIF, @DISAVLYR2=DISAVLYR, @DISTKYTD2=DISTKYTD, @DISTKNLF2=DISTKNLF, @DISTKLYR2=DISTKLYR, @DISLSYTD2=DISLSYTD, @DISLSTLF2=DISLSTLF, @DISLSLYR2=DISLSLYR, @FINCHLIF2=FINCHLIF, @FINCHLYR2=FINCHLYR, @FINCHYTD2=FINCHYTD, @WROFSYTD2=WROFSYTD, @WROFSLIF2=WROFSLIF, @WROFSLYR2=WROFSLYR, @RTRNSYTD2=RTRNSYTD, @RTRNSLIF2=RTRNSLIF, @RTRNSLYR2=RTRNSLYR, @TRDTKLIF2=TRDTKLIF, @TRDTLYR2=TRDTLYR, @TRDTYTD2=TRDTYTD, @NFNCHLIF2=NFNCHLIF, @NFNCHLYR2=NFNCHLYR, @NFNCHYTD2=NFNCHYTD, @RTNGOWED2=RTNGOWED, @CURUNPBN2=CURUNPBN, @UNPDFNCH2=UNPDFNCH, @ACCRDINV2=ACCRDINV, @ONORDAMT2=ONORDAMT, @LSTCHNUM=LSTCHNUM, @LSTCHKDT=LSTCHKDT, @LSTCHAMT=LSTCHAMT, @LSTINNUM=LSTINNUM, @LSTINVAM=LSTINVAM, @LSTPURDT=LSTPURDT, @FSTPURDT=FSTPURDT, @DYCHTCLR=DYCHTCLR, @AVGDTPYR=AVGDTPYR, @AVDTPLIF=AVDTPLIF from PM00201 where VENDORID=@I_charEndVendor if @@error <> 0 begin select @O_iErrorState=6	 return end select	 @HIESTBAL2=isnull(@HIESTBAL2,0), @CURRBLNC2=isnull(@CURRBLNC2,0), @NOINVYTD2=isnull(@NOINVYTD2,0), @NOINVLIF2=isnull(@NOINVLIF2,0), @NOINVLYR2=isnull(@NOINVLYR2,0), @NOPINYTD2=isnull(@NOPINYTD2,0), @NOPILIFE2=isnull(@NOPILIFE2,0), @AMBLDTYD2=isnull(@AMBLDTYD2,0), @AMBLDLIF2=isnull(@AMBLDLIF2,0), @AMBLDLYR2=isnull(@AMBLDLYR2,0), @AMTPDYTD2=isnull(@AMTPDYTD2,0), @AMTPDLIF2=isnull(@AMTPDLIF2,0), @AMTPDLYR2=isnull(@AMTPDLYR2,0), @TEN99AYTD2=isnull(@TEN99AYTD2,0), @TEN99ALIF2=isnull(@TEN99ALIF2,0), @TEN99ALYR2=isnull(@TEN99ALYR2,0), @DISAVYTD2=isnull(@DISAVYTD2,0), @DISAVLIF2=isnull(@DISAVLIF2,0), @DISAVLYR2=isnull(@DISAVLYR2,0), @DISTKYTD2=isnull(@DISTKYTD2,0), @DISTKNLF2=isnull(@DISTKNLF2,0), @DISTKLYR2=isnull(@DISTKLYR2,0), @DISLSYTD2=isnull(@DISLSYTD2,0), @DISLSTLF2=isnull(@DISLSTLF2,0), @DISLSLYR2=isnull(@DISLSLYR2,0), @FINCHLIF2=isnull(@FINCHLIF2,0), @FINCHLYR2=isnull(@FINCHLYR2,0), @FINCHYTD2=isnull(@FINCHYTD2,0), @WROFSYTD2=isnull(@WROFSYTD2,0), @WROFSLIF2=isnull(@WROFSLIF2,0), @WROFSLYR2=isnull(@WROFSLYR2,0), @RTRNSYTD2=isnull(@RTRNSYTD2,0), @RTRNSLIF2=isnull(@RTRNSLIF2,0), @RTRNSLYR2=isnull(@RTRNSLYR2,0), @TRDTKLIF2=isnull(@TRDTKLIF2,0), @TRDTLYR2=isnull(@TRDTLYR2,0), @TRDTYTD2=isnull(@TRDTYTD2,0), @NFNCHLIF2=isnull(@NFNCHLIF2,0), @NFNCHLYR2=isnull(@NFNCHLYR2,0), @NFNCHYTD2=isnull(@NFNCHYTD2,0), @RTNGOWED2=isnull(@RTNGOWED2,0), @CURUNPBN2=isnull(@CURUNPBN2,0), @UNPDFNCH2=isnull(@UNPDFNCH2,0), @ACCRDINV2=isnull(@ACCRDINV2,0), @ONORDAMT2=isnull(@ONORDAMT2,0), @LSTCHNUM=isnull(@LSTCHNUM,''), @LSTCHKDT=isnull(@LSTCHKDT,''), @LSTCHAMT=isnull(@LSTCHAMT,0), @LSTINNUM=isnull(@LSTINNUM,0), @LSTINVAM=isnull(@LSTINVAM,0), @LSTPURDT=isnull(@LSTPURDT,''), @FSTPURDT=isnull(@FSTPURDT,''), @DYCHTCLR=isnull(@DYCHTCLR,0), @AVGDTPYR=isnull(@AVGDTPYR,0), @AVDTPLIF=isnull(@AVDTPLIF,0) if (not exists(select 1 from PM00201 where VENDORID=@I_charEndVendor)) begin update PM00201 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=100  return end  end else begin update PM00201 set HIESTBAL=@HIESTBAL+@HIESTBAL2, CURRBLNC=@CURRBLNC+@CURRBLNC2, NOINVYTD=@NOINVYTD+@NOINVYTD2, NOINVLIF=@NOINVLIF+@NOINVLIF2, NOINVLYR=@NOINVLYR+@NOINVLYR2, NOPINYTD=@NOPINYTD+@NOPINYTD2, NOPILIFE=@NOPILIFE+@NOPILIFE2, AMBLDTYD=@AMBLDTYD+@AMBLDTYD2, AMBLDLIF=@AMBLDLIF+@AMBLDLIF2, AMBLDLYR=@AMBLDLYR+@AMBLDLYR2, AMTPDYTD=@AMTPDYTD+@AMTPDYTD2, AMTPDLIF=@AMTPDLIF+@AMTPDLIF2, AMTPDLYR=@AMTPDLYR+@AMTPDLYR2, TEN99AYTD=@TEN99AYTD+@TEN99AYTD2, TEN99ALIF=@TEN99ALIF+@TEN99ALIF2, TEN99ALYR=@TEN99ALYR+@TEN99ALYR2, DISAVYTD=@DISAVYTD+@DISAVYTD2, DISAVLIF=@DISAVLIF+@DISAVLIF2, DISAVLYR=@DISAVLYR+@DISAVLYR2, DISTKYTD=@DISTKYTD+@DISTKYTD2, DISTKNLF=@DISTKNLF+@DISTKNLF2, DISTKLYR=@DISTKLYR+@DISTKLYR2, DISLSYTD=@DISLSYTD+@DISLSYTD2, DISLSTLF=@DISLSTLF+@DISLSTLF2, DISLSLYR=@DISLSLYR+@DISLSLYR2, FINCHLIF=@FINCHLIF+@FINCHLIF2, FINCHLYR=@FINCHLYR+@FINCHLYR2, FINCHYTD=@FINCHYTD+@FINCHYTD2, WROFSYTD=@WROFSYTD+@WROFSYTD2, WROFSLIF=@WROFSLIF+@WROFSLIF2, WROFSLYR=@WROFSLYR+@WROFSLYR2, RTRNSYTD=@RTRNSYTD+@RTRNSYTD2, RTRNSLIF=@RTRNSLIF+@RTRNSLIF2, RTRNSLYR=@RTRNSLYR+@RTRNSLYR2, TRDTKLIF=@TRDTKLIF+@TRDTKLIF2, TRDTLYR=@TRDTLYR+@TRDTLYR2, TRDTYTD=@TRDTYTD+@TRDTYTD2, NFNCHLIF=@NFNCHLIF+@NFNCHLIF2, NFNCHLYR=@NFNCHLYR+@NFNCHLYR2, NFNCHYTD=@NFNCHYTD+@NFNCHYTD2, RTNGOWED=@RTNGOWED+@RTNGOWED2, CURUNPBN=@CURUNPBN+@CURUNPBN2, UNPDFNCH=@UNPDFNCH+@UNPDFNCH2, ACCRDINV=@ACCRDINV+@ACCRDINV2, ONORDAMT=@ONORDAMT+@ONORDAMT2, LSTCHNUM=@LSTCHNUM, LSTCHKDT=@LSTCHKDT, LSTCHAMT=@LSTCHAMT, LSTINNUM=@LSTINNUM, LSTINVAM=@LSTINVAM, LSTPURDT=@LSTPURDT, FSTPURDT=@FSTPURDT, DYCHTCLR=@DYCHTCLR, AVGDTPYR=@AVGDTPYR, AVDTPLIF=@AVDTPLIF where VENDORID=@I_charEndVendor if @@error <> 0 begin select @O_iErrorState=7	 return end end insert #tmpPM00202 select PERIODID,YEAR1,HISTTYPE, isnull(sum(AMBLDLIF),0),isnull(sum(AMTPDLIF),0),isnull(sum(TEN99ALIF),0), isnull(sum(DISAVLIF),0),isnull(sum(DISTKNLF),0),isnull(sum(DISLSTLF),0),isnull(sum(FINCHLIF),0),isnull(sum(WROFSLIF),0), isnull(sum(RTRNSLIF),0),isnull(sum(TRDTKLIF),0),isnull(sum(NFNCHLIF),0),isnull(sum(NOINVLIF),0)  from PM00202 where VENDORID=@I_charStartVendor or VENDORID=@I_charEndVendor group by PERIODID,YEAR1,HISTTYPE if @@error <> 0 begin select @O_iErrorState=8	 return end insert into PM00202 (VENDORID,PERIODID,YEAR1,HISTTYPE,AMBLDLIF,AMTPDLIF, TEN99ALIF,DISAVLIF,DISTKNLF,DISLSTLF,FINCHLIF,WROFSLIF, RTRNSLIF,TRDTKLIF,NFNCHLIF,NOINVLIF) select @I_charEndVendor,PERIODID,YEAR1,HISTTYPE,AMBLDLIF,AMTPDLIF, TEN99ALIF,DISAVLIF,DISTKNLF,DISLSTLF,FINCHLIF,WROFSLIF, RTRNSLIF,TRDTKLIF,NFNCHLIF,NOINVLIF from PM00202 a where a.VENDORID=@I_charStartVendor and not exists( select 1 from PM00202 b where b.VENDORID=@I_charEndVendor and a.PERIODID=b.PERIODID and a.YEAR1=b.YEAR1 and a.HISTTYPE=b.HISTTYPE ) if @@error <> 0 begin select @O_iErrorState=9	 return end update a set a.AMBLDLIF=b.AMBLDLIF, a.AMTPDLIF=b.AMTPDLIF, a.TEN99ALIF=b.TEN99ALIF, a.DISAVLIF=b.DISAVLIF, a.DISTKNLF=b.DISTKNLF, a.DISLSTLF=b.DISLSTLF, a.FINCHLIF=b.FINCHLIF, a.WROFSLIF=b.WROFSLIF, a.RTRNSLIF=b.RTRNSLIF, a.TRDTKLIF=b.TRDTKLIF, a.NFNCHLIF=b.NFNCHLIF, a.NOINVLIF=b.NOINVLIF from PM00202 a, #tmpPM00202 b where a.PERIODID=b.PERIODID and a.YEAR1=b.YEAR1 and a.HISTTYPE=b.HISTTYPE and a.VENDORID=@I_charEndVendor if @@error <> 0 begin select @O_iErrorState=10  return end delete #tmpPM00202 if @@error <> 0 begin select @O_iErrorState=11  return end declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set VENDORID='+rtrim(@cEndVendor) + ' where VENDORID='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where o.id=c.id and o.type='U' and c.name='VENDORID'  and o.name <> 'PM00200' and o.name <> 'PM00201' and o.name <> 'PM00202' and o.name <> 'PM00204' and o.name <> 'PM00300' and o.name <> 'ASI82625' and o.name <> 'IV00103' and o.name <> 'MDS00901' and o.name <> 'ASI82620' and o.name <> 'ASI82655' and o.name <> 'VTX_PM00300' and o.name <> 'PM00203' and o.name <> 'PA00901' and o.name <> 'QD00200' and o.name <> 'PA00001' and o.name <> 'VAT10201' and o.name <> 'ME27606' and o.name <> 'IVR10232' order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=12	 return end  FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return update b set TEN99AMNT=a.TEN99AMNT+b.TEN99AMNT from PM00204 a, PM00204 b where a.VENDORID=@I_charStartVendor and b.VENDORID=@I_charEndVendor and a.TEN99TYPE=b.TEN99TYPE and a.YEAR1=b.YEAR1 and a.PERIODID=b.PERIODID and a.TEN99BOXNUMBER=b.TEN99BOXNUMBER if @@error <> 0 begin select @O_iErrorState=75  return end delete a from PM00204 a, PM00204 b where a.VENDORID=@I_charStartVendor and b.VENDORID=@I_charEndVendor and a.TEN99TYPE=b.TEN99TYPE and a.YEAR1=b.YEAR1 and a.PERIODID=b.PERIODID and a.TEN99BOXNUMBER=b.TEN99BOXNUMBER if (@@error<>0) begin select @O_iErrorState=76  return end update PM00204 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor if (@@error<>0) begin select @O_iErrorState=77  return end update MC10000 set StartCustOrVendID=@I_charEndVendor where StartCustOrVendID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=19  return end update MC10000 set EndCustOrVendID=@I_charEndVendor where EndCustOrVendID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=20  return end update a set ORMSTRID=@I_charEndVendor from GL10001 a, GL10000 b where 	a.ORMSTRID=@I_charStartVendor and a.JRNENTRY=b.JRNENTRY and b.SERIES=4 if @@error <> 0 begin select @O_iErrorState=21  return end update GL20000 set ORMSTRID=@I_charEndVendor where ORMSTRID=@I_charStartVendor and SERIES=4 if @@error <> 0 begin select @O_iErrorState=22  return end update GL30000 set ORMSTRID=@I_charEndVendor where ORMSTRID=@I_charStartVendor and SERIES=4 if @@error <> 0 begin select @O_iErrorState=23  return end update PJOURNAL set ORMSTRID=@I_charEndVendor where ORMSTRID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=24  return end update CM20202 set CustomerVendor_ID=@I_charEndVendor where CustomerVendor_ID=@I_charStartVendor and SERIES=4 if @@error <> 0 begin select @O_iErrorState=25  return end update TX20500 set CustomerVendor_ID=@I_charEndVendor where CustomerVendor_ID=@I_charStartVendor and SERIES=4 if @@error <> 0 begin select @O_iErrorState=27  return end update TX30000 set CustomerVendor_ID=@I_charEndVendor where CustomerVendor_ID=@I_charStartVendor and SERIES=4 if @@error <> 0 begin select @O_iErrorState=28  return end update IV30300 set CUSTNMBR = @I_charEndVendor where CUSTNMBR = @I_charStartVendor and HSTMODUL = 'POP' if @@error <> 0 begin select @O_iErrorState=73  return end update SY06000 set CustomerVendor_ID=@I_charEndVendor  where SERIES=4 and CustomerVendor_ID=@I_charStartVendor  and ADRSCODE+cast(SERIES as varchar) not in(select ADRSCODE+cast(SERIES as varchar) from SY06000 a (nolock) where CustomerVendor_ID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=29  return end delete SY06000 where CustomerVendor_ID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=74  return end if exists(select top 1 1 from sysobjects where id=object_id('dbo.PP100100') and sysstat & 0xf=3) begin update PP100100 set CUSTVNDR=@I_charEndVendor where CUSTVNDR=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=20  return end end if exists(select top 1 1 from sysobjects where id=object_id('dbo.ME234602') and sysstat & 0xf=3) begin update ME234602 set ORMSTRID=@I_charEndVendor where ORMSTRID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=30  return end end if exists (select top 1 1 from sysobjects where id=object_id('dbo.COM00700') and sysstat & 0xf=3) begin update COM00700 set ENDVENDR=@I_charEndVendor where ENDVENDR=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=30  return end end if exists (select top 1 1 from sysobjects where id=object_id('dbo.ME27606') and sysstat & 0xf=3) begin Update ME27606 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor and not exists(select VENDORID from ME27606 where VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=31  return end end declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set PRIMVNDR='+rtrim(@cEndVendor) + ' where PRIMVNDR='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where	o.id=c.id and o.type='U' and c.name='PRIMVNDR'  order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=32  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set STVNDRID='+rtrim(@cEndVendor) + ' where STVNDRID='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where	o.id=c.id and o.type='U' and c.name='STVNDRID'  order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=33  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set VNDID='+rtrim(@cEndVendor) + ' where VNDID='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where	o.id=c.id and o.type='U' and c.name='VNDID'  order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=34  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set LCVENDORID='+rtrim(@cEndVendor) + ' where LCVENDORID='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where	o.id=c.id and o.type='U' and c.name='LCVENDORID'  order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=35  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set ENDVNDID='+rtrim(@cEndVendor) + ' where ENDVNDID='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where	o.id=c.id and o.type='U' and c.name='ENDVNDID'  order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=36  return end  FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return if exists(select 1 from sysobjects where id=object_id('dbo.PA00501') and sysstat & 0xf=3) begin update PA01901 set PACOSTOWNER=@I_charEndVendor where PACOSTOWNER=@I_charStartVendor and (PATranType=4 or PATranType=5) if @@error <> 0 begin select @O_iErrorState=37  return end update PA11800 set PACOSTOWNER=@I_charEndVendor where PACOSTOWNER=@I_charStartVendor and (PATU=4 or PATU=5) if @@error <> 0 begin select @O_iErrorState=38  return end update PA11801 set PACOSTOWNER=@I_charEndVendor where PACOSTOWNER=@I_charStartVendor and (PATU=4 or PATU=5) if @@error <> 0 begin select @O_iErrorState=39  return end update PA13202 set PACOSTOWNER=@I_charEndVendor where PACOSTOWNER=@I_charStartVendor and (PATU=4 or PATU=5) if @@error <> 0 begin select @O_iErrorState=40  return end update PA23203 set PACOSTOWNER=@I_charEndVendor where PACOSTOWNER=@I_charStartVendor and (PATU=4 or PATU=5) if @@error <> 0 begin select @O_iErrorState=41  return end update PA33203 set PACOSTOWNER=@I_charEndVendor where PACOSTOWNER=@I_charStartVendor and (PATU=4 or PATU=5) if @@error <> 0 begin select @O_iErrorState=42  return end if exists( select 1 from PA01901 (nolock) where PACOSTOWNER=@I_charStartVendor and (PATranType=4 or PATranType=5) ) begin update PA01901 set PACOSTOWNER=@I_charEndVendor where PACOSTOWNER=@I_charStartVendor and (PATranType=4 or PATranType=5) if @@error <> 0 begin select @O_iErrorState=43  return end exec TAEmployeeChanger1 @I_charStartEmployee=@I_charStartVendor,  @I_charEndEmployee=@I_charEndVendor, @O_iErrorState=@O_iErrorState output if @O_iErrorState <> 0  begin select @O_iErrorState=44  return end end update PA10900 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor and PAIV_Document_No not in (select PAIV_Document_No from PA10900 where VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=46  return end update PA30900 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor and PAIV_Document_No not in (select PAIV_Document_No from PA30900 where VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=49  return end update PA43001 set PArecordid=@I_charEndVendor where PArecordid=@I_charStartVendor and PAsfid=25 and PAcosttrxid+cast(PAaccttype as varchar) not in (select PAcosttrxid+cast(PAaccttype as varchar) from PA43001 (nolock) where PArecordid=@I_charEndVendor and PAsfid=25) if @@error <> 0 begin select @O_iErrorState=60  return end delete PA43001 where PArecordid=@I_charStartVendor and PAsfid=25  if @@error <> 0 begin select @O_iErrorState=67  return end update PA50105 set CustVenID=@I_charEndVendor where CustVenID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=61  return end end delete a from IV00103 a, IV00103 b where a.VENDORID=@I_charStartVendor and b.VENDORID=@I_charEndVendor and a.ITEMNMBR=b.ITEMNMBR if @@error <> 0 begin select @O_iErrorState=51  return end update IV00103 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=52  return end declare ta_VCCursor insensitive CURSOR for select 'update DYNAMICS..['+o.name+'] set ReqVendor='+rtrim(@cEndVendor) + ' where ReqVendor='+rtrim(@cStartVendor)+' and CompanyID='+str(@DBID) from DYNAMICS..sysobjects o, DYNAMICS..syscolumns c where	o.id=c.id and o.type='U' and c.name='ReqVendor'  order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=53  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set aaVendID='+rtrim(@cEndVendor) + ' where aaVendID='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where	o.id=c.id and o.type='U' and c.name='aaVendID'  order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=88  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return update CM20200 set CMLinkID=@I_charEndVendor where CMLinkID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=54  return end update IV00102 set LSORDVND=@I_charEndVendor where LSORDVND=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=55  return end declare ta_VCCursor insensitive CURSOR for select 'update ['+o.name+'] set NAME='+rtrim(@cEndVendor) + ' where NAME='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where	o.id=c.id and o.type='U' and c.name='NAME'  and (o.name='PO010300'  or o.name='PO020000') order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=56  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 return update PM00300 set VENDORID=@I_charEndVendor  where VENDORID=@I_charStartVendor and ADRSCODE  not in(select a.ADRSCODE from PM00300 a (nolock) where a.VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=57  return end if exists (select * from sysobjects where id=object_id('dbo.ASI82625')) begin update ASI82625 set VENDORID=@I_charEndVendor  where VENDORID= @I_charStartVendor and ADRSCODE not in(select a.ADRSCODE from ASI82625 a (nolock) where a.VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=58  return end end if exists (select * from sysobjects where id=object_id('dbo.VTX_PM00300')) begin update VTX_PM00300 set VENDORID=@I_charEndVendor  where VENDORID=@I_charStartVendor and ADRSCODE not in(select a.ADRSCODE from VTX_PM00300 a (nolock) where a.VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=59  return end end if exists (select * from sysobjects where id=object_id('dbo.PA00001') and sysstat & 0xf=3) begin update PA00001 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor and not exists(select VENDORID from PA00001 where VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=62  return end end update VAT10201 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor and ADRSCODE  not in(select a.ADRSCODE from VAT10201 a (nolock) where a.VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=63  return end update SY01200 set Master_ID=@I_charEndVendor where Master_ID=@I_charStartVendor and Master_Type='VEN' and ADRSCODE  not in(select a.ADRSCODE from SY01200 a (nolock) where a.Master_ID=@I_charEndVendor and a.Master_Type='VEN') if @@error <> 0 begin select @O_iErrorState=64  return end delete SY01200 where Master_ID=@I_charStartVendor and Master_Type='VEN' if @@error <> 0 begin select @O_iErrorState=65  return end if exists (select * from sysobjects where id=object_id('dbo.VTX_PM00300')) begin delete VTX_PM00300 where VENDORID=@I_charStartVendor if @@error <> 0 begin select @O_iErrorState=66  return end end delete a from SY03900 a, PM00200 b where 	b.VENDORID=@I_charStartVendor and a.NOTEINDX=b.NOTEINDX if @@error <> 0 begin select @O_iErrorState=68  return end if exists (select * from sysobjects where id=object_id('dbo.QD00200') and sysstat & 0xf=3)  begin update QD00200 set VENDORID=@I_charEndVendor where VENDORID=@I_charStartVendor and ADRSCODE not in(select ADRSCODE from QD00200 where VENDORID=@I_charEndVendor) if @@error <> 0 begin select @O_iErrorState=69  return end end declare ta_VCCursor insensitive CURSOR for select 'delete '+o.name+  ' where VENDORID='+rtrim(@cStartVendor) from sysobjects o, syscolumns c where (o.id=c.id and o.type='U' and c.name='VENDORID') and (o.name='PM00200' or o.name='PM00201' or o.name='PM00202' or o.name='PM00203' or o.name ='PM00204' or o.name='ASI82625' or o.name='IV00103' or o.name='MDS00901' or o.name='ASI82620' or o.name='ASI82655' or o.name='PA00901' or o.name='QD00200' or o.name='PM00300' or o.name='ME27606' or o.name='VAT10201' or o.name='PA00001' or o.name='IVR10232') order by o.name set nocount on OPEN ta_VCCursor FETCH NEXT FROM ta_VCCursor INTO @VENDORID WHILE (@@FETCH_STATUS <> -1) begin exec (@VENDORID) if @@error <> 0 begin select @O_iErrorState=70  return end FETCH NEXT FROM ta_VCCursor INTO @VENDORID end DEALLOCATE ta_VCCursor if @O_iErrorState <> 0 begin return end begin exec @iStatus=taVendorCombinerPost @I_charStartVendor, @I_charEndVendor, @cStartVendor, @cEndVendor, @O_iErrorState if @O_iErrorState<>0  or @@error<>0 begin select @O_iErrorState = 95 return end end return 
GO
GRANT EXECUTE ON  [dbo].[smChangeVendorMaster] TO [DYNGRP]
GO
