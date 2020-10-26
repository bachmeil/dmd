/*
REQUIRED_ARGS: -HC -c -o-
PERMUTE_ARGS:
TEST_OUTPUT:
---
// Automatically generated by Digital Mars D Compiler

#pragma once

#include <assert.h>
#include <stddef.h>
#include <stdint.h>

#ifdef CUSTOM_D_ARRAY_TYPE
#define _d_dynamicArray CUSTOM_D_ARRAY_TYPE
#else
/// Represents a D [] array
template<typename T>
struct _d_dynamicArray
{
    size_t length;
    T *ptr;

    _d_dynamicArray() : length(0), ptr(NULL) { }

    _d_dynamicArray(size_t length_in, T *ptr_in)
        : length(length_in), ptr(ptr_in) { }

    T& operator[](const size_t idx) {
        assert(idx < length);
        return ptr[idx];
    }

    const T& operator[](const size_t idx) const {
        assert(idx < length);
        return ptr[idx];
    }
};
#endif
#if !defined(_d_real)
# define _d_real long double
#endif

extern "C" int32_t z;

extern int32_t t;

struct S;

struct S2;

class C2;

union U;

union U2;

extern "C" size_t v;

extern nullptr_t typeof_null;

extern nullptr_t inferred_null;

extern int32_t i;

extern _d_real r;

extern int32_t si[4$?:32=u|64=LLU$];

extern const _d_dynamicArray< const int32_t > di;

extern void* ii;

extern const int32_t* const pi;

extern int16_t(*func)(float , bool , ...);
---
*/

int x = 42;

extern int y;

extern (C) int z;

extern (C++) __gshared int t;

extern (C) struct S;

extern (C++) struct S2;

extern (C) class C;

extern (C++) class C2;

extern (C) union U;

extern (C++) union U2;

extern (C) size_t v;

extern (C++) __gshared typeof(null) typeof_null = null;
extern (C++) __gshared inferred_null = null;

extern(C++):
__gshared
{
    int i;
    real r;
    int[4] si;
    const int[] di;
    int[int] ii;
    const int* pi;
    short function(float, bool, ...) func;
}
