SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AUD20130SI] (@MYSTERYFORMKEY_I smallint, @MUSES_I_1 char(3), @MUSES_I_2 char(3), @MUSES_I_3 char(3), @MUSES_I_4 char(3), @MUSES_I_5 char(3), @MUSES_I_6 char(3), @MUSES_I_7 char(3), @MUSES_I_8 char(3), @MUSES_I_9 char(3), @MUSES_I_10 char(3), @MUSES_I_11 char(3), @MUSES_I_12 char(3), @MUSES_I_13 char(3), @MUSES_I_14 char(3), @MUSES_I_15 char(3), @MUSES_I_16 char(3), @MUSES_I_17 char(3), @MUSES_I_18 char(3), @MUSES_I_19 char(3), @MUSES_I_20 char(3), @MUSES_I_21 char(3), @MUSES_I_22 char(3), @MUSES_I_23 char(3), @MUSES_I_24 char(3), @MUSES_I_25 char(3), @MUSES_I_26 char(3), @MUSES_I_27 char(3), @MUSES_I_28 char(3), @MUSES_I_29 char(3), @MUSES_I_30 char(3), @MUSES_I_31 char(3), @MUSES_I_32 char(3), @MUSES_I_33 char(3), @MUSES_I_34 char(3), @MUSES_I_35 char(3), @MUSES_I_36 char(3), @MUSES_I_37 char(3), @MUSES_I_38 char(3), @MUSES_I_39 char(3), @MUSES_I_40 char(3), @MREPTLABEL_I_1 char(16), @MREPTLABEL_I_2 char(16), @MREPTLABEL_I_3 char(16), @MREPTLABEL_I_4 char(16), @MREPTLABEL_I_5 char(16), @MREPTLABEL_I_6 char(16), @MREPTLABEL_I_7 char(16), @MREPTLABEL_I_8 char(16), @MREPTLABEL_I_9 char(16), @MREPTLABEL_I_10 char(16), @MREPTLABEL_I_11 char(16), @MREPTLABEL_I_12 char(16), @MREPTLABEL_I_13 char(16), @MREPTLABEL_I_14 char(16), @MREPTLABEL_I_15 char(16), @MREPTLABEL_I_16 char(16), @MREPTLABEL_I_17 char(16), @MREPTLABEL_I_18 char(16), @MREPTLABEL_I_19 char(16), @MREPTLABEL_I_20 char(16), @MREPTLABEL_I_21 char(16), @MREPTLABEL_I_22 char(16), @MREPTLABEL_I_23 char(16), @MREPTLABEL_I_24 char(16), @MREPTLABEL_I_25 char(16), @MREPTLABEL_I_26 char(16), @MREPTLABEL_I_27 char(16), @MREPTLABEL_I_28 char(16), @MREPTLABEL_I_29 char(16), @MREPTLABEL_I_30 char(16), @MREPTLABEL_I_31 char(16), @MREPTLABEL_I_32 char(16), @MREPTLABEL_I_33 char(16), @MREPTLABEL_I_34 char(16), @MREPTLABEL_I_35 char(16), @MREPTLABEL_I_36 char(16), @MREPTLABEL_I_37 char(16), @MREPTLABEL_I_38 char(16), @MREPTLABEL_I_39 char(16), @MREPTLABEL_I_40 char(16), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AUD20130 (MYSTERYFORMKEY_I, MUSES_I_1, MUSES_I_2, MUSES_I_3, MUSES_I_4, MUSES_I_5, MUSES_I_6, MUSES_I_7, MUSES_I_8, MUSES_I_9, MUSES_I_10, MUSES_I_11, MUSES_I_12, MUSES_I_13, MUSES_I_14, MUSES_I_15, MUSES_I_16, MUSES_I_17, MUSES_I_18, MUSES_I_19, MUSES_I_20, MUSES_I_21, MUSES_I_22, MUSES_I_23, MUSES_I_24, MUSES_I_25, MUSES_I_26, MUSES_I_27, MUSES_I_28, MUSES_I_29, MUSES_I_30, MUSES_I_31, MUSES_I_32, MUSES_I_33, MUSES_I_34, MUSES_I_35, MUSES_I_36, MUSES_I_37, MUSES_I_38, MUSES_I_39, MUSES_I_40, MREPTLABEL_I_1, MREPTLABEL_I_2, MREPTLABEL_I_3, MREPTLABEL_I_4, MREPTLABEL_I_5, MREPTLABEL_I_6, MREPTLABEL_I_7, MREPTLABEL_I_8, MREPTLABEL_I_9, MREPTLABEL_I_10, MREPTLABEL_I_11, MREPTLABEL_I_12, MREPTLABEL_I_13, MREPTLABEL_I_14, MREPTLABEL_I_15, MREPTLABEL_I_16, MREPTLABEL_I_17, MREPTLABEL_I_18, MREPTLABEL_I_19, MREPTLABEL_I_20, MREPTLABEL_I_21, MREPTLABEL_I_22, MREPTLABEL_I_23, MREPTLABEL_I_24, MREPTLABEL_I_25, MREPTLABEL_I_26, MREPTLABEL_I_27, MREPTLABEL_I_28, MREPTLABEL_I_29, MREPTLABEL_I_30, MREPTLABEL_I_31, MREPTLABEL_I_32, MREPTLABEL_I_33, MREPTLABEL_I_34, MREPTLABEL_I_35, MREPTLABEL_I_36, MREPTLABEL_I_37, MREPTLABEL_I_38, MREPTLABEL_I_39, MREPTLABEL_I_40) VALUES ( @MYSTERYFORMKEY_I, @MUSES_I_1, @MUSES_I_2, @MUSES_I_3, @MUSES_I_4, @MUSES_I_5, @MUSES_I_6, @MUSES_I_7, @MUSES_I_8, @MUSES_I_9, @MUSES_I_10, @MUSES_I_11, @MUSES_I_12, @MUSES_I_13, @MUSES_I_14, @MUSES_I_15, @MUSES_I_16, @MUSES_I_17, @MUSES_I_18, @MUSES_I_19, @MUSES_I_20, @MUSES_I_21, @MUSES_I_22, @MUSES_I_23, @MUSES_I_24, @MUSES_I_25, @MUSES_I_26, @MUSES_I_27, @MUSES_I_28, @MUSES_I_29, @MUSES_I_30, @MUSES_I_31, @MUSES_I_32, @MUSES_I_33, @MUSES_I_34, @MUSES_I_35, @MUSES_I_36, @MUSES_I_37, @MUSES_I_38, @MUSES_I_39, @MUSES_I_40, @MREPTLABEL_I_1, @MREPTLABEL_I_2, @MREPTLABEL_I_3, @MREPTLABEL_I_4, @MREPTLABEL_I_5, @MREPTLABEL_I_6, @MREPTLABEL_I_7, @MREPTLABEL_I_8, @MREPTLABEL_I_9, @MREPTLABEL_I_10, @MREPTLABEL_I_11, @MREPTLABEL_I_12, @MREPTLABEL_I_13, @MREPTLABEL_I_14, @MREPTLABEL_I_15, @MREPTLABEL_I_16, @MREPTLABEL_I_17, @MREPTLABEL_I_18, @MREPTLABEL_I_19, @MREPTLABEL_I_20, @MREPTLABEL_I_21, @MREPTLABEL_I_22, @MREPTLABEL_I_23, @MREPTLABEL_I_24, @MREPTLABEL_I_25, @MREPTLABEL_I_26, @MREPTLABEL_I_27, @MREPTLABEL_I_28, @MREPTLABEL_I_29, @MREPTLABEL_I_30, @MREPTLABEL_I_31, @MREPTLABEL_I_32, @MREPTLABEL_I_33, @MREPTLABEL_I_34, @MREPTLABEL_I_35, @MREPTLABEL_I_36, @MREPTLABEL_I_37, @MREPTLABEL_I_38, @MREPTLABEL_I_39, @MREPTLABEL_I_40) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AUD20130SI] TO [DYNGRP]
GO