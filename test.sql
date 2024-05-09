==========================================================================================================

INSERT INTO tbl_bce_break_weights (code, ranges, truckname) 
VALUES 
(
    'dakin_rates_truck_LasPinas',
    '{
        "1-3": 2654.82,
        "8-10": 3185.784,
        "13-18": 4070.724,
        "22-28": 6985.881,
        "35-45": 10362.03
    }',
    '["L300", "4w", "6w", "6w fwd", "10wh"]'
),
(
    'dakin_rates_truck_Paranaque',
    '{
        "1-3": 2654.82,
        "8-10": 3185.784,
        "13-18": 4070.724,
        "22-28": 6985.881,
        "35-45": 10362.03
    }',
    '["L300", "4w", "6w", "6w fwd", "10wh"]'
),
(
    'dakin_rates_truck_Taguig',
    '{
        "1-3": 2654.82,
        "8-10": 3185.784,
        "13-18": 4070.724,
        "22-28": 6985.881,
        "35-45": 10362.03
    }',
    '["L300", "4w", "6w", "6w fwd", "10wh"]'
),
(
    'dakin_rates_truck_Pasay',
    '{
        "1-3": 2654.82,
        "8-10": 3185.784,
        "13-18": 4070.724,
        "22-28": 6985.881,
        "35-45": 10362.03
    }',
    '["L300", "4w", "6w", "6w fwd", "10wh"]'
),
(
    'dakin_rates_truck_ Makati',
    '{
        "1-3": 2654.82,
        "8-10": 3185.784,
        "13-18": 4070.724,
        "22-28": 6985.881,
        "35-45": 10362.03
    }',
    '["L300", "4w", "6w", "6w fwd", "10wh"]'
);



  

========================================
Bea & Bernard Inc.
INSERT INTO tbl_bce_rates (client_id, service_mode, service_type, transport_mode, origin, destination, break_weight_id, created_at, approved_at, expired_at, batch, status, charge_id)
VALUES
(230107, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'MUNTI', 174, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1),
(230107, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'LPN', 175, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1),
(230107, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'PRA', 176, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1),
(230107, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'TAGU', 177, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1),
(230107, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'PAS', 178, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1),
(230107, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'MKT', 179, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1);



INSERT INTO tbl_bce_ports (island, port, port_name) 
VALUES 
('NCR', 'MUNTI', 'Muntinlupa'),
('NCR', 'LPN', 'Las Pinas'),
('NCR', 'PRA', 'Paranaque'),
('NCR', 'TAGU', 'Taguig'),
('NCR', 'PAS', 'Pasay'),
('NCR', 'MKT', 'Makati');


INSERT INTO tbl_bce_rates (client_id, service_mode, service_type, transport_mode, origin, destination, break_weight_id, created_at, approved_at, expired_at, batch, status, charge_id)
VALUES
(210433, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'CEB', 174, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1),
(210433, 'DOOR TO DOOR', 'REGULAR', 'LAND', 'MNL', 'DVO', 175, '2023-05-24 01:38:37', '2023-05-24 01:38:37', '2024-05-24 01:38:37', 15, 'active', 1);



tbl_bce_clients[icon: home] {
  id int(11) NOT NULL,
  client_name varchar(200) NOT NULL,
  client_primary_contact varchar(200) NOT NULL,
  client_email varchar(200) NOT NULL,
  client_contact_no varchar(11) NOT NULL,
  client_bsn_type varchar(100) NOT NULL,
  client_other_bsn_type text NOT NULL,
  client_org_type varchar(200) NOT NULL,
  client_remarks text NOT 
  client_office_address text NOT NULL,
  client_billing_address text NOT NULL,
  reg_sec_date_registered date DEFAULT NULL,
  reg_sec_registered_no varchar(200) DEFAULT NULL,
  date_started_operations date DEFAULT NULL,
  reg_dti_date_registered date DEFAULT NULL,
  reg_dti_registered_no varchar(200) DEFAULT NULL,
  reg_auth_capital varchar(2000) DEFAULT NULL,
  reg_mayor_date_registered date DEFAULT NULL,
  reg_mayor_registered_no varchar(200) DEFAULT NULL,
  tin_number varchar(25) DEFAULT NULL,
  val_status varchar(100) DEFAULT NULL,
  val_status_remarks text DEFAULT NULL,
  val_account_type varchar(100) DEFAULT NULL,
  val_account_by int(11) DEFAULT NULL,
  val_term_type varchar(100) DEFAULT NULL,
  val_terms varchar(100) DEFAULT NULL,
  val_validated_by varchar(100) DEFAULT NULL,
  val_date_validated datetime DEFAULT NULL,
  prev_bsn_name text DEFAULT NULL,
  prev_date_change datetime DEFAULT NULL,
  client_created_by int(11) DEFAULT NULL,
  client_date_created datetime DEFAULT NULL,
  client_type varchar(20) DEFAULT NULL,
  client_status varchar(100) DEFAULT NULL
}



