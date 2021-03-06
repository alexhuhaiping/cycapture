# -*- coding: utf-8 -*-

cdef extern from "tins/data_link_type.h" nogil:
    enum:
        DLT_EN10MB,
        DLT_LINUX_SLL,
        DLT_LOOP,
        DLT_PPI,
        DLT_IEEE802_11,
        DLT_IEEE802_11_RADIO

# cdef extern from "tins/data_link_type.h" namespace "Tins" nogil:
#     cdef cppclass DataLinkType[cppEthernetII]:
#         int get_type() const
#     cdef cppclass DataLinkType[cppDot3]:
#         int get_type() const
#     cdef cppclass DataLinkType[cppSLL]:
#         int get_type() const
#     cdef cppclass DataLinkType[cppLoopback]:
#         int get_type() const
#     cdef cppclass DataLinkType[cppPPI]:
#         int get_type() const
#     cdef cppclass DataLinkType[cppDot11]:
#         int get_type() const
#     cdef cppclass DataLinkType[cppRadioTap]:
#         int get_type() const

# TINS_MAKE_DATA_LINK_TYPE(EthernetII, DLT_EN10MB)
# TINS_MAKE_DATA_LINK_TYPE(Dot3, DLT_EN10MB)
# TINS_MAKE_DATA_LINK_TYPE(SLL, DLT_LINUX_SLL)
# TINS_MAKE_DATA_LINK_TYPE(Loopback, DLT_LOOP)
# TINS_MAKE_DATA_LINK_TYPE(PPI, DLT_PPI)
# TINS_MAKE_DATA_LINK_TYPE(Dot11, DLT_IEEE802_11)
# TINS_MAKE_DATA_LINK_TYPE(RadioTap, DLT_IEEE802_11_RADIO)
