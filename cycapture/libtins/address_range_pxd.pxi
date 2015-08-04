# -*- coding: utf-8 -*-

# noinspection PyUnresolvedReferences
from libc.stdint cimport uint16_t, uint32_t, uint8_t, uintptr_t
from libcpp.vector cimport vector
from libcpp.list cimport list as cpp_list

cdef extern from "wrap.h" namespace "Tins":
    cdef cppclass cppIPv4Range "Tins::WrappedIPv4Range":
        cppIPv4Range()
        cppIPv4Range(const cppIPv4Range& r)
        cppIPv4Range(const cppIPv4Address &first, const cppIPv4Address &last)
        cppIPv4Range(const cppIPv4Address &first, const cppIPv4Address &last, cpp_bool only_hosts)
        cpp_bool contains(const cppIPv4Address &addr) const
        cpp_bool is_iterable() const

        cppclass iterator:
            iterator(const cppIPv4Address &addr)
            const cppIPv4Address& ref "operator*"() const
            cpp_bool operator==(const iterator &rhs) const
            cpp_bool operator!=(const iterator &rhs) const
            iterator& operator++()
        cppclass const_iterator(iterator):
            pass

        cppIPv4Range.const_iterator begin() const
        cppIPv4Range.const_iterator end() const

    cppIPv4Range ipv4range_from_mask "Tins::WrappedIPv4Range::from_mask" (const cppIPv4Address &first, const cppIPv4Address &mask)
    cppIPv4Range slashrange "Tins::operator/" (const cppIPv4Address &addr, int mask)

ctypedef cppIPv4Range.const_iterator range_iterator


cdef class IPv4Range(object):
    cdef cppIPv4Range* ptr
    cpdef is_iterable(self)
    cdef clone_from_cpp_range(self, cppIPv4Range ptr)