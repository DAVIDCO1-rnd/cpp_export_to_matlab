#ifdef _WIN32
#  ifdef MODULE_API_EXPORTS
#    define EXPORT __declspec(dllexport)
#  else
#    define EXPORT __declspec(dllimport)
#  endif
#else
#  define EXPORT
#endif

EXPORT int my_func(int num1, int num2);




