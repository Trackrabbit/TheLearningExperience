SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC40100SI] (@SETUPKEY smallint, @DPYITMCS tinyint, @ACDSTRBN tinyint, @TRKVDTRX tinyint, @TRXDTL tinyint, @LOCNCODE char(11), @CHEKBKID char(15), @INVCFRMT smallint, @RETNFRMT smallint, @PKSLPFMT smallint, @DECPLQTY smallint, @DECPLCUR smallint, @USEADVTX smallint, @NONIVSCH char(15), @FRTSCHID char(15), @MSCSCHID char(15), @TAXSCHID char(15), @NONIVTXB smallint, @FRGTTXBL smallint, @MISCTXBL smallint, @USRDFPR1 char(15), @USRDRPR2 char(15), @USEACFRM smallint, @RTNUSIVC tinyint, @PKSLPIVC tinyint, @COMMNTID char(15), @IVCALLOW_1 tinyint, @IVCALLOW_2 tinyint, @IVCALLOW_3 tinyint, @IVCALLOW_4 tinyint, @IVCALLOW_5 tinyint, @IVCALLOW_6 tinyint, @IVCALLOW_7 tinyint, @IVCALLOW_8 tinyint, @IVCALLOW_9 tinyint, @IVCALLOW_10 tinyint, @IVCALLOW_11 tinyint, @IVCPSSWD_1 char(11), @IVCPSSWD_2 char(11), @IVCPSSWD_3 char(11), @IVCPSSWD_4 char(11), @IVCPSSWD_5 char(11), @IVCPSSWD_6 char(11), @IVCPSSWD_7 char(11), @IVCPSSWD_8 char(11), @IVCPSSWD_9 char(11), @IVCPSSWD_10 char(11), @IVCPSSWD_11 char(11), @IVCSEQNC_1 smallint, @IVCSEQNC_2 smallint, @IVCSEQNC_3 smallint, @IVCSEQNC_4 smallint, @IVCSEQNC_5 smallint, @IVCSEQNC_6 smallint, @IVCSEQNC_7 smallint, @IVCSEQNC_8 smallint, @IVCSEQNC_9 smallint, @IVCSEQNC_10 smallint, @IVCSEQNC_11 smallint, @IVCDSTCK binary(4), @NUMOFTRX int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IVC40100 (SETUPKEY, DPYITMCS, ACDSTRBN, TRKVDTRX, TRXDTL, LOCNCODE, CHEKBKID, INVCFRMT, RETNFRMT, PKSLPFMT, DECPLQTY, DECPLCUR, USEADVTX, NONIVSCH, FRTSCHID, MSCSCHID, TAXSCHID, NONIVTXB, FRGTTXBL, MISCTXBL, USRDFPR1, USRDRPR2, USEACFRM, RTNUSIVC, PKSLPIVC, COMMNTID, IVCALLOW_1, IVCALLOW_2, IVCALLOW_3, IVCALLOW_4, IVCALLOW_5, IVCALLOW_6, IVCALLOW_7, IVCALLOW_8, IVCALLOW_9, IVCALLOW_10, IVCALLOW_11, IVCPSSWD_1, IVCPSSWD_2, IVCPSSWD_3, IVCPSSWD_4, IVCPSSWD_5, IVCPSSWD_6, IVCPSSWD_7, IVCPSSWD_8, IVCPSSWD_9, IVCPSSWD_10, IVCPSSWD_11, IVCSEQNC_1, IVCSEQNC_2, IVCSEQNC_3, IVCSEQNC_4, IVCSEQNC_5, IVCSEQNC_6, IVCSEQNC_7, IVCSEQNC_8, IVCSEQNC_9, IVCSEQNC_10, IVCSEQNC_11, IVCDSTCK, NUMOFTRX) VALUES ( @SETUPKEY, @DPYITMCS, @ACDSTRBN, @TRKVDTRX, @TRXDTL, @LOCNCODE, @CHEKBKID, @INVCFRMT, @RETNFRMT, @PKSLPFMT, @DECPLQTY, @DECPLCUR, @USEADVTX, @NONIVSCH, @FRTSCHID, @MSCSCHID, @TAXSCHID, @NONIVTXB, @FRGTTXBL, @MISCTXBL, @USRDFPR1, @USRDRPR2, @USEACFRM, @RTNUSIVC, @PKSLPIVC, @COMMNTID, @IVCALLOW_1, @IVCALLOW_2, @IVCALLOW_3, @IVCALLOW_4, @IVCALLOW_5, @IVCALLOW_6, @IVCALLOW_7, @IVCALLOW_8, @IVCALLOW_9, @IVCALLOW_10, @IVCALLOW_11, @IVCPSSWD_1, @IVCPSSWD_2, @IVCPSSWD_3, @IVCPSSWD_4, @IVCPSSWD_5, @IVCPSSWD_6, @IVCPSSWD_7, @IVCPSSWD_8, @IVCPSSWD_9, @IVCPSSWD_10, @IVCPSSWD_11, @IVCSEQNC_1, @IVCSEQNC_2, @IVCSEQNC_3, @IVCSEQNC_4, @IVCSEQNC_5, @IVCSEQNC_6, @IVCSEQNC_7, @IVCSEQNC_8, @IVCSEQNC_9, @IVCSEQNC_10, @IVCSEQNC_11, @IVCDSTCK, @NUMOFTRX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC40100SI] TO [DYNGRP]
GO