
/*
  Copyright (c) 2021 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT PRIMARY KEY NOT NULL, def_val TEXT, value TEXT);
INSERT OR REPLACE INTO qcril_properties_table(property, def_val) VALUES('qcrildb_version',9.0);
UPDATE qcril_properties_table SET def_val="" WHERE property="all_bc_msg";
/*
//#ifdef OPLUS_BUG_STABILITY
LinYongan@NETWORK.CALL.1896345, 2021/09/08, modify for disable ril custom ecc by qcril_db
//#endif OPLUS_BUG_STABILITY
*/
UPDATE qcril_properties_table SET def_val="0" WHERE property="persist.vendor.radio.custom_ecc";
UPDATE qcril_properties_table SET def_val="1" WHERE property="persist.vendor.radio.cs_srv_type";
