#if defined(__i386__)
#define uint_t uint32_t
#define ARCH "x32"
#endif
#if defined(__x86_64__)
#define uint_t uint64_t
#define ARCH "x64"
#endif

#define VERSION "1.0"