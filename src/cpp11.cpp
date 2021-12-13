// Generated by cpp11: do not edit by hand
// clang-format off


#include "cpp11/declarations.hpp"
#include <R_ext/Visibility.h>

// windowfn.cpp
cpp11::doubles maxOver(const cpp11::doubles& x, int window);
extern "C" SEXP _ichimoku_maxOver(SEXP x, SEXP window) {
  BEGIN_CPP11
    return cpp11::as_sexp(maxOver(cpp11::as_cpp<cpp11::decay_t<const cpp11::doubles&>>(x), cpp11::as_cpp<cpp11::decay_t<int>>(window)));
  END_CPP11
}
// windowfn.cpp
cpp11::doubles minOver(const cpp11::doubles& x, int window);
extern "C" SEXP _ichimoku_minOver(SEXP x, SEXP window) {
  BEGIN_CPP11
    return cpp11::as_sexp(minOver(cpp11::as_cpp<cpp11::decay_t<const cpp11::doubles&>>(x), cpp11::as_cpp<cpp11::decay_t<int>>(window)));
  END_CPP11
}
// windowfn.cpp
cpp11::doubles meanOver(const cpp11::doubles& x, int window);
extern "C" SEXP _ichimoku_meanOver(SEXP x, SEXP window) {
  BEGIN_CPP11
    return cpp11::as_sexp(meanOver(cpp11::as_cpp<cpp11::decay_t<const cpp11::doubles&>>(x), cpp11::as_cpp<cpp11::decay_t<int>>(window)));
  END_CPP11
}

extern "C" {
static const R_CallMethodDef CallEntries[] = {
    {"_ichimoku_maxOver",  (DL_FUNC) &_ichimoku_maxOver,  2},
    {"_ichimoku_meanOver", (DL_FUNC) &_ichimoku_meanOver, 2},
    {"_ichimoku_minOver",  (DL_FUNC) &_ichimoku_minOver,  2},
    {NULL, NULL, 0}
};
}

extern "C" attribute_visible void R_init_ichimoku(DllInfo* dll){
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
  R_forceSymbols(dll, TRUE);
}
