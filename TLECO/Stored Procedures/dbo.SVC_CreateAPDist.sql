SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_CreateAPDist](  @VOUCHER char(21)      = NULL,  @REFERENCE    char(30)      = '',  @DISTTYPE     tinyint       = 0,  @ACTINDEX     integer       = 0,  @DISTAMT      numeric(19,5) = 0.00,   @COID         char(5)       = NULL,  @USERID       char(15)      = NULL,  @DISTSEQ      integer output,  @STATUS integer output ) as  declare  @next_dseq int,  @curr_dseq int,  @db_amt numeric(19,5),  @cr_amt numeric(19,5),  @vendorid     varchar(15),  @post_date    datetime,  @curr_id      varchar(15),  @curr_index   integer,  @dex_row      integer declare @MinDate datetime  exec smGetMinDate @MinDate output  select @curr_id    = FUNLCURR,  @curr_index = FUNCRIDX  from MC40000   if @VOUCHER  = NULL or  @USERID   = NULL or  @COID     = NULL or   @ACTINDEX = 0    or  @DISTTYPE = 0    or  @DISTTYPE > 14 BEGIN   select @STATUS = -1  return  END   if @COID <> DB_NAME() BEGIN   select @STATUS = -2  return  END   if not exists(select * from GL00100 where ACTINDX = @ACTINDEX) BEGIN   select @STATUS = -4  return  END  if exists(select * from GL00100 where ACTINDX = @ACTINDEX and ACTIVE = 0) BEGIN   select @STATUS = -5  return  END   if not exists(select * from PM10000 where VCHNUMWK = @VOUCHER) BEGIN   select @STATUS = -6  return  END  select @vendorid  = VENDORID,  @post_date = PSTGDATE   from PM10000 where VCHNUMWK = @VOUCHER  select @next_dseq = 0 select @next_dseq = DSTSQNUM from PM10100 where VCHRNMBR = @VOUCHER select @next_dseq = @next_dseq + 16384  if @DISTAMT > 0  select @db_amt = @DISTAMT, @cr_amt = 0 else  select @cr_amt = @DISTAMT * -1, @db_amt = 0  exec dbo.zDP_PM10100SI @VOUCHER,                         @next_dseq,                       0,                                @cr_amt,                          @db_amt,                          @ACTINDEX,                        @DISTTYPE,                        0,                                @USERID,                          0,                                @vendorid,                        '',                               @post_date,                       @COID,                            @curr_id,                         @curr_index,                0.00,                             0.00,                             '',                               0,                                0,                                @REFERENCE,                       '',                               '',                               1.00,                             @MinDate,             @MinDate,             0,                                2,                                @MinDate,             @curr_id,                         @curr_index,                      @dex_row output  if @dex_row <= 0  BEGIN   select @STATUS = -8  return  END  select @DISTSEQ = @next_dseq return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_CreateAPDist] TO [DYNGRP]
GO
