/* Identities */

INSERT INTO identities (
  type, data
) VALUES ( /* 192.168.9.1 */
  1 , X'c0a80001'
 );

INSERT INTO identities (
  type, data
) VALUES ( /* 192.168.9.100 */
  1 , X'c0a80064'
 );

/* Shared Secrets */

INSERT INTO shared_secrets (
   type, data
) VALUES ( 
  1, X'16964066a10de938bdb2ab7864fe4459cab1'
);

INSERT INTO shared_secret_identity (
  shared_secret, identity
) VALUES (
  1, 1
);

INSERT INTO shared_secret_identity (
  shared_secret, identity
) VALUES (
  1, 2
);

/* Configurations */

INSERT INTO ike_configs (
  local, remote
) VALUES (
  'PH_IP_CAROL', 'PH_IP_MOON'
);

INSERT INTO peer_configs (
  name, ike_cfg, local_id, remote_id, auth_method
) VALUES (
  'home', 1, 2, 1, 2
);

INSERT INTO child_configs (
  name, updown
) VALUES (
  'home', 'ipsec _updown iptables'
);

INSERT INTO peer_config_child_config (
  peer_cfg, child_cfg
) VALUES (
  1, 1
);

INSERT INTO traffic_selectors (
  type, start_addr, end_addr
) VALUES ( /* 10.1.0.0/16 */
  7, X'0a010000', X'0a01ffff'
);

INSERT INTO traffic_selectors (
  type
) VALUES ( /* dynamic/32 */
  7
);

INSERT INTO child_config_traffic_selector (
  child_cfg, traffic_selector, kind
) VALUES (
  1, 1, 1
);

INSERT INTO child_config_traffic_selector (
	child_cfg, traffic_selector, kind
) VALUES (
  1, 2, 2
);

