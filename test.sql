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