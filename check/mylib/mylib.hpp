#pragma once

#ifdef MYPROJ_DLL
#   ifdef _WINDLL
#       define MYLIB_API __declspec(dllexport)
#   else
#       define MYLIB_API __declspec(dllimport)
#   endif
#else
#   define MYLIB_API
#endif

int MYLIB_API mysum(int a, int b);