tbl_client_addones  [icon: users, color: blue]{ 
  id int(11) NOT NULL,
  client_id int(11) NOT NULL,
  fuel_surcharge float(10,2) NOT NULL,
  permit float(10,2) NOT NULL,
  pickup float(10,2) NOT NULL,
  crating float(10,2) NOT NULL,
  waybill_fee float(10,2) NOT NULL,
  handling float(10,2) NOT NULL,
  packing float(10,2) NOT NULL,
  others float(10,2) NOT NULL
}


  tbl_locations [icon: users, color: blue]{ 
  id int(11) NOT NULL,
  city varchar(100) NOT NULL,
  province varchar(100) NOT NULL,
  island varchar(100) NOT NULL,
  IATA varchar(20) NOT NULL,
  upload_batch int(11) NOT NULL
  }


  tbl_rates [icon: users, color: yellow]{ 
  id int(11) NOT NULL,
  charge_type varchar(50) NOT NULL,
  charge_code varchar(100) NOT NULL,
  client_id int(11) NOT NULL,
  serv_mode_id int(11) NOT NULL,
  org_id int(11) NOT NULL,
  dest_id int(11) NOT NULL,
  status varchar(20) NOT NULL
  }

  tbl_rates_meta [icon: users, color: red]{ 
  id int(11) NOT NULL,
  rates_id int(11) NOT NULL,
  classification varchar(50) NOT NULL,
  ranges varchar(50) NOT NULL,
  rates float(100,2) NOT NULL
  }

  tbl_service_mode [icon: users, color: green]{ 
  id int(11) NOT NULL,
  code int(11) NOT NULL,
  name varchar(50) NOT NULL
  }



  tbl_service_mode [icon: users, color: orange]{ 
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL
  }














  ======================================================================

  0  DOOR TO DOOR   AIR   MNL   ILO   1-5        380.00     5.00   150.00   0.00   150.00   0.00   0.00   3000.00   0.00
0  DOOR TO DOOR   AIR   MNL   VRC   6-49       49.40      5.00   150.00   0.00   150.00   0.00   0.00   3000.00   0.00
0  DOOR TO DOOR   AIR   MNL   TAC   50-249     45.60      5.00   150.00   0.00   150.00   0.00   0.00   3000.00   0.00
0  DOOR TO DOOR   AIR   MNL   MBT   250-999    39.90      5.00   150.00   0.00   150.00   0.00   0.00   3000.00   0.00    
0  DOOR TO DOOR   AIR   ILO   MNL   1000       32.30      5.00   150.00   0.00   150.00   0.00   0.00   3000.00   0.00    



0  DOOR TO DOOR   SEA  MNL   ILO  20      59000.00     0.00   0.00   0.00   0.00   0.00   0.00   0.00   0.00    
0  DOOR TO DOOR   SEA  MNL   VRC  20     66000.00     0.00   0.00   0.00   0.00   0.00   0.00   0.00   0.00 
0  PORT TO PORT   LAND-10W   VRC   MNL    20-30    14000.00
0  PORT TO PORT   INTERISLAND-6W-RORO   MNL   BCD    700-1400    22400.00
0  PORT TO PORT   INTERISLAND-10W-RORO   MNL   CEB    1200-2400    38400.00



tbl_bce_clients  
tbl_service_mode = serv_mode_id{
                     1:D2D 
                     2:P2P 
                     3:P2D 
                     4:D2P
                     5:OPN 
                   }
tbl_rates
tbl_locations





tbl_bce_clients.client_id     tbl_service_mode.serv_mode_id     tbl_rates.charge_code   tbl_locations.orgin_id   tbl_locations.dest_id     WEIGHT BREAK     RATES         FUEL SURCHARGE   INSURANCE    VALUATION   AWB FEE   PERMIT   HANDLING    PICKUP      ODA        CRATING    PACKING 






Companyname  PORT TO PORT   LAND-KM-4W       BCD     BCD           16km        16-30          7,322.00       0.00             0.00         0.00        0.00      0.00    0.00        0.00        3500.00     0.00        0.00 
0  PORT TO PORT   LAND-KM-4W       BCD     BCD           16km        16-30          3500.00       0.00             0.00         0.00        0.00      0.00    0.00        0.00            0.00     0.00        0.00 























