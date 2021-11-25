type stackv4

val stackv4 : stackv4 Functoria.typ

val direct_stackv4 :
     ?clock:Mirage_impl_mclock.mclock Functoria.impl
  -> ?random:Mirage_impl_random.random Functoria.impl
  -> ?time:Mirage_impl_time.time Functoria.impl
  -> ?tcp:Mirage_impl_tcp.tcpv4 Functoria.impl
  -> ?group:string
  -> Mirage_impl_network.network Functoria.impl
  -> Mirage_impl_ethernet.ethernet Functoria.impl
  -> Mirage_impl_arpv4.arpv4 Functoria.impl
  -> Mirage_impl_ip.ipv4 Functoria.impl
  -> stackv4 Functoria.impl

val socket_stackv4 : ?group:string -> unit -> stackv4 Functoria.impl

val qubes_ipv4_stack :
     ?group:string
  -> ?qubesdb:Mirage_impl_qubesdb.qubesdb Functoria.impl
  -> ?arp:(   Mirage_impl_ethernet.ethernet Functoria.impl
           -> Mirage_impl_arpv4.arpv4 Functoria.impl)
  -> Mirage_impl_network.network Functoria.impl
  -> stackv4 Functoria.impl

val dhcp_ipv4_stack :
     ?group:string
  -> ?random:Mirage_impl_random.random Functoria.impl
  -> ?clock:Mirage_impl_mclock.mclock Functoria.impl
  -> ?time:Mirage_impl_time.time Functoria.impl
  -> ?arp:(   Mirage_impl_ethernet.ethernet Functoria.impl
           -> Mirage_impl_arpv4.arpv4 Functoria.impl)
  -> Mirage_impl_network.network Functoria.impl
  -> stackv4 Functoria.impl

val static_ipv4_stack :
     ?group:string
  -> ?config:Mirage_impl_ip.ipv4_config
  -> ?arp:(   Mirage_impl_ethernet.ethernet Functoria.impl
           -> Mirage_impl_arpv4.arpv4 Functoria.impl)
  -> Mirage_impl_network.network Functoria.impl
  -> stackv4 Functoria.impl

val generic_stackv4 :
     ?group:string
  -> ?config:Mirage_impl_ip.ipv4_config
  -> ?dhcp_key:bool Functoria.value
  -> ?net_key:[`Direct | `Socket] option Functoria.value
  -> Mirage_impl_network.network Functoria.impl
  -> stackv4 Functoria.impl

type stackv6

val stackv6 : stackv6 Functoria.typ

val direct_stackv6 :
     ?clock:Mirage_impl_mclock.mclock Functoria.impl
  -> ?random:Mirage_impl_random.random Functoria.impl
  -> ?time:Mirage_impl_time.time Functoria.impl
  -> ?tcp:Mirage_impl_tcp.tcpv6 Functoria.impl
  -> ?group:string
  -> Mirage_impl_network.network Functoria.impl
  -> Mirage_impl_ethernet.ethernet Functoria.impl
  -> Mirage_impl_ip.ipv6 Functoria.impl
  -> stackv6 Functoria.impl

val socket_stackv6 : ?group:string -> unit -> stackv6 Functoria.impl

val static_ipv6_stack :
     ?group:string
  -> ?config:Mirage_impl_ip.ipv6_config
  -> Mirage_impl_network.network Functoria.impl
  -> stackv6 Functoria.impl

val generic_stackv6 :
     ?group:string
  -> ?config:Mirage_impl_ip.ipv6_config
  -> ?net_key:[`Direct | `Socket] option Functoria.value
  -> Mirage_impl_network.network Functoria.impl
  -> stackv6 Functoria.impl

type stackv4v6

val stackv4v6 : stackv4v6 Functoria.typ

val direct_stackv4v6 :
     ?clock:Mirage_impl_mclock.mclock Functoria.impl
  -> ?random:Mirage_impl_random.random Functoria.impl
  -> ?time:Mirage_impl_time.time Functoria.impl
  -> ?tcp:Mirage_impl_tcp.tcpv4v6 Functoria.impl
  -> ?group:string
  -> ipv4_only:bool Mirage_key.key
  -> ipv6_only:bool Mirage_key.key
  -> Mirage_impl_network.network Functoria.impl
  -> Mirage_impl_ethernet.ethernet Functoria.impl
  -> Mirage_impl_arpv4.arpv4 Functoria.impl
  -> Mirage_impl_ip.ipv4 Functoria.impl
  -> Mirage_impl_ip.ipv6 Functoria.impl
  -> stackv4v6 Functoria.impl

val socket_stackv4v6 : ?group:string -> unit -> stackv4v6 Functoria.impl

val static_ipv4v6_stack :
     ?group:string
  -> ?ipv6_config:Mirage_impl_ip.ipv6_config
  -> ?ipv4_config:Mirage_impl_ip.ipv4_config
  -> ?arp:(   Mirage_impl_ethernet.ethernet Functoria.impl
           -> Mirage_impl_arpv4.arpv4 Functoria.impl)
  -> Mirage_impl_network.network Functoria.impl
  -> stackv4v6 Functoria.impl

val generic_stackv4v6 :
     ?group:string
  -> ?ipv6_config:Mirage_impl_ip.ipv6_config
  -> ?ipv4_config:Mirage_impl_ip.ipv4_config
  -> ?dhcp_key:bool Functoria.value
  -> ?net_key:[`Direct | `Socket] option Functoria.value
  -> Mirage_impl_network.network Functoria.impl
  -> stackv4v6 Functoria.impl
